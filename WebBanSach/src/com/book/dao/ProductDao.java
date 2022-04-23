package com.book.dao;

import java.util.List;

import com.book.model.Product;

public interface ProductDao {
	void insert(Product product);

	void edit(Product product);

	void delete(int id);

	Product get(int id);

	List<Product> getAll();
	
	List<Product> get_N_Books_Random(int n);

	List<Product> get_N_Books_Random_ByCategory(int n, int id);

	List<Product> search(String username);
	
	List<Product> seachByCategory(int cate_id);
	
	List<Product> seachByName(String productName);
}
