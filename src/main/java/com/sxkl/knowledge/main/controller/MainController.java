package com.sxkl.knowledge.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author: wangyao
 * @date: 2018年3月19日 上午9:40:26
 * @description: 
 */
@Controller
public class MainController {

	@RequestMapping(value = "/main", method = {RequestMethod.GET, RequestMethod.HEAD})
	@ResponseBody
	public ModelAndView login(HttpServletRequest request) throws Exception{
		ModelAndView modelAndView = new ModelAndView("main/main");
		return modelAndView;
	}
}
