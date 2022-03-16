package com.green.biz.member;

import java.util.List;

import com.green.biz.dto.MemberVO;

public interface MemberService {
	// 회원 목록 조회
	public List<MemberVO> listMember(String name);
}
