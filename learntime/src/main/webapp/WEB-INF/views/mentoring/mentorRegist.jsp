<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/mentorRegist.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
    <%@include file="/WEB-INF/views/common/header.jsp"%>

    <div id="main-wrap">
        <div id="mentoring-category-box">
            <input type="radio" name="mentoring-category" id="mentoring-category1" checked>
            <label for="mentoring-category1">신청한 멘토링</label>
            <input type="radio" name="mentoring-category" id="mentoring-category2">
            <label for="mentoring-category2">멘토 지원하기</label>
            <input type="radio" name="mentoring-category" id="mentoring-category3">
            <label for="mentoring-category3">나의 멘토링 관리</label>
        </div>

        <form action="">
        <div id="basic-info-box">
            <div id="basic-info-title" class="title">
                <span>기본 정보</span>
                <div id="save-btn">저장</div>
            </div>

            <div id="basic-info" class="info-box">
                <div id="phone-title" class="sub-title">
                    <span>연락받을 이메일</span>
                    <span class="sub-title-plus">*</span>
                </div>
                <input type="text" id="phone-input" placeholder="멘토링에 사용하실 이메일을 입력해주세요">
                
                <div id="email-title" class="sub-title">
                    <span>이름(실명)</span>
                    <span class="sub-title-plus">*</span>
                </div>
                <input type="text" id="" placeholder="실명을 입력해주세요">

                <div id="phone-title" class="sub-title">
                    <span>연락처</span>
                    <span class="sub-title-plus">*</span>
                </div>
                <input type="text" id="" placeholder="010-0000-0000">

                <div id="category-title" class="sub-title">
                    <span>희망분야</span>
                    <span class="sub-title-plus">*</span>
                </div>
                <select name="" id="">
                    <option value="">멘토링과 연관된 분야를 선택해주세요</option>
                </select>

                <div id="link-title" class="sub-title">
                    <span>링크</span>
                </div>
                <input type="text" id="" placeholder="멘토님을 표현할 수 있는 깃허브 주소나 블로그 주소를 입력해주세요">

                <div id="intro-title" class="sub-title">
                    <span>나의 소개글</span>
                    <span class="sub-title-plus">*</span>
                </div>
                <textarea id="intro-input" name="" id="" cols="30" rows="10" placeholder="멘토님을 상세하게 소개해주세요"></textarea>
            </div>
        </div>

        <div id="btn-box">
            <div id="cancel-btn">취소하기</div>
            <input type="submit" value="저장하기">
        </div>
        

        </form>
    </div>


        <%@include file ="/WEB-INF/views/common/footer.jsp" %>



</body>
</html>