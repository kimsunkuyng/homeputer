package com.travel.category.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.travel.mybatis.SqlMapConfig;

public class CategoryDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
//	public CategoryDAO() {
//		sqlsession = factory.openSession(true);
//	}
	
	public CategoryDAO() {
		sqlsession = factory.openSession(true);
	}

	public List<CategoryDTO> getCategoryList() {
		List<CategoryDTO> caList = sqlsession.selectList("Category.getCategoryList");
		return caList;
	}
	
	
	
}
