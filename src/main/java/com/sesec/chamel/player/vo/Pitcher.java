package com.sesec.chamel.player.vo;

public class Pitcher {

	private String name;
	private int age;
	private String team;
	private int year;
	private double era;
	private int win;
	private int lose;
	private int save;
	private int hold;
	private int so;
	private String position;
	private String url;

	public Pitcher() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pitcher(String name, int age, String team, int year, double era, int win, int lose, int save, int hold,
			int so, String position, String url) {
		super();
		this.name = name;
		this.age = age;
		this.team = team;
		this.year = year;
		this.era = era;
		this.win = win;
		this.lose = lose;
		this.save = save;
		this.hold = hold;
		this.so = so;
		this.position = position;
		this.url = url;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public double getEra() {
		return era;
	}

	public void setEra(double era) {
		this.era = era;
	}

	public int getWin() {
		return win;
	}

	public void setWin(int win) {
		this.win = win;
	}

	public int getLose() {
		return lose;
	}

	public void setLose(int lose) {
		this.lose = lose;
	}

	public int getSave() {
		return save;
	}

	public void setSave(int save) {
		this.save = save;
	}

	public int getHold() {
		return hold;
	}

	public void setHold(int hold) {
		this.hold = hold;
	}

	public int getSo() {
		return so;
	}

	public void setSo(int so) {
		this.so = so;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "Pitcher [name=" + name + ", age=" + age + ", team=" + team + ", year=" + year + ", era=" + era
				+ ", win=" + win + ", lose=" + lose + ", save=" + save + ", hold=" + hold + ", so=" + so + ", position="
				+ position + ", url=" + url + "]";
	}



}