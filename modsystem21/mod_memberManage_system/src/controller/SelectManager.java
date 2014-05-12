package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.EmployeeService;
import model.EmployeeVO;
import model.ModelAndView;

public class SelectManager implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		ArrayList<EmployeeVO> list = EmployeeService.getInstance().getEmployeeList();
		
		HttpSession session = request.getSession();
		
		session.setAttribute("mList", list);
		
		return new ModelAndView("employee/selectEmployee.jsp", false);
	}

}
