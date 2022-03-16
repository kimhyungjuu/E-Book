package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.NoticeVO;

@Repository
public class NoticeDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public NoticeVO getNotice(int nseq) {
		
		return mybatis.selectOne("mappings.notice-mapping.getNotice", nseq);
	}
	
	public List<NoticeVO> listAllNotice() {
		
		return mybatis.selectList("mappings.notice-mapping.listAllNotice");
	}
	
	public void insertNotice(NoticeVO vo) {
		
		mybatis.insert("mappings.notice-mapping.insertNotice", vo);
	}
	
	public void updateNotice(NoticeVO vo) {
		
		mybatis.update("mappings.notice-mapping.updateNotice", vo);
	}
	
	public void deleteNotice(NoticeVO vo) {
		
		mybatis.delete("mappings.notice-mapping.deleteNotice", vo);
	}
}
