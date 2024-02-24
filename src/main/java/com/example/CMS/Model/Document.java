package com.example.CMS.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity

public class Document {
	@Id
	private String documentId;
	private String documentName;
	private String documentImageName;
	private String DocumentType;
	public String getDocumentId() {
		return documentId;
	}
	public void setDocumentId(String documentId) {
		this.documentId = documentId;
	}
	public String getDocumentName() {
		return documentName;
	}
	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}
	public String getDocumentImageName() {
		return documentImageName;
	}
	public void setDocumentImageName(String documentImageName) {
		this.documentImageName = documentImageName;
	}
	public String getDocumentType() {
		return DocumentType;
	}
	public void setDocumentType(String documentType) {
		DocumentType = documentType;
	}
	public Document(String documentId, String documentName, String documentImageName, String documentType) {
		super();
		this.documentId = documentId;
		this.documentName = documentName;
		this.documentImageName = documentImageName;
		DocumentType = documentType;
	}
	@Override
	public String toString() {
		return "Document [documentId=" + documentId + ", documentName=" + documentName + ", documentImageName="
				+ documentImageName + ", DocumentType=" + DocumentType + "]";
	}
	public Document() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
