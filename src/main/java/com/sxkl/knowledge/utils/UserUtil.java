package com.sxkl.knowledge.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sxkl.knowledge.common.entity.Constants;
import com.sxkl.knowledge.user.entity.User;

public class UserUtil {
	
	public static User getSessionUser(HttpServletRequest request){
		if(request != null){
			HttpSession session = request.getSession();
			Object obj = session.getAttribute(Constants.USER_IN_SESSION_KEY);
			if(obj != null){
				return (User)obj;
			}
		}
		return null;
	}

}
