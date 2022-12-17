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
    <div class="banner-section">
        <div class="banner">
            <div id="banner-title1"><span>FAQ</span></div>
            <div id="banner-title2"><span>무엇을 도와드릴까요?</span></div>
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
        <div class="title-part">
            <div class="faq-title-date">
                <div class="category-faq">[멘토링]</div>
                <div class="title-faq">어떻게 이용하면 되는건가요</div>
            </div>
            <div class="q-enrollDate-comment">
                <div class="q-nick">user11</div>
                <div class="date-q-m">2022.12.14</div>
                <div class="q-hit">
                    <div class="q-reply-num-count">댓글수</div>
                    <div class="q-comment">3</div>
                </div>
            </div>
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