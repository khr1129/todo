<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="title" value="작성" />
<%@ include file="../../part/head.jspf" %>



<form action="doWrite" class="form con margin-top-100" method="POST">
	<div class="form-control-box ">
		<div >단어 또는 문장</div>
		<input type="text"  name="word" placeholder="단어 또는 문장을 입력해주세요."/>
	</div>
	<div class="form-control-box">
		<div >의미</div>
		<textarea name="mean"  placeholder="의미를 입력해주세요."></textarea>
	</div>
	<div class="btn-box">
		<button type="submit">저장</button>
	</div>
</form>













<%@ include file="../..//part/foot.jspf" %>