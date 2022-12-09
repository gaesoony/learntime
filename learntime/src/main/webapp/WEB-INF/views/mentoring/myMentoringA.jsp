<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/myMentoringA.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
    <%@include file="/WEB-INF/views/common/header.jsp"%>

    <div id="main-wrap">
        <div id="category-wrap">
            <div id="mentoring-category-box">
                <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category1" checked>
                <label for="mentoring-category1">신청한 멘토링</label>
                <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category2">
                <label for="mentoring-category2">멘토 지원하기</label>
                <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category3">
                <label for="mentoring-category3">나의 멘토링 관리</label>
            </div>
        </div>

        <div id="mentoring-content-wrap">
            <div id="content-title-box">
                <input class="sm-category" type="radio" name="mentoring-sm-category" id="mentoring-sm-category1" checked>
                <label for="mentoring-sm-category1">
                    <span class="material-symbols-rounded dot-icon">fiber_manual_record</span>
                    <span> 전체</span>
                </label>
                <input class="sm-category" type="radio" name="mentoring-sm-category" id="mentoring-sm-category2">
                <label for="mentoring-sm-category2">
                    <span class="material-symbols-rounded dot-icon">fiber_manual_record</span>
                    <span> 승인대기</span>
                </label>
                <input class="sm-category" type="radio" name="mentoring-sm-category" id="mentoring-sm-category3">
                <label for="mentoring-sm-category3">
                    <span class="material-symbols-rounded dot-icon">fiber_manual_record</span>
                    <span> 예약확정</span>
                </label>
                <input class="sm-category" type="radio" name="mentoring-sm-category" id="mentoring-sm-category4">
                <label for="mentoring-sm-category4">
                    <span class="material-symbols-rounded dot-icon">fiber_manual_record</span>
                    <span> 이용완료</span>
                </label>
                <input class="sm-category" type="radio" name="mentoring-sm-category" id="mentoring-sm-category5">
                <label for="mentoring-sm-category5">
                    <span class="material-symbols-rounded dot-icon">fiber_manual_record</span>
                    <span> 취소/환불</span>
                </label>
            </div>

            <div class="content-box">
                <div class="mentoring-nbr">
                    <span>No 221129192042</span>
                </div>
                <div class="mentoring-title">
                    <span>스프링으로 생산력 향상 시켜드립니다.</span>
                </div>
                <div class="mentor-info">
                    <div class="mentor-nick">
                        <a href="">
                            <img src="/app/resources/img/profile01.png" alt="">
                            <span>코딩하는망치맨</span>
                        </a>
                    </div>
                    <div class="apply-date">신청 날짜 : 2022/11/29 19:20:42</div>
                </div>
                <div class="mentoring-status">
                    <div class="status-txt">예약 확정</div>
                    <div class="status-btn red-btn">취소하기</div>
                </div>
            </div>
            <div class="content-box">
                <div class="mentoring-nbr">
                    <span>No 221129192042</span>
                </div>
                <div class="mentoring-title">
                    <span>스프링으로 생산력 향상 시켜드립니다아아아아아아아아아아아</span>
                </div>
                <div class="mentor-info">
                    <div class="mentor-nick">
                        <a href="">
                            <img src="/app/resources/img/profile01.png" alt="">
                            <span>코딩하는망치맨</span>
                        </a>
                    </div>
                    <div class="apply-date">신청 날짜 : 2022/11/29 19:20:42</div>
                </div>
                <div class="mentoring-status">
                    <div class="status-txt">승인대기중</div>
                    <div class="status-btn red-btn">취소하기</div>
                </div>
            </div>
            <div class="content-box">
                <div class="mentoring-nbr">
                    <span>No 221129192042</span>
                </div>
                <div class="mentoring-title">
                    <span>스프링으로 생산력 향상 시켜드립니다.</span>
                </div>
                <div class="mentor-info">
                    <div class="mentor-nick">
                        <a href="">
                            <img src="/app/resources/img/profile01.png" alt="">
                            <span>코딩하는망치맨</span>
                        </a>
                    </div>
                    <div class="apply-date">신청 날짜 : 2022/11/29 19:20:42</div>
                </div>
                <div class="mentoring-status">
                    <div class="status-txt">이용 완료</div>
                    <div class="status-btn green-btn">후기작성</div>
                </div>
            </div>


            <div id="no-application" class="m-notice">신청한 멘토링이 없습니다. :( </div>
            
        </div>


    </div>


    <%@include file ="/WEB-INF/views/common/footer.jsp" %>

</body>
</html>

