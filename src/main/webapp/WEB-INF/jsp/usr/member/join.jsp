<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="title" value="회원가입" />
<%@ include file="../../part/head.jspf" %>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>


<form action="doJoin" class="form con margin-top-100" method="POST">
	<div class="form-control-box ">
		<div >로그인 아이디</div>
		<input type="text"  name="loginId" placeholder="로그인 아이디를 입력해주세요."/>
	</div>
	<div class="form-control-box">
		<div >로그인 비밀번호</div>
		<input type="password"  name="loginPw" placeholder="비밀번호를 입력해주세요."/>
	</div>
	<div class="form-control-box">
		<div >비밀번호 확인</div>
		<input type="password"  name="loginPwConfirm" placeholder="비밀번호 확인을 입력해주세요."/>
	</div>
	<div class="form-control-box">
		<div >이름</div>
		<input type="text"  name="name" placeholder="이름을 입력해주세요."/>
	</div>
	<div class="form-control-box">
		<div >닉네임</div>
		<input type="text"  name="nickname" placeholder="닉네임을 입력해주세요."/>
	</div>
	<div class="form-control-box">
		<div >이메일</div>
		<input type="email"  name="email" placeholder="이메일을 입력해주세요."/>
	</div>
	<div class="btn-box">
		<button type="submit">회원가입</button>
	</div>
</form>




<style>

form .form-control-box input {
	font-weight: normal;
	font-size: 1rem;
}

</style>








<%@ include file="../..//part/foot.jspf" %>