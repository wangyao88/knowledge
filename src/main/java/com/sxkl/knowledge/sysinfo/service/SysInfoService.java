package com.sxkl.knowledge.sysinfo.service;

import org.apache.commons.lang3.StringUtils;
import org.hyperic.sigar.CpuInfo;
import org.hyperic.sigar.CpuPerc;
import org.hyperic.sigar.FileSystem;
import org.hyperic.sigar.FileSystemUsage;
import org.hyperic.sigar.Mem;
import org.hyperic.sigar.Sigar;
import org.hyperic.sigar.SigarException;
import org.hyperic.sigar.Swap;
import org.springframework.stereotype.Service;

import com.sxkl.knowledge.sysinfo.entity.SysInfo;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午1:03:45
 * @description: 
 */
@Service
public class SysInfoService {
	
	public SysInfo getSysInfo(){
		SysInfo sysInfo = new SysInfo();
		try {
			sysInfo.setCpuRate(getCpuRate());
			sysInfo.setDiskRate(getDiskRate());
			sysInfo.setMemeryRate(getMemeryRate());
		} catch (SigarException e) {
		}
		return sysInfo;
	}
	
	private int getCpuRate() throws SigarException{
		Sigar sigar = new Sigar();
		CpuInfo[] infos = sigar.getCpuInfoList();
		CpuPerc[] cpuList = sigar.getCpuPercList();
		double cpuRate = 0.0;
		for (int i = 0; i < infos.length; i++) {// 不管是单块CPU还是多CPU都适用
			CpuPerc cpu = cpuList[i];
			cpuRate += Double.parseDouble(CpuPerc.format(cpu.getCombined()).replaceAll("%", StringUtils.EMPTY));
		}
		return (int)(cpuRate/cpuList.length);
	}
	
	private int getDiskRate() throws SigarException{
		double total = 0.0;
		double userd = 0.0;
		Sigar sigar = new Sigar();
		FileSystem fslist[] = sigar.getFileSystemList();
		for (int i = 0; i < fslist.length; i++) {
			FileSystem fs = fslist[i];
			FileSystemUsage usage = null;
			usage = sigar.getFileSystemUsage(fs.getDirName());
			switch (fs.getType()) {
			case 0: // TYPE_UNKNOWN ：未知
				break;
			case 1: // TYPE_NONE
				break;
			case 2: // TYPE_LOCAL_DISK : 本地硬盘
				// 文件系统总大小
				total += usage.getTotal();
				userd += usage.getUsed();
				break;
			case 3:// TYPE_NETWORK ：网络
				break;
			case 4:// TYPE_RAM_DISK ：闪存
				break;
			case 5:// TYPE_CDROM ：光驱
				break;
			case 6:// TYPE_SWAP ：页面交换
				break;
			}
		}
		return (int)((userd/total)*100);
	}
	
	private int getMemeryRate() throws SigarException{
		double total = 0.0;
		double used = 0.0;
		Sigar sigar = new Sigar();
		Mem mem = sigar.getMem();
		Swap swap = sigar.getSwap();
		
		total += mem.getTotal() + swap.getTotal();
		used += mem.getUsed() + swap.getUsed();
		return (int)((used/total)*100);
	}
}
