package com.sbs.khr.todo.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.khr.todo.dao.MemberDao;
import com.sbs.khr.todo.dto.Member;
import com.sbs.khr.todo.util.Util;

@Service
public class MemberService {

	@Autowired
	private MemberDao memberDao;

	public int join(Map<String, Object> param) {
		memberDao.join(param);
		
		int id = Util.getAsInt(param.get("id"));
		
		return id;
	}

	public Member getMemberById(int id) {
		return memberDao.getMemberById(id);
	}
	
}
