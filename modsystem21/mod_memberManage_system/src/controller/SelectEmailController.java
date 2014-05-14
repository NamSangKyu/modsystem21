package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.EmployeeService;
import model.EmployeeVO;
import model.ModelAndView;

public class SelectEmailController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		ArrayList<EmployeeVO> mlist = EmployeeService.getInstance().getSAList();
		ArrayList<EmployeeVO> gslist = EmployeeService.getInstance().getGSList();
		ArrayList<EmployeeVO> glist = EmployeeService.getInstance().getGLList();
		
		
		HttpSession session = request.getSession();
		
		session.setAttribute("mList", mlist);
		session.setAttribute("gsList", gslist);
		session.setAttribute("gList", glist);
		session.setAttribute("mCount", mlist.size());
		session.setAttribute("gsCount", gslist.size());
		session.setAttribute("gCount", glist.size());
		
		return new ModelAndView("employee/selectEmployee.jsp", false);
	}

}
