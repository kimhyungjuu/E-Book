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
	

	// È¸¿ø »ó¼¼Á¤º¸ Á¶È¸
	public MemberVO getMember(String id) {
		
		return mybatis.selectOne("mappings.member-mapping.getMember", id);
	}
	
	// È¸¿ø Á¸Àç¿©ºÎ È®ÀÎ
	/*
	 *  ¸®ÅÏ °ª : 
	 *  		È¸¿øÀÌ Á¸ÀçÇÏ¸é : 1
	 *  		Á¸ÀçÇÏÁö ¾ÊÀ¸¸é : -1
	 */
	public int confirmID(String id) {
		
		String pwd = mybatis.selectOne("mappings.member-mapping.confirmID", id);
		
		if(pwd != null)
			return 1;
		else 
			return -1;
	}
	
	/*
	 *  È¸¿ø ÀÎÁõ
	 *  
	 *  id°¡ Á¸ÀçÇÏÁö ¾ÊÀ»°æ¿ì : -1 ¹ÝÈ¯
	 *  pwd°¡ Æ²¸± °æ¿ì : 0 ¹ÝÈ¯
	 *  id, pwd°¡ ÀÏÄ¡ÇÒ °æ¿ì : 1 ¹ÝÈ¯
	 */
	public int loginID(MemberVO vo) { 
		int result = -1;	// Á¶È¸ °á°ú
		
		String pwd_in_db = mybatis.selectOne("mappings.member-mapping.confirmID", vo.getId());
		
		if (pwd_in_db == null) {
			result = -1;
		} else if(vo.getPwd().equals(pwd_in_db)) {	// ÀÔ·ÂÇÑ pwd¿Í Å×ÀÌºí »óÀÇ pwd°¡ ÀÏÄ¡ÇÔ
			result = 1;
		} else {
			result = 0;
		}
		return result;
	}
	
	// È¸¿ø µî·Ï
	public void insertMember(MemberVO vo) {
		
		mybatis.insert("mappings.member-mapping.insertMember", vo);
	}
	
	// µ¿ ÀÌ¸§À¸·Î ÁÖ¼Ò Ã£±â
	public List<AddressVO> selectAddressByDong(String dong) {
		
		return mybatis.selectList("mappings.member-mapping.selectAddressByDong", dong);
	}
	// È¸¿ø ¸ñ·Ï Á¶È¸
	public List<MemberVO> listMember(String name) {
		
		return mybatis.selectList("mappings.member-mapping.listMember", name);
	}
}
