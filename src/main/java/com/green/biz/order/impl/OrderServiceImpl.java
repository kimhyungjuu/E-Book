package com.green.biz.order.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.OrderDAO;
import com.green.biz.dto.OrderVO;
import com.green.biz.order.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO oDao;

	@Override
	public List<OrderVO> listOrder(String key) {
		return oDao.listOrder(key);
	}

	@Override
	public void updateOrderResult(int odseq) {
		oDao.updateOrderResult(odseq);
	}
	
	
}
