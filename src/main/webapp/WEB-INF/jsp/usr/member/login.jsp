<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="title" value="로그인" />
<%@ include file="../../part/head.jspf" %>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>


<form action="doLogin" class="form con " method="POST" onsubmit="loginFormSubmit(this); return false;">
	<div class="form-control-box ">
		<div >로그인 아이디</div>
		<input type="text"  name="loginId" placeholder="로그인 아이디를 입력해주세요."/>
	</div>
	<div class="form-control-box">
		<div >로그인 비밀번호</div>
		<input type="password"  name="loginPw" placeholder="비밀번호를 입력해주세요."/>
	</div>
	<div class="btn-box">
		<button type="submit">로그인</button>
	</div>
</form>




<style>

.form {
	margin-top: 200px;
}

form .form-control-box input {
	font-weight: normal;
	font-size: 1rem;
}

</style>


<script>

var loginFormSubmitDone = false;
function loginFormSubmit(form) {

	
	if (loginFormSubmitDone) {
		alert('처리중입니다.');
		return;
	}

	form.loginId.value = form.loginId.value.trim();
	
	if ( form.loginId.value.length == 0 ) {
		alert('로그인 아이디를 입력해주세요.');
		form.loginId.focus();
		return;
		
	}


	form.loginPw.value = form.loginPw.value.trim();
	
	
	if ( form.loginPw.value.length == 0 ) {
		alert('비밀번호를 입력해주세요.');
		form.loginPw.focus();
		return;
	}


	
	form.submit();
	loginFormSubmitDone = true;
}
</script>








<%@ include file="../..//part/foot.jspf" %>