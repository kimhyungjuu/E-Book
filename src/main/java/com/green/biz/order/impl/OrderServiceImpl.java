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
	 * �ֹ� ���� �� �ֹ���ȣ�� ��ȯ�Ѵ�.
	 */
	@Override
	public int insertOrder(OrderVO vo) {
		// (1) �ֹ���ȣ�� �Ҵ� �޴´�.
		int oseq = selectMaxOseq();
		
		// (2) ��� �ֹ���ȣ�� ����� �ֹ�� ��
		vo.setOseq(oseq);
		oDao.insertOrder(vo);
		
		// (3) ��ٱ��� ���� �о �ֹ� �� ����� ����
		// (3-1) ��ٱ��� ���� �о�´�.
		List<CartVO> cartList = cartService.listCart(vo.getId());
		
		// (3-2) ��ٱ��� ����� �ֹ� �� ���̺� ����
		for (CartVO cartVO : cartList) {
			OrderVO order = new OrderVO();
			order.setOseq(oseq);
			order.setBseq(cartVO.getBseq());		// ��ٱ����� ��ǰ��ȣ
			
			insertOrderDetail(order);
			
			// ��ٱ��� ���̺� ����Ʈ(ó����� 'ó���Ϸ�'��)
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

	@Override
	public List<OrderVO> listOrder(String key) {

		return oDao.listOrder(key);
	}

	@Override
	public void updateOrderResult(int odseq) {
		
		oDao.updateOrderResult(odseq);
	}

}
