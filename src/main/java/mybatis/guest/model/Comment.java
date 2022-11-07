package mybatis.guest.model;

import java.io.Serializable;

/*
 * 
 * 직렬화
 * 	- 클래스 뒤에 implements Serializable
 *  - 통신 상에 전송하는 객체에는 직렬화를 해야 함
 * 	(현재는 꼭 안써도 되나, 초창기의 마이바티스 에서는 꼭 써줘야 했음)
 * 
 */

public class Comment implements Serializable {
	private int commentNo;
	private String userId;
	private String commentContent;
	private String regDate;
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
	

}
