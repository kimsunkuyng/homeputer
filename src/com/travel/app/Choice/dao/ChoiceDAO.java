package com.travel.app.Choice.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.travel.mybatis.SqlMapConfig;

public class ChoiceDAO {
	// choice select
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public ChoiceDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public List<ChoiceDTO> getChoice(String user_index) {
		System.out.println(user_index);
		List<ChoiceDTO> choiceList = sqlsession.selectList("Choice.getChoice" , user_index);
		System.out.println("choiceDAO"+choiceList);	
		return choiceList;
	}

	public void addChoice(String user_index , String informationid) {
		HashMap<String, String> datas = new HashMap<String, String>();
		datas.put("user_index", user_index);
		datas.put("informationid", informationid);
		sqlsession.insert("Choice.addChoice" , datas);
	}
//	public boolean addChoice(String user_index , String informationid) {
//		boolean result = false;
//		if(sqlsession.insert("Choice.addChoice" , user_index) == 1) {
////			System.out.print("addChoice_Succeed!");
//			result = true;
//		}else {
////			System.out.print("addChoice_Fail..");
//		}
//		return result;
//	}
	public boolean deleteChoice(String choiceid){
		boolean result = false;
		if(sqlsession.delete("Choice.deleteChoice",choiceid)==1) {
			System.out.print("deleteChoice_Succeed!");
			result = true;
		} else {
			System.out.print("deleteChoice_Fail..");
		}
		return result;
	}
}
