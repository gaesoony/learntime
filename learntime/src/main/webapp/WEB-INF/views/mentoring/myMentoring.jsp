<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/mentoring/myMentoring.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
    <%@include file="/WEB-INF/views/common/header.jsp"%>

    <div id="main-wrap">
        <div id="category-wrap">
            <div id="mentoring-category-box">
                <input type="radio" name="mentoring-category" id="mentoring-category1">
                <label for="mentoring-category1">신청한 멘토링</label>
                <input type="radio" name="mentoring-category" id="mentoring-category2">
                <label for="mentoring-category2">멘토 지원하기</label>
                <input type="radio" name="mentoring-category" id="mentoring-category3" checked>
                <label for="mentoring-category3">나의 멘토링 관리</label>
            </div>
            <div id="mentoring-regist-btn">멘토링 설정하기</div>
        </div>

        <div id="mentoring-content-wrap">
            <div id="content-title">
                <div class="content-title">상태</div>
                <div class="content-title">신청자</div>
                <div class="content-title">연락처</div>
                <div class="content-title">이메일</div>
                <div class="content-title">멘토링명</div>
                <div class="content-title">멘토링일정</div>
                <div class="content-title">신청정보</div>
            </div>

            <div class="content-list">
                <div class="content">수락대기중</div>
                <div class="content">망치맨</div>
                <div class="content">010********</div>
                <div class="content">ry******@******</div>
                <div class="content">스프링 고수가 가르치는 스프링 빡고수 되는법</div>
                <div class="content">2022.11.20 22:00</div>
                <div class="content">신청정보</div>
            </div>

            <div id="no-application" class="m-notice">아직 멘토링 신청이 없어요 :( </div>
            <div id="no-mentor" class="m-notice">아직 멘토링 설정을 하지 않았어요 :( <br>
                <a href="">멘토링 설정하기 ></a>
            </div>
        </div>


    </div>


    <%@include file ="/WEB-INF/views/common/footer.jsp" %>

</body>
</html>

