package com.sxkl.knowledge.player.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

import com.sxkl.knowledge.examination.entity.Examination;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午4:09:14
 * @description: 玩家
 */
@Entity
@Table(name = "kg_player")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class Player {

	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name = "id", unique = true, nullable = false)
	private String id;

	@Column(name = "account", unique = true, nullable = false)
	private String account;

	@Column(name = "nickName", unique = false, nullable = true)
	private String nickName;

	@Column(name = "url", unique = true, nullable = true)
	private String url;

	@Column(name = "address", unique = false, nullable = true)
	private String address;

	@Column(name = "level_score", unique = false, nullable = true)
	private int levelScore;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "level_id")
	private Level level;

	@OneToMany(fetch = FetchType.LAZY)
	@Cascade(value = { CascadeType.ALL })
	@JoinColumn(name = "player_id")
	private List<Examination> examination;
}
