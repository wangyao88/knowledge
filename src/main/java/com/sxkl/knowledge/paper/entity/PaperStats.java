package com.sxkl.knowledge.paper.entity;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午4:32:07
 * @description: 试卷统计信息
 */
@Data
public class PaperStats {

	private String id;
	
    private int costTime;
	
	private float corretRate;
	
	private float totalScore;
	
	private float score;
}
