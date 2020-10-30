<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="title" value="작성" />
<%@ include file="../../part/head.jspf" %>



<form action="doWrite" class="form con margin-top-100" method="POST" onsubmit="writeFormSubmit(this); return false;">
	<div class="form-control-box ">
		<div >단어 또는 문장</div>
		<input type="text"  style="ime-mode:disabled;" name="word" placeholder="단어 또는 문장을 입력해주세요." autofocus="autofocus"/>
	</div>
	<div class="form-control-box">
		<div >의미</div>
		<textarea name="mean"  placeholder="의미를 입력해주세요."></textarea>
	</div>
	<div class="btn-box">
		<button type="submit">저장</button>
	</div>
</form>


<style>
.form  .form-control-box input {
	
}

.form  .form-control-box:nth-of-type(2) textarea {
	ime-mode:active;
}		
</style>

<script>




var writeFormSubmitDone = false;
function writeFormSubmit(form) {

	if ( writeFormSubmitDone ) {
		alert('처리중입니다.');
		return;
	}

	form.word.value = form.word.value.trim();
	if ( form.word.value.length == 0 ) {
		alert('단어 또는 문장을 입력해주세요.')
		form.word.focus();
		return;
	}


	form.mean.value = form.mean.value.trim();
	if ( form.mean.value.length == 0 ) {
		alert('의미를 입력해주세요.')
		form.mean.focus();
		return;
	}

	form.submit();
	writeFormSubmitDone = true;
}


</script>











<%@ include file="../..//part/foot.jspf" %>