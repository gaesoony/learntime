<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/question/qListAd.css">
</head>
<body>
<%@include file="/WEB-INF/views/common/admin-side.jsp"%>

<div class="main-admin-q">
    <div class="line-on-the-top">
        <div class="box-for-line-a">
            <div class="half-box-a"></div>
        </div>
        <div class="title-box">문의</div>
        <div class="box-for-line-b">
            <div class="half-box-b"></div>
        </div>
    </div>
    <div class="deleteBtn">
        <input type="button" value="삭제" id="erase">
    </div>
    <div class="listed-q">
        <c:forEach var="faqListAd" begin="1" end="15" >
            <div class="faqListAd">
                <div><input type="radio" name="faq-ad" id="radioBtn"></div>
                <div class="category-faq-ad">[멘토링]</div>
                <div class="title-faq-ad">멘토링 서비스가 궁금해요</div>
                <div class="comment-faq-ad">(3)</div>
                <div class="nickname-faq-ad">김곰돌</div>
                <div class="enrollDate-faq-ad">2022.12.13</div>
                <div class="deleteBtn-faq-ad"><input type="button" value="삭제"></div>
            </div>
        </c:forEach>
    </div>
    <div class="page-qList-ad"></div>
</div>




</body>
</html>