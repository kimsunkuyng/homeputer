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

	public List<CategoryDTO> getPlaceList(String locationid) {
		List<CategoryDTO> caList = sqlsession.selectList("Category.getPlaceList" ,locationid);
		return caList;
	}

	public List<CategoryDTO> getFestivalList(String locationid) {
		List<CategoryDTO> caList = sqlsession.selectList("Category.getFestivalList" ,locationid);
		return caList;
	}
	
	public List<CategoryDTO> getRestaurantList(String locationid) {
		List<CategoryDTO> caList = sqlsession.selectList("Category.getRestaurantList" ,locationid);
		return caList;
	}
	
	
	
}
