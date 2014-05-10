package model;

public class EmployeeVO {
	private String id;
	private String pass;
	private String eId;
	private String name;
	private String dept;
	private String position;
	public EmployeeVO(String id, String pass, String eId, String name,
			String dept, String position) {
		super();
		this.id = id;
		this.pass = pass;
		this.eId = eId;
		this.name = name;
		this.dept = dept;
		this.position = position;
	}
	public EmployeeVO() {
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String geteId() {
		return eId;
	}
	public void seteId(String eId) {
		this.eId = eId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	@Override
	public String toString() {
		return "EmployeeVO [id=" + id + ", pass=" + pass + ", eId=" + eId
				+ ", name=" + name + ", dept=" + dept + ", position="
				+ position + "]";
	}
	
	
	
}
