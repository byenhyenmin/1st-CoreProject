package com.smhrd.model;

import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	// 회원가입
	public int insert(MemberDTO join) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);				
		result =sqlSession.insert("com.smhrd.model.MemberDAO.insert", join);
		sqlSession.close();
		
		return result;
	}
	
	// 회원정보수정
	public int update(MemberDTO dto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);		
		result = sqlSession.update("com.smhrd.model.MemberDAO.update", dto);
		sqlSession.close();
	
		return result;
	}

	// 로그인(회원정보)
	public MemberDTO login(MemberDTO dto) {
		MemberDTO result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			result = sqlSession.selectOne("login", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		sqlSession.close();
		
		return result;
	}

	
	
	
	
}
