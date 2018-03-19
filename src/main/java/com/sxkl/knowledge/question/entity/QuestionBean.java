package com.sxkl.knowledge.question.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

import com.sxkl.knowledge.answer.entity.Answer;
import com.sxkl.knowledge.basedata.entity.QuestionCategory;
import com.sxkl.knowledge.basedata.entity.QuestionLevel;
import com.sxkl.knowledge.basedata.entity.QuestionScore;
import com.sxkl.knowledge.basedata.entity.QuestionType;
import com.sxkl.knowledge.paper.entity.Paper;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午2:49:43
 * @description: 问题
 */
@Entity
@Table(name = "kg_question_bean")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class QuestionBean {

	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name = "id", unique = true, nullable = false)
	private String id;

	@Column(name = "content", unique = true, nullable = false)
	private String content;

	@Transient
	private int num;

	@Transient
	private boolean isCorrect;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "question_type_id")
	private QuestionType questionType;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "question_level_id")
	private QuestionLevel questionLevel;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "question_score_id")
	private QuestionScore questionScore;

	@ManyToMany(fetch = FetchType.LAZY)
	@Cascade(value = { CascadeType.ALL })
	@JoinTable(name = "kg_question_bean_category", joinColumns = {
			@JoinColumn(name = "bean_id") }, inverseJoinColumns = { @JoinColumn(name = "category_id") })
	private List<QuestionCategory> questionCategory;

	@OneToMany(fetch = FetchType.LAZY)
	@Cascade(value = { CascadeType.ALL })
	@JoinColumn(name = "question_bean_id")
	private List<Answer> answers;

	@ManyToMany(fetch = FetchType.LAZY)
	@Cascade(value = { CascadeType.ALL })
	@JoinTable(name = "kg_question_bean_paper", joinColumns = { @JoinColumn(name = "bean_id") }, inverseJoinColumns = {
			@JoinColumn(name = "paper_id") })
	private List<Paper> papers;
}
