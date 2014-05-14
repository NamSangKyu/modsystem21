package model;

import java.util.ArrayList;

public class EmployeeService {
	private static EmployeeService instance = new EmployeeService();
	private EmployeeDao dao = EmployeeDao.getInstance();
	
	private EmployeeService() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static EmployeeService getInstance() {
		return instance;
	}

	public boolean insertEmployee(EmployeeVO vo){
		return dao.insertEmployee(vo);
	}

	public EmployeeVO login(String id, String pass) {
		// TODO Auto-generated method stub
		return dao.login(id, pass);
	}

	public ArrayList<EmployeeVO> getEmployeeList() {
		// TODO Auto-generated method stub
		return dao.getEmployeeList();
	}

	public ArrayList<EmployeeVO> getSAList() {
		// TODO Auto-generated method stub
		return dao.getSAList();
	}

	public ArrayList<EmployeeVO> getGSList() {
		// TODO Auto-generated method stub
		return dao.getGSList();
	}

	public ArrayList<EmployeeVO> getGLList() {
		// TODO Auto-generated method stub
		return dao.getGLList();
	}
	
}
