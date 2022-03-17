package com.green.biz.order.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.OrderDAO;
import com.green.biz.dto.CartVO;
import com.green.biz.dto.OrderVO;
import com.green.biz.order.CartService;
import com.green.biz.order.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO oDao;
	@Autowired
	private CartService cartService;
	
	@Override
	public int selectMaxOseq() {
		
		return oDao.selectMaxOseq();
	}

	/*
	 * 占쌍뱄옙 占쏙옙占쏙옙 占쏙옙 占쌍뱄옙占쏙옙호占쏙옙 占쏙옙환占싼댐옙.
	 */
	@Override
	public int insertOrder(OrderVO vo) {
		// (1) 占쌍뱄옙占쏙옙호占쏙옙 占쌀댐옙 占쌨는댐옙.
		int oseq = selectMaxOseq();
		
		// (2) 占쏙옙占� 占쌍뱄옙占쏙옙호占쏙옙 占쏙옙占쏙옙占� 占쌍뱄옙占� 占쏙옙
		vo.setOseq(oseq);
		oDao.insertOrder(vo);
		
		// (3) 占쏙옙袂占쏙옙占� 占쏙옙占쏙옙 占싻어서 占쌍뱄옙 占쏙옙 占쏙옙占쏙옙占� 占쏙옙占쏙옙
		// (3-1) 占쏙옙袂占쏙옙占� 占쏙옙占쏙옙 占싻억옙쨈占�.
		List<CartVO> cartList = cartService.listCart(vo.getId());
		
		// (3-2) 占쏙옙袂占쏙옙占� 占쏙옙占쏙옙占� 占쌍뱄옙 占쏙옙 占쏙옙占싱븝옙 占쏙옙占쏙옙
		for (CartVO cartVO : cartList) {
			OrderVO order = new OrderVO();
			order.setOseq(oseq);
			order.setBseq(cartVO.getBseq());		// 占쏙옙袂占쏙옙占쏙옙占� 占쏙옙품占쏙옙호
			
			insertOrderDetail(order);
			
			// 占쏙옙袂占쏙옙占� 占쏙옙占싱븝옙 占쏙옙占쏙옙트(처占쏙옙占쏙옙占� '처占쏙옙占싹뤄옙'占쏙옙)
			cartService.updateCart(cartVO.getCseq());
		}
		
		return oseq;
		
	}

	@Override
	public void insertOrderDetail(OrderVO vo) {
		
		oDao.insertOrderDetail(vo);
		
	}

	@Override
	public List<OrderVO> listOrderById(OrderVO vo) {
		
		return oDao.listOrderById(vo);
	}

	@Override
	public List<Integer> selectSeqOrdering(OrderVO vo) {
		
		return oDao.selectSeqOrdering(vo);
	}



	@Override
	public List<OrderVO> listOrder(String key) {
    
		return oDao.listOrder(key);
	}

	@Override
	public void updateOrderResult(int odseq) {
		
		oDao.updateOrderResult(odseq);
	}

}
