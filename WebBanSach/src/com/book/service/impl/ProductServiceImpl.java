package com.book.service.impl;

import java.io.File;
import java.util.List;

import com.book.dao.ProductDao;
import com.book.dao.UserDao;
import com.book.dao.impl.ProductDaoImpl;
import com.book.dao.impl.UserDaoImpl;
import com.book.model.Product;
import com.book.model.User;
import com.book.service.ProductService;
import com.book.service.UserService;

public class ProductServiceImpl implements ProductService {
	ProductDao productDao = new ProductDaoImpl();

	@Override
	public void insert(Product product) {
		productDao.insert(product);

	}

	@Override
	public void edit(Product newProduct) {
		Product oldProduct = productDao.get(newProduct.getId());

//		oldProduct.setName(newProduct.getName());
//		oldProduct.setPrice(newProduct.getPrice());
//		oldProduct.setCategory(newProduct.getCategory());
		
		if (!newProduct.getImage().equals(oldProduct.getImage())) {
			// XOA ANH CU DI
			String fileName = oldProduct.getImage();
			final String dir = "D://GitHub//WebMeSach//WebBanSach//WebContent//view//client//static//img/book-img";
			File file = new File(dir + "/" + fileName);
			if (file.exists()) {
				file.delete();
			}
		}

		productDao.edit(newProduct);

	}

	@Override
	public void delete(int id) {
		Product oldProduct = productDao.get(id);

//		oldProduct.setName(newProduct.getName());
//		oldProduct.setPrice(newProduct.getPrice());
//		oldProduct.setCategory(newProduct.getCategory());
		
			// XOA ANH CU DI
			String fileName = oldProduct.getImage();
			final String dir = "D://GitHub//WebMeSach//WebBanSach//WebContent//view//client//static//img/book-img";
			File file = new File(dir + "/" + fileName);
			if (file.exists()) {
				file.delete();
			}
		

		productDao.delete(id);

	}

	@Override
	public Product get(int id) {
		return productDao.get(id);
	}

	@Override
	public List<Product> getAll() {
		return productDao.getAll();
	}

	@Override
	public List<Product> search(String product) {
		return productDao.search(product);
	}

	@Override
	public List<Product> seachByCategory(int cate_id) {
		return productDao.seachByCategory(cate_id);
	}

	@Override
	public List<Product> seachByName(String productName) {
		return productDao.seachByName(productName);
	}

}
