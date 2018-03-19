package com.sxkl.knowledge.paper.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

import com.sxkl.knowledge.examination.entity.Examination;
import com.sxkl.knowledge.question.entity.QuestionBean;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午2:49:43
 * @description: 试卷
 */
@Entity
@Table(name = "kg_paper")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class Paper {

	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name = "id", unique = true, nullable = false)
	private String id;

	@Column(name = "name", unique = true, nullable = false)
	private String name;

	@Column(name = "create_date", unique = false, nullable = false)
	private Date createDate;

	@ManyToMany(fetch = FetchType.LAZY)
	@Cascade(value = { CascadeType.ALL })
	@JoinTable(name = "kg_question_bean_paper", joinColumns = { @JoinColumn(name = "paper_id") }, inverseJoinColumns = {
			@JoinColumn(name = "bean_id") })
	private List<QuestionBean> questionBeans;

	@OneToMany(fetch = FetchType.LAZY)
	@Cascade(value = { CascadeType.ALL })
	@JoinColumn(name = "paper_id")
	private List<Examination> examinations;
}
