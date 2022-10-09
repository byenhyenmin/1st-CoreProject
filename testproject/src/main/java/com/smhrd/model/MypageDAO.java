package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MypageDAO {
	
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public ArrayList<MypageDTO> MypageSelectAll(){
		ArrayList<MypageDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.MypageDAO.MypageSelectAll");
		
		sqlSession.close();
		
		return list;
	}
	
}
