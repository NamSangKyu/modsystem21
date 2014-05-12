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
			controller = new InsertEmployeeInsert();
			break;
		case "login":
			controller = new Login();
			break;
		case "logout":
			controller = new LogoutController();
			break;
		case "selectManager":
			controller = new SelectManager();
			break;
		}
		return controller;
	}
}
