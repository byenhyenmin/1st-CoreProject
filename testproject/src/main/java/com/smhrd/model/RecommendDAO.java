package com.smhrd.model;

import java.util.ArrayList;
import java.sql.ResultSet;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class RecommendDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public RecommendDTO selectOne(String mem_id) {
		
		RecommendDTO result = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.selectOne("select", mem_id);
		
		return result;
	}
	
	
}
