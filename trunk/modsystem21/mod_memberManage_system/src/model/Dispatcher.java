package model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.HandlerMapping;

/**
 * Servlet implementation class Dispatcher
 */
public class Dispatcher extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private HandlerMapping hm = HandlerMapping.getInstance();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dispatcher() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		/*HttpSession session = request.getSession();
		session.setAttribute("tt", "세션 설정");		
		PrintWriter pw = response.getWriter();
		//pw.println("2");
		System.out.println("asd");
		JSONArray j = new JSONArray();
		j.add(new MemberVO("asaa","pass"));
		pw.println(j.toString());
		pw.close();
		
*/		Controller controller = hm.createController(request.getParameter("command"));
		ModelAndView mv = controller.execute(request, response);
		if(mv != null){
			if(mv.isRedirect()){
				response.sendRedirect(mv.getPath());
			}else{
				request.getRequestDispatcher(mv.getPath()).forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
