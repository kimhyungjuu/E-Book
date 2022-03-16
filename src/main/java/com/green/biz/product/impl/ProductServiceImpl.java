package com.green.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.ProductDAO;
import com.green.biz.dto.ProductVO;
import com.green.biz.dto.SalesQuantity;
import com.green.biz.product.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO pDao;

	@Override
	public List<ProductVO> listProduct(String name) {
		return pDao.listProduct(name);
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		return pDao.getProduct(vo);
	}

	@Override
	public void insertProduct(ProductVO vo) {
		pDao.insertProduct(vo);		
	}

	@Override
	public void updateProduct(ProductVO vo) {
		pDao.updateProduct(vo);
		
	}

	@Override
	public void deleteProduct(ProductVO vo) {
		pDao.deleteProduct(vo);
	}

	@Override
	public List<SalesQuantity> getProductSales() {
		return pDao.getProductSales();
	}

}
