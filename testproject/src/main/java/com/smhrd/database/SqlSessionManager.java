package com.smhrd.database;

import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.TransactionIsolationLevel;

public class SqlSessionManager {

	static SqlSessionFactory sqlSessionFactory;
	// 객체 vs 인스턴스
	// 객체 ---> 클래스 하나당 여러개를 생성할 수 있음
	// 인스턴스 ---> 클래스 하나에 인스턴스 하나
	// 인스턴스 생성자
	static {
		// mybatis-config.xml파일을 가져다가
		// sqlsession을 만들 수 있게끔 코드 작성
		String resource = "com/smhrd/database/mybatis-config.xml";
		Reader reader;
		try {
			reader = Resources.getResourceAsReader(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

}
