package com.daotest.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daotest.dao.Dao;

@Service
public class Daoservice {

	// dao
	@Autowired
	Dao dao;

	// 요청 GET : daotest.do, 폼 : daotest.jsp
	public void insert(Map<String, String> d) {
		dao.insert(d);
	}

	// 요청 POST / daotest.do, 인서트 : daolist.jsp
	public ArrayList<HashMap<String, String>> select() {
		return dao.select();
	}

}