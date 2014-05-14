package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.EmployeeService;
import model.EmployeeVO;
import model.ModelAndView;

public class LoginController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		EmployeeVO vo = EmployeeService.getInstance().login(request.getParameter("id"),request.getParameter("pass"));
		PrintWriter pw;
		ModelAndView mv = null;
		try {
			pw = response.getWriter();
			if(vo != null){
				HttpSession session = request.getSession();
				session.setAttribute("vo", vo);
				pw.println(0);
				mv = new ModelAndView("member/memberManage.jsp", true);
			}else{
				pw.println(1);
				pw.close();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

}
