	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/faq/faqCss.css">
</head>
<body>
<%@ include file = "/WEB-INF/views/common/header.jsp" %>
<form action="/app/faq/faqList" method="get">
	<input type="hidden" value="${cateNo}" name="cateNo">
	<input type="hidden" value="${p}" name="p">
	<div class="list-main">
    <div class="banner-section">
         <div class="banner">
            <div id="banner-title1"><span>FAQ</span></div>
            <div id="banner-title2"><span>무엇을 도와드릴까요?</span></div>
        </div>
    </div>
    <div class="search-window">
        <div id="title-search">
            <select name="category" >
                <option value="title">제목</option>
                <option value="content">내용</option>
            </select>
        </div>
        <div id="search-box-faq"><input type="text" name= "keyword" class="search-box" size="100"></div>
        <div id="searchBtn"><input type="submit" class="search-btn" value="검색"></div>
    </div>
    <div class="list-section">
        <div class="category-section">
            <a href="/app/faq/faqList?p=1&cateNo=0"class="cateBtn"><div class="cate-pick" name="cateNo" value="0">글목록</div></a>
            <a href="/app/faq/faqList?p=1&cateNo=1"class="cateBtn"><div class="cate-pick" name="cateNo" value="1">전체</div></a> 
            <a href="/app/faq/faqList?p=1&cateNo=2"class="cateBtn"><div class="cate-pick" name="cateNo" value="2">스터디</div></a> 
            <a href="/app/faq/faqList?p=1&cateNo=3"class="cateBtn"><div class="cate-pick" name="cateNo" value="3">공부인증</div></a> 
            <a href="/app/faq/faqList?p=1&cateNo=4"class="cateBtn"><div class="cate-pick" name="cateNo" value="4">Q&A</div></a>
            <a href="/app/faq/faqList?p=1&cateNo=5"class="cateBtn"><div class="cate-pick" name="cateNo" value="5">멘토링</div></a> 
            <a href="/app/faq/faqList?p=1&cateNo=6"class="cateBtn"><div class="cate-pick" name="cateNo" value="6">커뮤니티</div></a> 
            <a href="/app/faq/faqList?p=1&cateNo=7"class="cateBtn"><div class="cate-pick" name="cateNo" value="7">스킨샵</div></a> 
        </div>
        
        <div class="list-all">
            <c:forEach var="list" items="${list}" >
                <div class="faqList">
                    <div class="q-mark">
                        <div class="green-circle2">Q</div>
                    </div>
                    <div class="category-faq" name="name">${list.cateName}</div>
                    <a href="/app/faq/faqDetailList?no=${list.no}"><div class="title-faq" name="title">${list.title}</div></a>
                    <div class="date-faq" name="enrollDate">${list.enrollDate}</div>
                </div>
            </c:forEach>
        </div>
        <div class="page-section">
        	<div class="page-faq">
			  	<ul id="page-nation">
					<li><a href="/app/faq/faqList?p=1&cateNo=0" class="first"><<</a></li>
					<li><a class="arrow left"><</a></li>
					<li><a class="num"></a></li>
					<li><a class="num"></a></li>
					<li><a class="num"></a></li>
					<li><a class="num"></a></li>
					<li><a class="num"></a></li>
					<li><a class="arrow right">>></a></li>
					<li><a href="/app/faq/faqList?p=${pv.maxPage}&cateNo=0" class="last">>></a></li>
				</ul>
		   </div>
        </div>
    </div>
</div>

	
</form>

<%@ include file = "/WEB-INF/views/common/footer.jsp" %>

 
<script type="text/javascript">
	const pageNation = document.querySelector('#page-nation');
	const numArr = pageNation.querySelectorAll('.num');
	const left = pageNation.querySelector('.arrow.left');
	const right = pageNation.querySelector('.arrow.right');
	
	
	if("${pv.startPage}" > 1){
		left.href = '/app/faq/faqList?p=${pv.startPage})-1';
	}else{
		left.classList.add('none-select');
	}
	
	if("${pv.currentPage}" != "${pv.maxPage}"){
		left.href = '/app/faq/faqList?p=${pv.currentPage})+1';
	}else{
		right.classList.add('none-select');
	}
	

	let page = "${pv.startPage}";

	for (let i = 0; i < numArr.length; i++) {
		const num = numArr[i];
		
		if(page == "${pv.currentPage}"){
			num.classList.add('current');
		}
		
		if(page<1 || page > "${pv.maxPage}"){
			num.classList.add('p-none');
		}else{
			num.href = '/app/faq/faqList?p='+page;
		}
		num.classList.remove('p-none');
        $(num).attr('onclick','/app/faq/faqList?p=('+page+')');
        
		num.innerHTML = page;
		page++;
	}
	
	</script>

</body>
</html>