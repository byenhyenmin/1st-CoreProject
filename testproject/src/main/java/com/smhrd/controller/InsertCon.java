package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;


public class InsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
String savePath = request.getServletContext().getRealPath("/resources/image");
		
		int maxSize = 1024 * 1024 * 5;
		String encoding = "UTF-8";
		MultipartRequest multi = null;
		
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		String board_title = multi.getParameter("title");
		String board_mem_id = multi.getParameter("writer");
		String board_image = multi.getFilesystemName("file");
		String board_content = multi.getParameter("content");
		System.out.println("insertcon"+board_image);
		BoardDTO dto = new BoardDTO();
		dto.setBoard_title(board_title);
		dto.setBoard_mem_id(board_mem_id);
		dto.setBoard_image(board_image);
		dto.setBoard_content(board_content);

		BoardDAO dao = new BoardDAO();
		
		int row = dao.insert(dto);
		
		if(row > 0) {
			return "redirect:/selectAll.do";
		}else {
			return "redirect:/insert.do";
		}
		
		
		
	}

}
