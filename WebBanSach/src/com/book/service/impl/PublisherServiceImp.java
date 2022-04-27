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
		imp.insert(publisher);
	}

	@Override
	public void edit(Publisher publisher) {
		// TODO Auto-generated method stub
		Publisher oldPublisher = getPublisher(publisher.getPublisher_id());
		if(oldPublisher !=null) {
			oldPublisher.setPublisher_name(publisher.getPublisher_name());
			imp.edit(oldPublisher);
		}
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Publisher pls = getPublisher(id);
		if(pls != null) {
			imp.delete(pls.getPublisher_id());
		}
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
