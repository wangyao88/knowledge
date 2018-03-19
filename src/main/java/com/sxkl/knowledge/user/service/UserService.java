package com.sxkl.knowledge.user.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import com.sxkl.knowledge.common.dao.BaseDao;
import com.sxkl.knowledge.common.entity.Constants;
import com.sxkl.knowledge.common.service.BaseService;
import com.sxkl.knowledge.start.data.RsaKeyManager;
import com.sxkl.knowledge.user.dao.UserDao;
import com.sxkl.knowledge.user.entity.User;
import com.sxkl.knowledge.utils.DESUtil;
import com.sxkl.knowledge.utils.RSACoder;

/**
 * @author wangyao
 * @date 2018年3月18日 下午8:12:10
 * @description:
 */
@Service
public class UserService extends BaseService<String, User>{

	@Autowired
	private UserDao userDao;
	
	@Override
	protected BaseDao<String, User> getDao() {
		return userDao;
	}
	
	public ModelAndView login(HttpServletRequest request, RedirectAttributesModelMap modelMap) throws Exception{
		ModelAndView mv = new ModelAndView();
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        byte[] decodedData = RSACoder.decryptByPrivateKey(password,RsaKeyManager.getPrivateKey());
        password = new String(decodedData);
        if(chackeLoginParams(userName,password)){
        	User user = validateLogin(userName,password);
        	if(user != null){
        		processLoginEvent(request, mv, user);
        	}else{
        		mv.setViewName("login/login");
                mv.addObject("error","用户名或密码错误！");
        	}
        }else {
            mv.setViewName("login/login");
            mv.addObject("error","用户名与密码不能为空！");
        }
        return mv;
	}

	private void processLoginEvent(HttpServletRequest request, ModelAndView mv, User user) {
		mv.setViewName("main");
		HttpSession session = request.getSession();
		session.setAttribute(Constants.USER_IN_SESSION_KEY, user);
	}
	
	public void logout(HttpServletRequest request){
		HttpSession session = request.getSession();
        session.invalidate();
	}

	private User validateLogin(String userName, String password) {
		DESUtil tool = new DESUtil();
		List<User> users = userDao.getUserByNameAndPass(userName,tool.encrypt(password));
		if(users != null && users.size() > 0){
			return users.get(0);
		}
		return null;
	}

	private boolean chackeLoginParams(String userName, String password) {
		if(StringUtils.isEmpty(userName)){
			return false;
		}
		if(StringUtils.isEmpty(password)){
			return false;
		}
		return true;
	}

}
