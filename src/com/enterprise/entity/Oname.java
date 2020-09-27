package com.enterprise.entity;

public class Oname {
	private String name;
	private int cnt;
	private int round;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getRound() {
		return round;
	}
	public void setRound(int round) {
		this.round = round;
	}
	public Oname(String name,int cnt ,int round) {
		this.name = name;
		this.cnt = cnt;
		this.round = round;
	}
}
