package com.sxkl.knowledge.basedata.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author: wangyao
 * @date: 2018年3月20日 下午2:15:27
 * @description: 
 */
@Controller
@RequestMapping("/basedata")
public class BaseDataController {

	@RequestMapping(value = "/index", method = {RequestMethod.GET, RequestMethod.HEAD})
	public String index(){
		return "basedata/index";
	}
	
}
