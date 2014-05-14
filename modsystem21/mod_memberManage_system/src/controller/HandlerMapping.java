package controller;



public class HandlerMapping {
	private static HandlerMapping instance = new HandlerMapping();
	
	private HandlerMapping() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public static HandlerMapping getInstance() {
		return instance;
	}

	public Controller createController(String str){
		Controller controller = null;
		switch(str){
		case "employeeInsert":
			controller = new InsertEmployeeController();
			break;
		case "login":
			controller = new LoginController();
			break;
		case "logout":
			controller = new LogoutController();
			break;
		case "selectEmail":
			controller = new SelectEmailController();
			break;
		case "insertContent":
			controller = new InsertContentController();
			break;
			
		}
		return controller;
	}
}
