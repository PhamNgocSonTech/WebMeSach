package com.book.dao;

import java.util.List;

import com.book.model.Cart;
import com.book.model.Publisher;

public interface PublisherDao {
	
	void insert(Publisher publisher);

	void edit(Publisher publisher);

	void delete(int id);

	List<Publisher> getAll();
	
	Publisher getPublisher(int id);
	
}
