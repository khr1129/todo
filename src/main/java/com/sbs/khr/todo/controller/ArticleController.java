package com.sbs.khr.todo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sbs.khr.todo.dto.Article;
import com.sbs.khr.todo.service.ArticleService;

@Controller
public class ArticleController {
	
	@Autowired
	private ArticleService articleService;

	@RequestMapping("/usr/article/write")
	public String showWrite() {
		return "usr/article/write";
		
	}
	
	@RequestMapping("/usr/article/doWrite")
	public String doWrite(@RequestParam Map<String, Object> param, Model model) {
		
		int newWordId = articleService.write(param);
		
		model.addAttribute("msg", String.format("%d번 단어를 저장했습니다", newWordId));
		model.addAttribute("replaceUri", "../home/main");
		
		
		return "common/redirect";
	}
	
	
	@RequestMapping("/usr/article/list")
	public String showList(Model model) {
		
		
		List<Article> articles = articleService.getForPrintArticles();
		
		System.out.println("articles 는? : " + articles);
		
		model.addAttribute("articles", articles);
		
		
		return "usr/article/list";
	}
	
	
	
	
	
	
}
