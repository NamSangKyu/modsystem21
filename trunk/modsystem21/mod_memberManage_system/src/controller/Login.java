package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.EmployeeService;
import model.EmployeeVO;
import model.ModelAndView;

public class Login implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		EmployeeVO vo = EmployeeService.getInstance().login(request.getParameter("id"),request.getParameter("pass"));
		HttpSession session = request.getSession();
		session.setAttribute("vo", vo);
		return new ModelAndView("member/memberManage.jsp", true);
	}

}
