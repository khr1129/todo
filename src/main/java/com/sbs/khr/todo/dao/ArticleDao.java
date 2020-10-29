package com.sbs.khr.todo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.sbs.khr.todo.dto.Article;

@Mapper
public interface ArticleDao {

	void write(Map<String, Object> param);

	List<Article> getForPrintArticles();
	
}
