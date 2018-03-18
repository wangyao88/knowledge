package com.sxkl.knowledge.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sxkl.knowledge.start.data.RsaKeyManager;
import com.sxkl.knowledge.user.service.UserService;

/**
 * @author wangyao
 * @date 2018年3月18日 下午8:14:25
 * @description:
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
}
