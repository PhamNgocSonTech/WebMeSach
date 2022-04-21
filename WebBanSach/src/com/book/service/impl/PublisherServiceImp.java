package com.book.service.impl;

import java.util.List;

import com.book.dao.PublisherDao;
import com.book.dao.impl.PublisherDaoImp;
import com.book.model.Publisher;
import com.book.service.PublisherService;

public class PublisherServiceImp implements PublisherService{
	PublisherDaoImp imp = new PublisherDaoImp();

	@Override
	public void insert(Publisher publisher) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void edit(Publisher publisher) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Publisher> getAll() {
		// TODO Auto-generated method stub
		return imp.getAll();
	}

	@Override
	public Publisher getPublisher(int id) {
		// TODO Auto-generated method stub
		return imp.getPublisher(id);
	}

}
