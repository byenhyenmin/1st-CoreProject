package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

public class b_UpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String board_title = request.getParameter("title");
		String board_content = request.getParameter("content");
		
		BoardDTO dto = new BoardDTO();
		dto.setBoard_title(board_title);
		dto.setBoard_content(board_content);
		
		BoardDAO dao = new BoardDAO();
		int result = dao.update(dto);
		
		if(result > 0) {
			System.out.println("업뎃성공");
			return "redirect:/selectAll.do";
		}else {
			System.out.println("업뎃 실패");
			return "redirect:/selectAll.do";
		}
		
	}

}
