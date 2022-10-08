package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

public class b_UpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String savePath = request.getServletContext().getRealPath("/upload");
		System.out.println("update.do 실행해봐");
		int maxSize = 1024 * 1024 * 5;
		String encoding = "UTF-8";
		MultipartRequest multi = null;
		
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		String board_title = multi.getParameter("title");
		String board_content = multi.getParameter("content");
		String board_num = multi.getParameter("board_num");
		System.out.println(board_title+"넘어왔니?");
		
		BoardDTO dto = new BoardDTO();
		dto.setBoard_title(board_title);
		dto.setBoard_content(board_content);
		dto.setBoard_num(board_num);
		
		
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
