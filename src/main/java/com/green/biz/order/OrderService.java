package com.green.biz.order;

import java.util.List;

import com.green.biz.dto.OrderVO;

public interface OrderService {
	public List<OrderVO> listOrder(String key);
	
	public void updateOrderResult(int odseq) ;
}
