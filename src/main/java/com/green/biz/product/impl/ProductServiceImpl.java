package com.green.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.ProductDAO;
import com.green.biz.dto.ProductVO;
import com.green.biz.dto.SalesQuantity;
import com.green.biz.product.ProductService;

import utils.Criteria;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO pDao;
	
	@Override
	public List<ProductVO> getNewProductList() {
		
		return pDao.getNewProductList();
	}

	@Override
	public List<ProductVO> getBestProductList() {
		
		return pDao.getBestProductList();
	}
	
	@Override
	public List<ProductVO> getFreeProductList() {

		return pDao.getFreeProductList();
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		
		return pDao.getProduct(vo);
	}

	@Override
	public List<ProductVO> getProductListByKind(ProductVO vo) {
		
		return pDao.getProductListByKind(vo);
	}

	@Override
	public int countProductList(String title) {
		
		return pDao.countProductList(title);
	}

	@Override
	public List<ProductVO> listProduct(String title) {
		
		return pDao.listProduct(title);
	}

	@Override
	public List<ProductVO> getListWithPaging(Criteria criteria, String title) {
		
		return pDao.getListWithPaging(criteria, title);
	}

	/*
	 * @Override public List<ProductVO> listProduct(String name) { return
	 * pDao.listProduct(name); }
	 */

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

	@Override
	public List<ProductVO> getListWithPaging2(Criteria criteria, String title) {
		return pDao.getListWithPaging(criteria, title);
	}

}
