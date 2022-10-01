package com.smhrd.model;

import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class JoinDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	// board 테이블에 들어있는 모든 정보 조회
	public ArrayList<Board> selectAll(){
		ArrayList<Board> list = null;
		// 1. sqlsession 만들기 ---> 매개변수로 true를 집어넣으면 auto commit 가능!
		//    psmt와 같은 역할 수행
		SqlSession sqlSession = sqlSessionFactory.openSession(true);		
		
		// 2. mapper.xml 파일 안에 있는 기능 수행
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.DAO.selectAll");
		
		// 3. 결과값 반환
		return list;
	}

	public int insert(Board board) {
		int result = 0;
		// 1. sqlsession 가져오기
		SqlSession sqlSession = sqlSessionFactory.openSession(true);		
		
		// 2. sql구문 실행
		result =sqlSession.insert("insert", board);
		
		return result;
	}

	public Board selectOne(String board_num) {
		
		Board result = null;
		// 1. sqlsession 열어주기
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 2. mapper.xml안에 있는 쿼리문 실행
		// sqlSession.메소드(mapper.xml안에 있는 쿼리문 id값, mapper.xml로 넘겨주고 싶은 값);
		result = sqlSession.selectOne("com.smhrd.model.DAO.select", board_num);
		// 3. 결과값 반환
		return result;
	}
	
	public int update(Board board) {
		int result = 0;
		
		// 1. SqlSession 빌려오기
		// true --> auto commit
		SqlSession sqlSession = sqlSessionFactory.openSession(true);		
		
		// 2. SQL문 골라서 실행시키기
		result = sqlSession.update("com.smhrd.model.DAO.update", board);
		
		// 3. 빌린 Connection 돌려주기
		sqlSession.close();
		
		// 4. 실행결과 리턴
		return result;
		
	}
	
	public int delete(String board_num) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int result = sqlSession.delete("delete", board_num);
		sqlSession.close();
		
		return result;
		
	}
	
	
}
