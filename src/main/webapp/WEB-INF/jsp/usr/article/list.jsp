<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="단어장" />
<%@ include file="../../part/head.jspf"%>



<div class="list-box margin-top-60">
	<div class="btn-box con ">
		<button class="btn-1">모두보기</button>
	</div>
	<div class="con flex flex-jc-sb margin-top-30">
		<div class="word-box ">
			<div class="title ">
				<a href="#" class="btn-2">단어 또는 문장</a>
			</div>
		</div>
		<div class="mean-box  ">
			<div class="title ">
				<a href="#" class="btn-3">의미</a>
			</div>
		</div>
	</div>
	<div class="con flex flex-jc-sb ">
		<div class="content-box word">
			<c:forEach items="${articles}" var="article">
				<div class="word">${article.word }</div>
			</c:forEach>
		</div>
		<div class="content-box mean">
			<c:forEach items="${articles}" var="article">
				<div class="mean">${article.mean }</div>
			</c:forEach>
		</div>
	</div>
</div>



<style>
.list-box .con {
	text-align: center;
}

.list-box .btn-box {
	text-align: right;
}

.list-box .btn-box button {
	width: 100px;
	height: 30px;
}

.list-box .con .title {
	font-weight: bold;
	/* height: 30px; */
}

.list-box .con .word-box {
	width: 50%;
	border-bottom: 1px solid black;
	height: 40px;
	display: flex;
	align-items: center;
	justify-content: center;
	box-sizing: border-box;
}

.list-box .con .mean-box {
	width: 50%;
	border-bottom: 1px solid black;
	height: 40px;
	display: flex;
	align-items: center;
	justify-content: center;
	box-sizing: border-box;
}

.list-box .con .word-box:hover, .list-box .con .mean-box:hover {
	text-decoration: underline;
	cursor: pointer;
}

.list-box .con .content-box {
	width: 50%;
}

.list-box .con .content-box .word {
	padding: 5px; height : 30px;
	border-bottom: 1px solid #afafaf;
	height: 30px;
}

.list-box .con .content-box .mean {
	padding: 5px;
	height: 30px;
	border-bottom: 1px solid #afafaf;
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