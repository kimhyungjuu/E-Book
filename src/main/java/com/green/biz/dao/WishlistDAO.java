package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.WishlistVO;

@Repository
public class WishlistDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 장바구니 담기
	public void insertWishlist(WishlistVO vo) {
		
		mybatis.insert("mappings.wishlist-mapping.insertWishlist", vo);
	}
	
	// 장바구니 목록
	public List<WishlistVO> listWishlist(String userid) {
		
		return mybatis.selectList("mappings.wishlist-mapping.listWishlist", userid);
	}
	
	// 장바구니 항목 삭제
	public void deleteWishlist(int wseq) {
		
		mybatis.delete("mappings.wishlist-mapping.deleteWishlist", wseq);
	}
	
	// 장바구니 항목을 '처리'로 업데이트
	public void updateWishlist(int wseq) {
		
		mybatis.update("mappings.wishist-mapping.updateWishlist", wseq);
	}
}
