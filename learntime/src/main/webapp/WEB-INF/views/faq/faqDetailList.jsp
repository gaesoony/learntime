<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/faq/faqDetailList.css">
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
    <div class="faq-detail-list">
        <div class="faq-sign">
            <div class="line1">
                <div class="line-a"></div>
            </div>
            <div class="name-faq">FAQ</div>
            <div class="line2">
                <div class="line-b"></div>
            </div>
        </div>
        <div class="faq-title-date">
            <div class="category-faq">멘토링</div>
            <div class="title-faq"></div>
            <div class="date-faq"></div>
        </div>
        <div class="empty1"></div>
        <div class="faq-content"></div>
        <div class="backBtn">
            <div class="btn-to-list">글목록</div>
        </div>
    </div>
</div>






<%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>