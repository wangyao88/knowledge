package com.sxkl.knowledge.user.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * @author wangyao
 * @date 2018年3月18日 下午6:11:28
 * @description:
 */
@Entity
@Table(name="kg_user")
@GenericGenerator(name = "uuid", strategy = "uuid")
public class User {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name="id",unique=true,nullable=false)
	private String id;
	
	@Column(name="name",unique=true,nullable=false)
	private String name;
	
	@Column(name="password",unique=false,nullable=false)
	private String password;
	
	
	public User() {
		super();
	}

	public User(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
