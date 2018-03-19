package com.sxkl.knowledge.answer.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.sxkl.knowledge.question.entity.QuestionBean;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午2:49:43
 * @description: 答案
 */
@Entity
@Table(name = "kg_answer")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class Answer {

	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name = "id", unique = true, nullable = false)
	private String id;

	@Column(name = "content", unique = false, nullable = false)
	private String content;

	@Column(name = "is_correct", unique = false, nullable = false)
	private boolean isCorrect;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "question_bean_id")
	private QuestionBean questionBean;

}
