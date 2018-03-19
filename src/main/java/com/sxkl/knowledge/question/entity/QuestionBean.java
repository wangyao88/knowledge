package com.sxkl.knowledge.question.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

import com.sxkl.knowledge.answer.entity.Answer;
import com.sxkl.knowledge.basedata.entity.QuestionCategory;
import com.sxkl.knowledge.basedata.entity.QuestionLevel;
import com.sxkl.knowledge.basedata.entity.QuestionScore;
import com.sxkl.knowledge.basedata.entity.QuestionType;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午2:49:43
 * @description: 问题
 */
@Entity
@Table(name="kg_question_bean")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class QuestionBean {

	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name="id",unique=true,nullable=false)
	private String id;
	
	@Column(name="content",unique=true,nullable=false)
	private String content;
	
	@Transient
	private int num;
	
	@Transient
	private boolean isCorrect;
	
	private QuestionType questionType;
	
	private QuestionLevel questionLevel;
	
	private QuestionScore questionScore;
	
	private List<QuestionCategory> questionCategory;
	
	private List<Answer> answers;
}
