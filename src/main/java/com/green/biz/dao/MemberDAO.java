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
	
	// 회원 상세정보 조회
	public MemberVO getMember(String id) {
		
		return mybatis.selectOne("mappings.member-mapping.getMember", id);
	}
	
	// 회원 존재여부 확인
	/*
	 *  리턴 값 : 
	 *  		회원이 존재하면 : 1
	 *  		존재하지 않으면 : -1
	 */
	public int confirmID(String id) {
		
		String pwd = mybatis.selectOne("mappings.member-mapping.confirmID", id);
		
		if(pwd != null)
			return 1;
		else 
			return -1;
	}
	
	/*
	 *  회원 인증
	 *  
	 *  id가 존재하지 않을경우 : -1 반환
	 *  pwd가 틀릴 경우 : 0 반환
	 *  id, pwd가 일치할 경우 : 1 반환
	 */
	public int loginID(MemberVO vo) { 
		int result = -1;	// 조회 결과
		
		String pwd_in_db = mybatis.selectOne("mappings.member-mapping.confirmID", vo.getId());
		
		if (pwd_in_db == null) {
			result = -1;
		} else if(vo.getPwd().equals(pwd_in_db)) {	// 입력한 pwd와 테이블 상의 pwd가 일치함
			result = 1;
		} else {
			result = 0;
		}
		return result;
	}
	
	// 회원 등록
	public void insertMember(MemberVO vo) {
		
		mybatis.insert("mappings.member-mapping.insertMember", vo);
	}
	
	// 동 이름으로 주소 찾기
	public List<AddressVO> selectAddressByDong(String dong) {
		
		return mybatis.selectList("mappings.member-mapping.selectAddressByDong", dong);
	}

	// 회원 목록 조회
	public List<MemberVO> listMember(String name) {
		
		return mybatis.selectList("mappings.member-mapping.listMember", name);
	}
}

