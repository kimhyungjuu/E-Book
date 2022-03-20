package com.green.biz.wishlist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.CartDAO;
import com.green.biz.dao.WishlistDAO;
import com.green.biz.dto.CartVO;
import com.green.biz.dto.WishlistVO;
import com.green.biz.order.CartService;
import com.green.biz.wishlist.WishlistService;

@Service("WishlistService")
public class WishlistServiceImpl implements WishlistService {

	@Autowired
	private WishlistDAO wishlistDao;
	
	@Override
	public void insertWishlist(WishlistVO vo) {
		
		wishlistDao.insertWishlist(vo);
	}
	@Override
	public List<WishlistVO> listWishlist(String userid) {
		
		return wishlistDao.listWishlist(userid);
	}

	@Override
	public void deleteWishlist(int wseq) {
		
		wishlistDao.deleteWishlist(wseq);
		
	}

	@Override
	public void updateWishlist(int wseq) {
		
		wishlistDao.updateWishlist(wseq);
		
	}

}