package com.book.service;

import java.util.List;

import com.book.model.Publisher;

public interface PublisherService {
	
	void insert(Publisher publisher);

	void edit(Publisher publisher);

	void delete(int id);

	List<Publisher> getAll();
	
	Publisher getPublisher(int id);

}
