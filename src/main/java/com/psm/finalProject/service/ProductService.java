package com.psm.finalProject.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.psm.finalProject.domain.ProductDTO;
import com.psm.finalProject.domain.ReviewDTO;
import com.psm.finalProject.repository.ProductDAO;
import com.psm.finalProject.util.PagingVO;

@Service
public class ProductService {

	@Autowired
	private ProductDAO productDao;
	
	//상품 검색
	public int getProductSearch(String sentence) throws Exception {
		return productDao.getProductSearch(sentence);
	}
	
	//상품 검색 결과 
	public List<ProductDTO> getProductSearchitem(String sentence) throws Exception {
		return productDao.getProductSearchitem(sentence);
	}
	
	// 상품목록
	public List<ProductDTO> productList(String sort) {
		return productDao.productList(sort);
	}
	// 상품상세
	public ProductDTO productDetail(int productNo) {
		return productDao.productDetail(productNo);
	}

	public ReviewDTO reviewCal(int productNo) {
		return productDao.reviewCal(productNo);
	}

	public List<ReviewDTO> getReview(int productNo) {
		return productDao.getReview(productNo);
	}

	public List<ProductDTO> getWeather(String weather) {
		return productDao.getWeather(weather);
	}
	
	// ADMIN
	public int countByCategory(String category) {
		return productDao.countByCategory(category);
	}
	public void insert(ProductDTO product) {
		productDao.insert(product);
	}
	public int countNumber() {
		return productDao.countMember();
	}
	public List<ProductDTO> getFullInfo(PagingVO vo) {
		return productDao.getFullInfo(vo);
	}
	public void modifyStock(Map<String, Integer> map) {
		productDao.modifyStock(map);
	}
	public void modify(ProductDTO product) {
		productDao.modify(product);
	}
	public void delete(int productNo) {
		productDao.delete(productNo);
	}
	public ProductDTO getToday() {
		return productDao.getToday();
	}
	public Date getDate() {
		return productDao.getDate();
	}
	public int todayProNo() {
		return productDao.todayProNo();
	}

}
