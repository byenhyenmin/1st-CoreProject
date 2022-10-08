package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoSurveyCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mem_id = request.getParameter("mem_id");
		request.setAttribute("mem_id",mem_id);
		
		System.out.println("설문조사로이동★^^7");
		
		return "survey";
		
			
	}

}
