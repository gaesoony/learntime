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
</head>
<body>
    <%@ include file = "/WEB-INF/views/common/header.jsp" %>


	<div class="question-main">
        <div class="logo-question">
            <div class="logo-phrases">
                <div class="one-by-one">1:1 문의게시판</div>
                <div class="guide">궁금하신 점을 남겨주시면 접수 순서대로 답변 드리겠습니다.</div>
            </div>
        </div>
        <div class="category-question">
            <div class="cate-list">
                <a href=""><div class="ques">문의하기</div></a>
                <a href=""><div class="cate">전체</div></a>
                <a href=""><div class="cate">스터디</div></a>
                <a href=""><div class="cate">공부인증</div></a>
                <a href=""><div class="cate">Q&A</div></a>
                <a href=""><div class="cate">멘토링</div></a>
                <a href=""><div class="cate">커뮤니티</div></a>
                <a href=""><div class="cate">스킨샵</div></a>
            </div>
        </div>
        <div class="search-question">
            <div class="gathering-blocks">
                <div class="select-content">
                    <select name="select-title-content" >
                        <option value="title-option">제목</option>
                        <option value="content-option">내용</option>
                    </select>
                </div>
                <div class="search-box2">
                    <div class="search-line"></div>
                </div>
                <div class="search-btn2"><input type="submit" value="검색"></div>
            </div>
        </div>
        <div class="list-question">
            <c:forEach var="questionList" begin="1" end="10" >
                <div class="questionList">
                    <div class="pick-cate">카테고리</div>
                    <div class="pick-title">제목</div>
                    <div class="pick-date">작성일자</div>
                </div>
            </c:forEach>
        </div>
        <div class="page-question"></div>
    </div>




    <%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>