package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.smhrd.model.MypageDAO;
import com.smhrd.model.MypageDTO;

public class MypageCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("mypage con넘어오니?");
		MypageDAO dao = new MypageDAO();
		ArrayList<MypageDTO> list = dao.MypageSelectAll();
		System.out.println(list);
		list.get(0).getShop_id();
		System.out.println(list.get(0).getMYPAGE_SEQ()+"됩니까?");
		System.out.println(list.get(0).getMypage_id()+"됩니다?");
		System.out.println(list.get(0).getShop_id()+"됩니다?");
		System.out.println(list.get(0).getShop_img()+"됩니다?");
		System.out.println(list.get(0).getShop_name()+"됩니다?");
		
		
		
		request.setAttribute("mylist",list);
		
		return "mypage_bookmark";
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
