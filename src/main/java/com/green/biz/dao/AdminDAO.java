package com.green.biz.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ManagerVO;

@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public String managerCheck(String id) {
		
		return mybatis.selectOne("mappings.admin-mapping.managerCheck", id);
	}
	
	public ManagerVO getManager(String id) {
		
		return mybatis.selectOne("mappings.admin-mapping.getManager", id);
	}
}
