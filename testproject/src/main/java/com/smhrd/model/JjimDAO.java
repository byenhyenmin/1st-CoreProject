package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class JjimDAO {
	
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	
	public int insert(JjimDTO dto) {
		
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.insert("com.smhrd.model.JjimDAO.Jjiminsert",dto);
		sqlSession.close(); 
	
	
		return result;
		
		
		
	}

	
	
}
