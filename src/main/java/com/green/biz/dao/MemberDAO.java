package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	
	// 회원 목록 조회
	public List<MemberVO> listMember(String name) {
		
		return mybatis.selectList("mappings.member-mapping.listMember", name);
	}
}








