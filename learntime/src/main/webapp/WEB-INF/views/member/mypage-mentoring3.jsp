<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | MY PAGE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"/>
    <link rel="stylesheet" href="/app/resources/css/myMentoring.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <style>
      #mypage-box {
        width: 1200px;
        height: 100%;
        margin: auto;
      }

      #mypage {
        width: 100%;
        display: grid;
        grid-template-columns: 300px 900px;
      }

      #home-area {
        padding: 40px;
        height: auto;
      }

      /* 공통css */
      .soft-gray {
        color: rgb(164, 164, 164);
      }

      .gray1 {
        color: #535353;
      }

      .gray2 {
        color: #848484;
      }

      .relative {
        position: relative;
      }

      .middle {
        display: flex;
        justify-content: center;
      }

      .bold700 {
        font-weight: 700;
      }

      .main-color {
        color: #5ecc80;
      }

      .space-between {
        display: flex;
        justify-content: space-between;
        align-items: center;
      }

      .flex {
        display: flex;
        align-items: center;
      }

      .center {
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .black {
        color: rgba(0, 0, 0, 0.9);
      }

      .blue {
        color: rgb(49, 137, 252);
      }

      * {
        font-family: "Noto Sans KR", sans-serif;
      }

    </style>
  </head>
  <body>
    <%@include file="/WEB-INF/views/common/header.jsp" %>

    <div id="mypage-box">
        <div id="mypage">
            <div id="bin">
            <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
            </div>
            <div id="home-area">
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
                        <div id="mentoring-regist-btn" onclick="location.href='/app/mentor/mentoring/regist'">멘토링 설정하기</div>
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
                            <a href="/app/mentor/mentoring/regist">멘토링 설정하기 ></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

    <!-- 카테고리 임시 코드-->
    <script>
      const mentoringCategory2 = document.querySelector('#mentoring-category2');
      mentoringCategory2.addEventListener('click', () => {
          location.href = '/app/mentor/mymentoring/temp2';
      });

      // const mentoringCategory3 = document.querySelector('#mentoring-category3');
      // mentoringCategory3.addEventListener('click', () => {
      //     location.href = '/app/mentor/mymentoring/temp3';
      // });

      const mentoringCategory1 = document.querySelector('#mentoring-category1');
      mentoringCategory1.addEventListener('click', () => {
          location.href = '/app/mentor/mymentoring/temp';
      });

    </script>
    

    <script>
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    </script>
  </body>
</html>
