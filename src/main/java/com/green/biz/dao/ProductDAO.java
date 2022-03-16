package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ProductVO;
import com.green.biz.dto.SalesQuantity;

import utils.Criteria;

@Repository		// 스프링 객체로 등록
public class ProductDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<ProductVO> getNewProductList() {
		
		return mybatis.selectList("mappings.product-mapping.getNewProductList");
	}
	
	public List<ProductVO> getBestProductList() {
		
		return mybatis.selectList("mappings.product-mapping.getBestProductList");
	}
	
	public List<ProductVO> getFreeProductList() {
		
		return mybatis.selectList("mappings.product-mapping.getFreeProductList");
	}
	
	public ProductVO getProduct(ProductVO vo) {
		
		return mybatis.selectOne("mappings.product-mapping.getProduct", vo);
	}
	
	public List<ProductVO> getProductListByKind(ProductVO vo) {
		
		return mybatis.selectList("mappings.product-mapping.getProductListByKind", vo);
	}
	
	// 전체 상품의 갯수 조회
	public int countProductList(String title) {
		
		return mybatis.selectOne("mappings.product-mapping.countProductList", title);
	}
	
	// 상품 목록 조회
	public List<ProductVO> listProduct(String title) {
		
		return mybatis.selectList("mappings.product-mapping.listProduct", title);
	}
	
	// 페이지별 상품목록 조회
	public List<ProductVO> getListWithPaging(Criteria criteria, String title) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("criteria", criteria);
		map.put("title", title);
		
		return mybatis.selectList("mappings.product-mapping.listWithPaging", map);
	}
	
	/*
	 * // 상품 목록 조회 public List<ProductVO> listProduct(String name) {
	 * 
	 * return mybatis.selectList("mappings.product-mapping.listbook", name); }
	 */
	
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











