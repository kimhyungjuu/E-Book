package com.green.biz.member;

import java.util.List;


import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;

public interface MemberService {

	// 횊쨍쩔첩 쨩처쩌쩌횁짚쨘쨍 횁쨋횊쨍
	MemberVO getMember(String id);

	// 횊쨍쩔첩 횁쨍�챌쩔짤쨘횓 횊짰�횓
	/*
	 *  쨍짰횇횕 째짧 : 
	 *  		횊쨍쩔첩�횑 횁쨍�챌횉횕쨍챕 : 1
	 *  		횁쨍�챌횉횕횁철 쩐횎�쨍쨍챕 : -1
	 */
	int confirmID(String id);
	
	// 쨩챌쩔챘�횣 �횓횁천
	public int loginID(MemberVO vo);

	// 횊쨍쩔첩 쨉챤쨌횕
	void insertMember(MemberVO vo);
	
	// 쨉쩔�횑쨍짠�쨍쨌횓 횁횜쩌횘 횄짙짹창
	public List<AddressVO> selectAddressByDong(String dong);
	
	
	public List<MemberVO> listMember(String name);
}

