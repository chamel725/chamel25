package com.sesec.chamel.player.vo;

public class Better {
	private String name;
	private int age;
	private String team;
	private int year;
	private int game;
	private double avg;
	private int hit;
	private int hr;
	private int rbi;
	private int sb;
	private String position;
	private String url;

	public Better() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Better(String name, int age, String team, int year, int game, double avg, int hit, int hr, int rbi, int sb,
			String position, String url) {
		super();
		this.name = name;
		this.age = age;
		this.team = team;
		this.year = year;
		this.game = game;
		this.avg = avg;
		this.hit = hit;
		this.hr = hr;
		this.rbi = rbi;
		this.sb = sb;
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

	public int getGame() {
		return game;
	}

	public void setGame(int game) {
		this.game = game;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(double avg) {
		this.avg = avg;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getHr() {
		return hr;
	}

	public void setHr(int hr) {
		this.hr = hr;
	}

	public int getRbi() {
		return rbi;
	}

	public void setRbi(int rbi) {
		this.rbi = rbi;
	}

	public int getSb() {
		return sb;
	}

	public void setSb(int sb) {
		this.sb = sb;
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
		return "Better [name=" + name + ", age=" + age + ", team=" + team + ", year=" + year + ", game=" + game
				+ ", avg=" + avg + ", hit=" + hit + ", hr=" + hr + ", rbi=" + rbi + ", sb=" + sb + ", position="
				+ position + ", url=" + url + "]";
	}

	

}
