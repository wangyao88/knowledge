package com.sxkl.knowledge.basedata.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午2:49:43
 * @description: 分值
 */
@Entity
@Table(name="kg_question_score")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class QuestionScore {

	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name="id",unique=true,nullable=false)
	private String id;
	
	@Column(name="name",unique=true,nullable=false)
	private String name;
	
	@Column(name="score",unique=true,nullable=false)
	private double score;
}
