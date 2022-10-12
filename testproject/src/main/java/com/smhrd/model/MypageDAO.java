package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MypageDAO {
	
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public ArrayList<MypageDTO> MypageSelectAll(String mypage_id){
		ArrayList<MypageDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.MypageDAO.MypageSelectAll",mypage_id);
		
		sqlSession.close();
		
		return list;
	}

	public int delete(String mYPAGE_SEQ) {
		
SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int result = 0;
		result = sqlSession.delete("com.smhrd.model.MypageDAO.Mydelete",mYPAGE_SEQ);
		
		sqlSession.close();
		

		return 0;
	}

	
	
}
