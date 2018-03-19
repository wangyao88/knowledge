package com.sxkl.knowledge.paper.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.sxkl.knowledge.question.entity.QuestionBean;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午2:49:43
 * @description: 试卷
 */
@Entity
@Table(name="kg_paper")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class Paper {

	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name="id",unique=true,nullable=false)
	private String id;
	
	@Column(name="name",unique=true,nullable=false)
	private String name;
	
	private Date createDate;
	
	private List<QuestionBean> questionBeans;
}
