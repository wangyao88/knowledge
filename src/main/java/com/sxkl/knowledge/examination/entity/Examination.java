package com.sxkl.knowledge.examination.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.sxkl.knowledge.paper.entity.Paper;
import com.sxkl.knowledge.paper.entity.PaperStats;
import com.sxkl.knowledge.player.entity.Player;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午4:46:41
 * @description: 考试
 */
@Entity
@Table(name = "kg_examination")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class Examination {

	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name = "id", unique = true, nullable = false)
	private String id;

	@Column(name = "name", unique = true, nullable = false)
	private String name;

	@Column(name = "begin_date", unique = false, nullable = true)
	private Date beginDate;

	@Column(name = "end_date", unique = false, nullable = true)
	private Date endDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "paper_id")
	private Paper paper;

	@OneToOne
	@JoinColumn(name = "paper_stats_id")
	private PaperStats paperStats;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "player_id")
	private Player player;
}
