package com.sbs.khr.todo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.khr.todo.dao.ArticleDao;
import com.sbs.khr.todo.dto.Article;
import com.sbs.khr.todo.util.Util;

@Service
public class ArticleService {
	
	@Autowired
	private ArticleDao articleDao;

	public int write(Map<String, Object> param) {
		
		articleDao.write(param);
		
		int id = Util.getAsInt(param.get("id"));
		
		
		return id;
	}

	public List<Article> getForPrintArticles() {
		
		return articleDao.getForPrintArticles();
	}
	
	
}
