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

	<form action="/app/question/questionList" method="post">
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
                        <select name="select-title-content" >
                            <option value="title-option">제목</option>
                            <option value="content-option">내용</option>
                        </select>
                    </div>
                    <div class="search-box2">
                    	<input type="text" size="100" class="search-input">
                    	<div class="search-line"></div>
                    </div>
                    <div class="search-btn2"><input type="submit" value="검색" class="search-btn-input"></div>
                </div>
            </div>
            <div class="category-question">
                <div class="cate-list">
                    <button><div class="ques">문의하기</div></button> 
                    <button><div class="cate">전체</div></button>
                    <button><div class="cate">스터디</div></button>
                    <button><div class="cate">공부인증</div></button>
                    <button><div class="cate">Q&A</div></button>
                    <button><div class="cate">멘토링</div></button>
                    <button><div class="cate">커뮤니티</div></button>
                    <button><div class="cate">스킨샵</div></button>
                </div>
            </div>
            <div class="list-question">
                <c:forEach var="questionList" begin="1" end="10" >
                    <div class="questionList">
                        <div class="pick-cate">[스터디]</div>
                        <div class="pick-title">어떻게 이용하면 되나요?</div>
                        <div class="pick-date">2022.12.16</div>
                    </div>
                </c:forEach>
            </div>
            <div class="page-question"></div>
        </div>
    </div>
	</form>
	




    <%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>