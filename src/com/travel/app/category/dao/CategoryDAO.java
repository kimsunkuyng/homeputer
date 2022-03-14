package com.travel.app.category.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.travel.mybatis.SqlMapConfig;

public class CategoryDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public CategoryDAO() {
		sqlsession = factory.openSession(true);
	}

	public List<CategoryDTO> getCategoryList1() {
		List<CategoryDTO> caList = sqlsession.selectList("Category.getCategoryList1");
		return caList;
	}

	public List<CategoryDTO> getCategoryList2() {
		List<CategoryDTO> caList = sqlsession.selectList("Category.getCategoryList2");
		return caList;
	}
	
	public List<CategoryDTO> getCategoryList3() {
		List<CategoryDTO> caList = sqlsession.selectList("Category.getCategoryList3");
		return caList;
	}
	
	
	
}
