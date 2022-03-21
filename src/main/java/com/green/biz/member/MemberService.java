package com.green.biz.member;

import java.util.List;


import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;

public interface MemberService {

	MemberVO getMember(String id);

	int confirmID(String id);
		
	public int loginID(MemberVO vo);

	void insertMember(MemberVO vo);
	
	public List<AddressVO> selectAddressByDong(String dong);
	

	public List<MemberVO> listMember(String name);

}

