package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EMail;
import model.EmailAuthenticator;
import model.EmployeeService;
import model.ModelAndView;

public class InsertContentController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		EMail e = EMail.getInstance();
		String list[] = request.getParameter("manager").split(",");
		String to = request.getParameter("manager").split(",")[0];
		
		String cc = "";
		for(int i=1;i<list.length;i++){
			if(i==1)
				cc += list[i];
			else
				cc += ","+list[i];
			
		}
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = "작성자 : "+EmployeeService.getInstance().getEmployee(writer)+"\n\n작성내용\n------------------------------\n"+request.getParameter("content");
		e.send(writer, to, cc, title, content);
		return null;
	}

}
