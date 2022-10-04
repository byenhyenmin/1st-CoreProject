package com.smhrd.model;

import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class JoinDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	// 회원가입
	public int insert(Join join) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);				
		result =sqlSession.insert("insert", join);
		sqlSession.close();
		
		return result;
	}

	
	// 회원정보수정
//	public int update(Board board) {
//		int result = 0;
//		
//		// 1. SqlSession 빌려오기
//		// true --> auto commit
//		SqlSession sqlSession = sqlSessionFactory.openSession(true);		
//		
//		// 2. SQL문 골라서 실행시키기
//		result = sqlSession.update("com.smhrd.model.DAO.update", board);
//		
//		// 3. 빌린 Connection 돌려주기
//		sqlSession.close();
//		
//		// 4. 실행결과 리턴
//		return result;
//		
//	}
	
	// 회원탈퇴
//	public int delete(String board_num) {
//		
//		SqlSession sqlSession = sqlSessionFactory.openSession(true);
//		int result = sqlSession.delete("delete", board_num);
//		sqlSession.close();
//		
//		return result;
//		
//	}
	
/////////////////////////////////////////////////////////////////////////////////////////////	

	// 로그인
	public Join login(Join dto) {
		Join result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			result = sqlSession.selectOne("login", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		sqlSession.close();
		
		return result;
	}
	
	// 로그아웃
	
	
	
	
}
