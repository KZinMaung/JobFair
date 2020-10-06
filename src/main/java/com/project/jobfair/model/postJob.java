package com.project.jobfair.model;

public class postJob {

	public postJob(String jobTitle, int noOfOpening, String salary, String requirement, String description) {
		super();
		this.jobTitle = jobTitle;
		this.noOfOpening = noOfOpening;
		this.salary = salary;
		this.requirement = requirement;
		this.description = description;
	}
	public postJob() {
		
	}
	private String jobTitle;
	private int noOfOpening;
	private String salary;
	private String requirement;
	private String description;
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public int getNoOfOpening() {
		return noOfOpening;
	}
	public void setNoOfOpening(int noOfOpening) {
		this.noOfOpening = noOfOpening;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
