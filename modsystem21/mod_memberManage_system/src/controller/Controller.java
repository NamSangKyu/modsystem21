package controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ModelAndView;

public interface Controller {
	ModelAndView execute(HttpServletRequest request, HttpServletResponse response);
}
