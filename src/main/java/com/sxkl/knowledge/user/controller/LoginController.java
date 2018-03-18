package com.sxkl.knowledge.user.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import com.sxkl.knowledge.start.data.RsaKeyManager;
import com.sxkl.knowledge.user.service.UserService;

/**
 * @author wangyao
 * @date 2018年3月18日 下午8:33:56
 * @description:
 */
@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public ModelAndView all() {
		ModelAndView modelAndView = new ModelAndView("login/login");
		return modelAndView;
	}
	
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.HEAD })
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("login/login");
		return modelAndView;
	}
	
	/**
	 * 登录
	 * @param httpServletRequest
	 * @param modelMap
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public String login(HttpServletRequest httpServletRequest, RedirectAttributesModelMap modelMap) throws Exception {
		ModelAndView mv = userService.login(httpServletRequest, modelMap);
		return mv.getViewName();
	}
	
	@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.HEAD })
	@ResponseBody
	public boolean logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		userService.logout(request);
//		ModelAndView modelAndView = new ModelAndView("redirect:/login");
		return true;
	}
	
	@RequestMapping(value = "/login/getPublicKey", method = RequestMethod.POST)
	@ResponseBody
	public String getPublicKey(String name) {
		return RsaKeyManager.getPublickey();
	}


}
