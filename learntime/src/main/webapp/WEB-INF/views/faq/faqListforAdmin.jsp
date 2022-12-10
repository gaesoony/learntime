	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/faq/faqlistforAdmin.css">
</head>
<body>
<%@ include file = "/WEB-INF/views/common/header.jsp" %>

<div class="list-main">
    <div class="logo-section">
        <div class="logo">
            <div id="logo-title1"><span>FAQ</span></div>
            <div id="logo-title2"><span>무엇을 도와드릴까요?</span></div>
        </div>
    </div>
    <div class="list-section">
        <div class="category-section">
            <div class="list-categoryBtn"><a href="">전체</a></div>
            <div class="list-categoryBtn"><a href="">스터디</a></div>
            <div class="list-categoryBtn"><a href="">공부인증</a></div>
            <div class="list-categoryBtn"><a href="">Q&A</a></div>
            <div class="list-categoryBtn"><a href="">멘토링</a></div>
            <div class="list-categoryBtn"><a href="">커뮤니티</a></div>
            <div class="list-categoryBtn"><a href="">스킨샵</a></div>
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
        <div class="list-all">
            <div>마크</div>
            <div>카테고리</div>
            <div>제목</div>
            <div>작성일시</div>
        </div>
        <div class="page-section"></div>
    </div>
</div>


<%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>