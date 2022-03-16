package com.green.biz.product;

import java.util.List;

import com.green.biz.dto.ProductVO;

import utils.Criteria;

public interface ProductService {

	List<ProductVO> getNewProductList();

	List<ProductVO> getBestProductList();

	List<ProductVO> getFreeProductList();
	
	ProductVO getProduct(ProductVO vo);

	List<ProductVO> getProductListByKind(ProductVO vo);

	// 전체 상품의 갯수 조회
	int countProductList(String title);

	// 상품 목록 조회
	List<ProductVO> listProduct(String title);

	// 페이지별 상품목록 조회
	List<ProductVO> getListWithPaging(Criteria criteria, String title);

}