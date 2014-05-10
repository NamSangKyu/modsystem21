package model;

public class ContentSetting {
	//페이지당 표시할 게시물 숫자
	private int pageOfCount;
	//페이지에 표시할 페이지 넘버 개수
	private int pageGroupCount;
	public ContentSetting(int pageOfCount, int pageGroupCount) {
		super();
		this.pageOfCount = pageOfCount;
		this.pageGroupCount = pageGroupCount;
	}
	public int getPageOfCount() {
		return pageOfCount;
	}
	public void setPageOfCount(int pageOfCount) {
		this.pageOfCount = pageOfCount;
	}
	public int getPageGroupCount() {
		return pageGroupCount;
	}
	public void setPageGroupCount(int pageGroupCount) {
		this.pageGroupCount = pageGroupCount;
	}
	//전체 게시물 개수
	public int totalCount(){
		return ContentDao.getInstance().getTotalCount();
		
	}
	
	
	
	
}
