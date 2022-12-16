<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/mentoring/adminMentoringDetail.css">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>    
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            게시물 관리
        </div>
        <div id="content-main-wrap">
            <div id="main-side">
                <div id="mentor-info-box" class="shadow-light padding-20">
                    멘토 정보
                    <br><br>
                    <div>이메일, 이름, 연락처, 희망분야, 링크, 나의 소개글</div>
                </div>  

                <div id="mentee-info-box" class="shadow-light padding-20">
                    멘티 목록
                    <br><br>
                    <div>프로필사진, 닉네임, 아이디, 이메일, 연락처</div>
                </div>
                <div id="member-info-box" class="shadow-light padding-20">
                    회원 정보
                    <br><br>
                    <div>프로필사진, 닉네임</div>
                </div>
            </div>



            <div id="main-content">
                <div id="mentoring-info-box" class="shadow-light padding-20">
                    멘토링정보
                    <br><br>
                    <div>전화번호, 이메일, 카테고리
                        멘토링명, 멘토직군, 멘토직무, 멘트경력
                        멘토링가격, 1회당 최대인원
                        1회당 시간
                        스케줄 설정
                        멘토링상세설명
                        멘토링환영공지
                    </div>
                </div>
                <div id="btn-box">
                    <div class="btn">목록</div>
                    <div class="btn">삭제하기</div>
                </div>
            </div>
        </div>



    </div>
	
</body>
</html>