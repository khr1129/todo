<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="title" value="회원가입" />
<%@ include file="../../part/head.jspf" %>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>


<form action="doJoin" class="form con margin-top-100" method="POST" onsubmit="joinFormSubmit(this); return false;">
	<input type="hidden" name="loginPwReal" />
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


<script>

var joinFormSubmitDone = false;
function joinFormSubmit(form) {

	
	if (joinFormSubmitDone) {
		alert('처리중입니다.');
		return;
	}

	form.loginId.value = form.loginId.value.trim();
	
	if ( form.loginId.value.length == 0 ) {
		alert('로그인 아이디를 입력해주세요.');
		form.loginId.focus();
		return;
		
	}


	if ( form.loginId.value.length < 4 || form.loginId.value.length > 12 ) {
		alert('아이디를 4~12자까지 입력해주세요.');
		form.loginId.focus();
		return;
	}

	form.loginPw.value = form.loginPw.value.trim();
	
	
	if ( form.loginPw.value.length == 0 ) {
		alert('비밀번호를 입력해주세요.');
		form.loginPw.focus();
		return;
	}

	if ( form.loginPw.value.length < 4 || form.loginPw.value.length > 12 ) {
		alert('로그인 비밀번호를 4~12자까지 입력해주세요.');
		form.loginPw.value = "";
		form.loginPwConfirm.value = "";
		form.loginPw.focus();
		return;
	}
	
	form.loginPwConfirm.value = form.loginPwConfirm.value.trim();
	if ( form.loginPwConfirm.value.length == 0 ) {
		alert('비밀번호 확인을 입력해주세요.');
		form.loginPwConfirm.focus();
		return;
	}

	
	if ( form.loginPw.value != form.loginPwConfirm.value) {
		alert('비밀번호 확인이 일치하지 않습니다.');
		form.loginPw.focus();
		return;
	}
	
	form.name.value = form.name.value.trim();
	if ( form.name.value.length == 0 ) {
		alert('이름을 입력해주세요.');
		form.name.focus();
		return;
	}

	if ( form.name.value.length < 2 ) {
		alert('이름을 2자 이상 입력해주세요.');
		form.name.focus();
		return;
	}
	

	form.nickname.value = form.nickname.value.trim();
	if ( form.nickname.value.length == 0 ) {
		alert('닉네임을 입력해주세요.');
		form.nickname.focus();
		return;
	}

	if ( form.nickname.value.length < 2 ) {
		alert('닉네임을 2자 이상 입력해주세요.');
		form.nickname.focus();
		return;
	}
	
	form.email.value = form.email.value.trim();
	if ( form.email.value.length == 0 ) {
		alert('이메일을 입력해주세요.');
		form.email.focus();
		return;
	}

	form.loginPwReal.value = sha256(form.loginPw.value);
	form.loginPw.value = '';
	form.loginPwConfirm.value = '';

	
	form.submit();
	joinFormSubmitDone = true;
}
</script>








<%@ include file="../..//part/foot.jspf" %>