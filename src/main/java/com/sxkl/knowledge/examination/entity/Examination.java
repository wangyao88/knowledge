package com.sxkl.knowledge.examination.entity;

import java.util.Date;

import com.sxkl.knowledge.paper.entity.Paper;
import com.sxkl.knowledge.paper.entity.PaperStats;
import com.sxkl.knowledge.player.entity.Player;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午4:46:41
 * @description: 考试
 */
@Data
public class Examination {
	
	private String id;
	
	private String name;
	
	private Date beginDate;
	
	private Date endDate;
	
	private Paper paper;
	
	private PaperStats paperStats;
	
	private Player player;
}
