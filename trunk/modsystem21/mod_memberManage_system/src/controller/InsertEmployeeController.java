package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import model.EmployeeService;
import model.EmployeeVO;
import model.ModelAndView;

public class InsertEmployeeController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		EmployeeService service = EmployeeService.getInstance();
		
		EmployeeVO vo = new EmployeeVO(request.getParameter("id"), request.getParameter("pass"), request.getParameter("eId"), request.getParameter("name"), request.getParameter("dept"), request.getParameter("position"));
		
		if(service.insertEmployee(vo)){		
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			return new ModelAndView("../index.jsp", true);
		}
		return null;
	}

}
