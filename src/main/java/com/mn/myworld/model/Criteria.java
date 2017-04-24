package com.mn.myworld.model;

public class Criteria implements java.io.Serializable{
	
	private String criteriaType;
	private String criteriaText;
	private String criteriaId;
	public String getCriteriaType() {
		return criteriaType;
	}
	public void setCriteriaType(String criteriaType) {
		this.criteriaType = criteriaType;
	}
	public String getCriteriaText() {
		return criteriaText;
	}
	public void setCriteriaText(String criteriaText) {
		this.criteriaText = criteriaText;
	}
	public String getCriteriaId() {
		return criteriaId;
	}
	public void setCriteriaId(String criteriaId) {
		this.criteriaId = criteriaId;
	}
	
	

}
