package com.dateme.entities;

public class UserInfo {
	private static String defaultText = "ASK ME";
	private String userid, username=defaultText, name, email, passeord, birthday, gender,
			here_for, lookingfor = defaultText, location=defaultText,
			interests = defaultText, aboutme = defaultText,
			sexuality = defaultText, height = defaultText,
			weight = defaultText, body_type = defaultText,
			eyecolor = defaultText, hair_color = defaultText,
			living = defaultText, children = defaultText,
			smoking = defaultText, drinking = defaultText,
			education = defaultText, income = defaultText,
			language = defaultText, job = defaultText, company = defaultText,
			relationship = defaultText;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHere_for() {
		return here_for;
	}

	public void setHere_for(String here_for) {
		this.here_for = here_for;
	}

	public String getLookingfor() {
		return lookingfor;
	}

	public void setLookingfor(String lookingfor) {
		this.lookingfor = lookingfor;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLiving() {
		return living;
	}

	public void setLiving(String living) {
		this.living = living;
	}

	public String getHair_color() {
		return hair_color;
	}

	public void setHair_color(String hair_color) {
		this.hair_color = hair_color;
	}

	public String getEyecolor() {
		return eyecolor;
	}

	public void setEyecolor(String eyecolor) {
		this.eyecolor = eyecolor;
	}

	public String getBody_type() {
		return body_type;
	}

	public void setBody_type(String body_type) {
		this.body_type = body_type;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getSexuality() {
		return sexuality;
	}

	public void setSexuality(String sexuality) {
		this.sexuality = sexuality;
	}

	public String getAboutme() {
		return aboutme;
	}

	public void setAboutme(String aboutme) {
		this.aboutme = aboutme;
	}

	public String getInterests() {
		return interests;
	}

	public void setInterests(String interests) {
		this.interests = interests;
	}

	public String getChildren() {
		return children;
	}

	public void setChildren(String children) {
		this.children = children;
	}

	public String getSmoking() {
		return smoking;
	}

	public void setSmoking(String smoking) {
		this.smoking = smoking;
	}

	public String getDrinking() {
		return drinking;
	}

	public void setDrinking(String drinking) {
		this.drinking = drinking;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}

	public String getPasseord() {
		return passeord;
	}

	public void setPasseord(String passeord) {
		this.passeord = passeord;
	}

	public String getRelationship() {
		return relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}

	public String getIncome() {
		return income;
	}

	public void setIncome(String income) {
		this.income = income;
	}
}
