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

<div class="list-main">
    <div class="banner-section">
         <div class="banner">
            <div id="banner-title1"><span>FAQ</span></div>
            <div id="banner-title2"><span>무엇을 도와드릴까요?</span></div>
        </div>
    </div>
    <div class="search-window">
        <div id="title-search">
            <select name="select-title" >
                <option value="title">제목</option>
                <option value="content">내용</option>
            </select>
        </div>
        <div id="search-box"></div>
        <div id="searchBtn"><input type="submit" value="검색"></div>
    </div>
    <div class="list-section">
        <div class="category-section">
            <a href=""><div class="list-categoryBtn">전체</div></a>
            <a href=""><div class="list-categoryBtn">스터디</div></a>
            <a href=""><div class="list-categoryBtn">공부인증</div></a>
            <a href=""><div class="list-categoryBtn">Q&A</div></a>
            <a href=""><div class="list-categoryBtn">멘토링</div></a>
            <a href=""><div class="list-categoryBtn">커뮤니티</div></a>
            <a href=""><div class="list-categoryBtn">스킨샵</div></a>
        </div>
        
        <div class="list-all">
            <c:forEach var="faqList" begin="1" end="10" >
                <div class="faqList">
                    <div class="q-mark">
                        <div class="green-circle2">Q</div>
                    </div>
                    <div class="category-faq">[공부인증]</div>
                    <div class="title-faq">공부인증 어떻게 하나요?</div>
                    <div class="date-faq">2022.12.16</div>
                </div>
            </c:forEach>
        </div>
        <div class="page-section"></div>
    </div>
</div>


<%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>