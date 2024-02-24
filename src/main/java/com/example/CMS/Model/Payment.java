package com.example.CMS.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
 public class Payment {
	@Id
	private String paymentId;
	private String amount;
	public String getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}

	public Payment(String paymentId, String amount) {
		super();
		this.paymentId = paymentId;
		this.amount = amount;
	}
	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
