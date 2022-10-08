package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BoardDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public ArrayList<BoardDTO> selectAll(){
		ArrayList<BoardDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.BoardDAO.selectAll");
		
		sqlSession.close();
		
		return list;
	}
	
	public int insert(BoardDTO dto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.insert("com.smhrd.model.BoardDAO.insert", dto);
		sqlSession.close(); 
		return result;
	}
	
	public BoardDTO selectOne(String Board_num) {
		BoardDTO result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.selectOne("com.smhrd.model.BoardDAO.selectOne", Board_num);
		
		sqlSession.close();
		 
		 return result;
	}
	
	public int update(BoardDTO dto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.update("com.smhrd.model.BoardDAO.update", dto);
		sqlSession.close();
		return result;
		
	}
	
	public int delete(String board_num) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.delete("com.smhrd.model.BoardDAO.delete", board_num);
		
		sqlSession.close();
		 return result;
	}
	
}
