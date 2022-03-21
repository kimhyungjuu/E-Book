package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public MemberVO getMember(String id) {
		
		return mybatis.selectOne("mappings.member-mapping.getMember", id);
	}
	
	public int confirmID(String id) {
		
		String pwd = mybatis.selectOne("mappings.member-mapping.confirmID", id);
		
		if(pwd != null)
			return 1;
		else 
			return -1;
	}
	
	public int loginID(MemberVO vo) { 
		int result = -1;	
		String pwd_in_db = mybatis.selectOne("mappings.member-mapping.confirmID", vo.getId());
		
		if (pwd_in_db == null) {
			result = -1;
		} else if(vo.getPwd().equals(pwd_in_db)) {	
			result = 1;
		} else {
			result = 0;
		}
		return result;
	}
	

	public void insertMember(MemberVO vo) {
		
		mybatis.insert("mappings.member-mapping.insertMember", vo);
	}
	

	public List<AddressVO> selectAddressByDong(String dong) {
		
		return mybatis.selectList("mappings.member-mapping.selectAddressByDong", dong);
	}

	public List<MemberVO> listMember(String name) {
		
		return mybatis.selectList("mappings.member-mapping.listMember", name);
	}
}
