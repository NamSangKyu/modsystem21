package model;

public class ContentVO {
	//글번호
	private int no;
	//제목
	private String title;
	//작성자
	private String writer;
	//작성일
	private String date;
	//담당자
	private String manager;
	//내용
	private String content;
	public ContentVO(String title, String writer, String date, String manager,
			String content) {
		super();
		this.title = title;
		this.writer = writer;
		this.date = date;
		this.manager = manager;
		this.content = content;
	}
	public ContentVO(int no, String title, String writer, String date,
			String manager, String content) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.date = date;
		this.manager = manager;
		this.content = content;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "ContentVO [no=" + no + ", title=" + title + ", writer="
				+ writer + ", date=" + date + ", manager=" + manager
				+ ", content=" + content + "]";
	}
	
	
	
}
