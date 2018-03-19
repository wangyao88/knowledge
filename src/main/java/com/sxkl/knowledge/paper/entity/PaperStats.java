package com.sxkl.knowledge.paper.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.sxkl.knowledge.examination.entity.Examination;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午4:32:07
 * @description: 试卷统计信息
 */
@Entity
@Table(name = "kg_paper_stats")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class PaperStats {

	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name = "id", unique = true, nullable = false)
	private String id;

	@Column(name = "cost_time", unique = false, nullable = false)
	private int costTime;

	@Column(name = "corret_rate", unique = false, nullable = false)
	private float corretRate;

	@Column(name = "total_score", unique = false, nullable = false)
	private float totalScore;

	@Column(name = "score", unique = false, nullable = false)
	private float score;

	@OneToOne(mappedBy = "paperStats")
	private Examination examination;
}
