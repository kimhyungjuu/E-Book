package com.green.biz.product;

import java.util.List;

import com.green.biz.dto.ProductVO;
import com.green.biz.dto.SalesQuantity;

public interface ProductService {
	public List<ProductVO> listProduct(String name);
	
	public ProductVO getProduct(ProductVO vo);
	
	public void insertProduct(ProductVO vo);
	
	public void updateProduct(ProductVO vo);
	
	public void deleteProduct(ProductVO vo);
	
	public List<SalesQuantity> getProductSales();
}
