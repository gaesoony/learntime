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
        <c:set var="admin" value="${loginMember.getAdminYn()}" scope="session"/>  
  			<c:if test="${admin eq 'Y'}">
  				<a href="/app/faq/faqWrite"><div class="write-notice-d" >글쓰기</div></a>
            </c:if>
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
        	<c:set var="no" value="${loginMember.getNo()}" scope="session"/>
            <c:set var="writer" value="${vo.writer}" scope="session"/> 
            <c:set var="admin" value="${loginMember.getAdminYn()}" scope="session"/>  
            <c:if test="${not empty no || admin eq 'Y'}">
            	<c:forEach var="list" items="${list}" >
                <div class="faqList">
                    <div class="q-mark">
                        <div class="green-circle2">Q</div>
                    </div>
                    <div class="category-faq" name="name">${list.cateName}</div>
                    <a class="a-section" href="/app/faq/faqDetailList?no=${list.no}"><div class="title-faq" name="title">${list.title}</div></a>
                    <div class="date-faq" name="enrollDate">${list.enrollDate}</div>
                </div>
            </c:forEach>
            </c:if>
        </div>
        <div class="page-section">
        	<div class="page-faq">
				<c:if test="${pv.startPage != 1}">
	                <div class="paging-btn" id="prev-btn">
	                  <a
	                    href="${path}/faq/faqList?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
	                    >이전</a
	                  >
	                </div>
	            </c:if>
	              <c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
	                <div class="paging-btn" id="${i}">
	                  <a
	                    href="${path}/faq/faqList?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
	                    >${i}</a
	                  >
	                </div>
	              </c:forEach>
	            <c:if test="${pv.endPage < pv.maxPage}">
	              <div class="paging-btn" id="next-btn">
	                <a
	                  href="${path}/faq/faqList?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
	                  >다음</a
	                >
	              </div>
	            </c:if>
	   		</div>
        </div>
    </div>
</div>

	
</form>

<%@ include file = "/WEB-INF/views/common/footer.jsp" %>

 
</body>
</html>