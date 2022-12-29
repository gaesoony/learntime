<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/question/questionList.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
    <%@ include file = "/WEB-INF/views/common/header.jsp" %>

	<form action="/app/question/questionList?p=1&cateNo=0" method="GET">
		<input type="hidden" value="${cateNo}" name="cateNo">
		<input type="hidden" value="${p}" name="p">
		<div class="question-main">
        <div class="banner-question">
            <div class="banner-phrases">
                <div class="one-by-one">1:1 문의게시판</div>
                <div class="guide">궁금하신 점을 남겨주시면 접수 순서대로 답변 드리겠습니다.</div>
            </div>
        </div>
        <div class="cate-search-list">
            <div class="search-question">
                <div class="gathering-blocks">
                    <div class="select-content">
                        <select name="category" >
                            <option value="title-option">제목</option>
                            <option value="content-option">내용</option>
                        </select>
                    </div>
                    <div class="search-box2">
                    	<input type="text" size="100" class="search-input" name="keyword">
                    	<div class="search-line"></div>
                    </div>
                    <div class="search-btn2"><input type="submit" value="검색" class="search-btn-input"></div>
                </div>
            </div>
            <div class="category-question">
                <div class="cate-list">
                	<a href="/app/question/questionWrite"><div class="ques">문의하기</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=1"><div class="cate" value="1" name="cateNo">전체</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=2"><div class="cate" value="2" name="cateNo">스터디</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=3"><div class="cate" value="3" name="cateNo">공부인증</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=4"><div class="cate" value="4" name="cateNo">Q&A</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=5"><div class="cate" value="5" name="cateNo">멘토링</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=6"><div class="cate" value="6" name="cateNo">커뮤니티</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=7"><div class="cate" value="7" name="cateNo">스킨샵</div></a>
                </div>
            </div>
            <div class="list-question">
                <c:forEach var="list" items="${list}" >
                    <div class="questionList">
                        <div class="pick-cate" name="name">${list.cateName}</div>
                        <a href="/app/question/qDetailList?no=${list.no}"><div class="pick-title" name="title">${list.title }</div></a>
                        <div class="pick-date" name="enrollDate">${list.enrollDate}</div>
                    </div>
                </c:forEach>
            </div>
            <div class="page-question">
            	<ul id="page-nation">
					<li><a href="/app/question/questionList?p=1&cateNo=0" class="first"><<</a></li>
					<li><a class="arrow left"><</a></li>
					<li><a class="num"></a></li>
					<li><a class="num"></a></li>
					<li><a class="num"></a></li>
					<li><a class="num"></a></li>
					<li><a class="num"></a></li>
					<li><a class="arrow right">></a></li>
					<li><a href="/app/question/questionList?p=${list.maxPage}cateNo=0" class="last">>></a></li>
				</ul>
            </div>
        </div>
    </div>
	</form>
	
	<script type="text/javascript">
	const pageNation = document.querySelector('#page-nation');
	const numArr = pageNation.querySelectorAll('.num');
	const left = pageNation.querySelector('.arrow.left');
	const right = pageNation.querySelector('.arrow.right');
	
	
	if(${list.startPage} > 1){
		left.href = '/app/question/questionList?p=${list.startPage})-1';
	}else{
		left.classList.add('none-select');
	}
	
	if(${list.currentPage} != ${list.maxPage}){
		left.href = '/app/question/questionList?p=${list.currentPage})+1';
	}else{
		right.classList.add('none-select');
	}
	

	let page = ${list.startPage};

	for (let i = 0; i < numArr.length; i++) {
		const num = numArr[i];
		
		if(page == ${list.currentPage}){
			num.classList.add('current');
		}
		
		if(page<1 || page > ${list.maxPage}){
			num.classList.add('p-none');
		}else{
			num.href = '/app/question/questionList?p='+page;
		}
		num.classList.remove('p-none');
        $(num).attr('onclick','/app/question/questionList?p=('+page+')');
        
		num.innerHTML = page;
		page++;
	}
	
	</script>




    <%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>