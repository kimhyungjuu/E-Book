package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.OrderVO;

@Repository
public class OrderDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<OrderVO> listOrder(String key) {
		
		return mybatis.selectList("mappings.order-mapping.listOrder", key);
	}
	
	public void updateOrderResult(int odseq) {
		
		mybatis.update("mappings.order-mapping.updateOrderResult", odseq);
	}
	
}







