package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ProductVO;
import com.green.biz.dto.SalesQuantity;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ProductVO getProduct(ProductVO vo) {
		
		return mybatis.selectOne("mappings.product-mapping.getProduct", vo);
	}
	
	// 상품 목록 조회
	public List<ProductVO> listProduct(String name) {
			
		return mybatis.selectList("mappings.product-mapping.listbook", name);
	}
	
	// 상품 추가
	public void insertProduct(ProductVO vo) {
			
		mybatis.insert("mappings.product-mapping.insertProduct", vo);
	}
	
	// 상품정보 수정
	public void updateProduct(ProductVO vo) {
			
		mybatis.update("mappings.product-mapping.updateProduct", vo);
	}
	
	public void deleteProduct(ProductVO vo) {
		
		mybatis.delete("mappings.product-mapping.deleteProduct", vo);
	}
	
	// 책별 판매 실적 조회
	public List<SalesQuantity> getProductSales() {
			
		return mybatis.selectList("mappings.product-mapping.getProductSales");
	}
}
