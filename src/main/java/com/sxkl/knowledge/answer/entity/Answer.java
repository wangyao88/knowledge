package com.sxkl.knowledge.answer.entity;

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
 * @description: 答案
 */
@Entity
@Table(name="kg_answer")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class Answer {

	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name="id",unique=true,nullable=false)
	private String id;
	
	@Column(name="content",unique=true,nullable=false)
	private String content;
	
	private boolean isCorrect;

}