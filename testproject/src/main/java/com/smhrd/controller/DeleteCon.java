package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;

public class DeleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String board_num = request.getParameter("boardnum");
		System.out.println(board_num);
		BoardDAO dao = new BoardDAO();
		
		int result = dao.delete(board_num);
		
		if(result > 0) {
			System.out.println("삭제성공");
			return "redirect:/selectAll.do";
		}else {
			System.out.println("삭제실패");
			return "redirect:/selectAll.do";
		}
	}

}
