package com.sxkl.knowledge.user.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sxkl.knowledge.common.dao.BaseDao;
import com.sxkl.knowledge.user.entity.User;

/**
 * @author wangyao
 * @date 2018年3月18日 下午8:09:28
 * @description:
 */
@Repository
public class UserDao extends BaseDao<String,User>{

	public List<User> getUserByNameAndPass(String userName, String password) {
		User user = new User();
		user.setName(userName);
		user.setPassword(password);
		return this.getHibernateTemplate().findByExample(user);
	}

}
