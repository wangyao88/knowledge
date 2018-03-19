package com.sxkl.knowledge.player.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.Data;

/**
 * @author: wangyao
 * @date: 2018年3月19日 下午4:54:15
 * @description: 玩家等级
 */
@Entity
@Table(name="kg_level")
@GenericGenerator(name = "uuid", strategy = "uuid")
@Data
public class Level {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name="id",unique=true,nullable=false)
	private String id;
	
	@Column(name="name",unique=true,nullable=false)	
	private int name;
	
	@Column(name="upper_limit",unique=true,nullable=false)	
	private int upperLimit;
	
	@Column(name="lower_limit",unique=true,nullable=false)	
	private int lowerLimit;
	
	
	private List<Player> players;
}
