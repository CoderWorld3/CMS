package com.example.CMS.Model;

public class ChatDto {
    private String sentAt;
    private String sentBy;
    private String msg;
	public String getSentAt() {
		return sentAt;
	}
	public void setSentAt(String sentAt) {
		this.sentAt = sentAt;
	}
	public String getSentBy() {
		return sentBy;
	}
	public void setSentBy(String sentBy) {
		this.sentBy = sentBy;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public ChatDto(String sentAt, String sentBy, String msg) {
		super();
		this.sentAt = sentAt;
		this.sentBy = sentBy;
		this.msg = msg;
	}
	public ChatDto() {
		super();
		// TODO Auto-generated constructor stub
	}
}