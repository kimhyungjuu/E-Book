package com.green.biz.member;

import java.util.List;


import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;

public interface MemberService {

	// È¸¿ø »ó¼¼Á¤º¸ Á¶È¸
	MemberVO getMember(String id);

	// È¸¿ø Á¸Àç¿©ºÎ È®ÀÎ
	/*
	 *  ¸®ÅÏ °ª : 
	 *  		È¸¿øÀÌ Á¸ÀçÇÏ¸é : 1
	 *  		Á¸ÀçÇÏÁö ¾ÊÀ¸¸é : -1
	 */
	int confirmID(String id);
	
	// »ç¿ëÀÚ ÀÎÁõ
	public int loginID(MemberVO vo);

	// È¸¿ø µî·Ï
	void insertMember(MemberVO vo);
	
	// µ¿ÀÌ¸§À¸·Î ÁÖ¼Ò Ã£±â
	public List<AddressVO> selectAddressByDong(String dong);
	
	public List<MemberVO> listMember(String name);




	// È¸¿ø ¸ñ·Ï Á¶È¸
	public List<MemberVO> listMember(String name);
}

