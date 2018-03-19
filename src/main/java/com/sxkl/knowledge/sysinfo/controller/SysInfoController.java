package com.sxkl.knowledge.sysinfo.controller;

import javax.annotation.PostConstruct;

import org.hyperic.sigar.SigarException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sxkl.knowledge.sysinfo.entity.SysInfo;
import com.sxkl.knowledge.sysinfo.service.SysInfoService;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午2:18:53
 * @description: 
 */
@Controller
@RequestMapping("/sysinfo")
public class SysInfoController {
	
	@Autowired
	private SysInfoService sysInfoService;
	
	@PostConstruct
	private void init(){
		System.out.println(sysInfoService.getSysInfo());
	}
	
	@RequestMapping(value = "/getCurrentSysInfo" ,method = RequestMethod.GET)
	@ResponseBody
	public SysInfo getCurrentSysInfo(){
		return sysInfoService.getSysInfo();
	}

}
