<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="테스트" />
<%@ include file="../../part/head.jspf"%>



<div class="list-box con2 ">
	<div class="btn-box ">
		<a href="../article/test" class="btn-rand">LIST RANDOM RESET</a>
		<button class="btn-1">모두 보기</button>
	</div>
	<div class="list-box-content flex margin-top-40">
		<div class="word-box ">
			<div class="word-box-title"><a href="#" class="btn-2">단어 또는 문장</a></div>
			<c:forEach items="${articles}" var="article">
				<div class="word ">${article.word }</div>
			</c:forEach>
		</div>
		<div class="mean-box ">
			<div class="mean-box-title"><a href="#" class="btn-3">의미</a></div>
			<c:forEach items="${articles}" var="article">
				<div class="mean">${article.mean }</div>
			</c:forEach>
		</div>
		<div class="pass-box ">
			<div class="pass-box-title"><a href="#" class="">정답</a></div>
			<c:forEach items="${articles}" var="article">
				<input type="text"  placeholder="입력해주세요." class="pass"/>
			</c:forEach>
		</div>
	</div>

</div>


<style>

.con2 {
	width: 1400px;
	margin-left: auto;
	margin-right: auto;
}

/* 리스트 박스 버튼 시작 */
.list-box .btn-box {
	text-align: right;
}

.list-box .btn-box  a{
	margin-right: 80px;
}

.list-box .btn-box  a:hover {
	text-decoration: underline;
	font-weight: bold;
}

.list-box .btn-box button {
	height: 30px;
	width: 100px;
}

/* 리스트 박스 버튼 끝 */
.list-box .list-box-content {
	width: 100%;
}

.list-box .list-box-content .word-box, .list-box .list-box-content .mean-box {
	margin-right: 3%;
}

.list-box .list-box-content .word-box, .list-box .list-box-content .mean-box, 
.list-box .list-box-content .pass-box {
	width: 33%;
	text-align: center;
	
}


.list-box .list-box-content .word-box .word-box-title, .list-box .list-box-content .mean-box .mean-box-title,
.list-box .list-box-content .pass-box .pass-box-title {
	font-weight: bold;
	border-bottom: 2px solid #afafaf;
	font-size: 1.2rem;
	padding: 10px;
	margin-bottom: 10px;
	
}

.list-box .list-box-content .pass-box  input {
	width: 100%;
	height: 30px;
}

.list-box .list-box-content .word-box .word-box-title:hover > a, 
.list-box .list-box-content .mean-box .mean-box-title:hover > a {
	text-decoration: underline;
	padding: 10px 110px;
}

.list-box .list-box-content .word-box .word {
	font-weight: bold;
}

.list-box .list-box-content .word-box .word, .list-box .list-box-content .mean-box .mean {
	height: 37px;
	overflow: hidden;
	text-overflow:ellipsis;
	white-space: nowrap;
	
	
}
</style>


<script>

	btnClicked(1);
	btnClicked(2);
	btnClicked(3);

	function btnClicked(no) {
		if (no == 1) {
			$('.list-box .btn-' + no).click(
					function() {
						if ($('.list-box .mean').hasClass('remove')
								|| $('.list-box .word').hasClass('remove')) {
							$('.list-box .mean').removeClass('remove');
							$('.list-box .word').removeClass('remove');
						}
					});
		}

		if (no == 2) {
			$('.list-box   .btn-' + no).click(function() {
				$('.list-box .mean').addClass('remove');
				if ($('.list-box .mean').hasClass('remove')) {
					$('.list-box .word').removeClass('remove');
				}
			});
		}

		if (no == 3) {
			$('.list-box  .btn-' + no).click(function() {
				$('.list-box .word').addClass('remove');
				if ($('.list-box .word').hasClass('remove')) {
					$('.list-box .mean').removeClass('remove');
				}
			});
		}

	};

	
</script>




<%@ include file="../..//part/foot.jspf"%>