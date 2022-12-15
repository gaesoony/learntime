<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | MY PAGE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"/>
    <link rel="stylesheet" href="/app/resources/css/mentorRegist.css">
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
                <div id="mentoring-category-box">
                    <input type="radio" name="mentoring-category" id="mentoring-category1">
                    <label for="mentoring-category1">신청한 멘토링</label>
                    <input type="radio" name="mentoring-category" id="mentoring-category2" checked>
                    <label for="mentoring-category2">멘토 지원하기</label>
                    <input type="radio" name="mentoring-category" id="mentoring-category3">
                    <label for="mentoring-category3">나의 멘토링 관리</label>
                </div>
        
                <form action="">
                <div id="basic-info-box">
                    <div id="basic-info-title" class="title">
                        <span>멘토 정보</span>
                        <!-- <div id="save-btn">저장</div> -->
                    </div>
        
                    <div id="basic-info" class="info-box">
                        <div id="email-title" class="sub-title">
                            <span>이름(실명)</span>
                            <span class="sub-title-plus">*</span>
                        </div>
                        <input type="text" id="" placeholder="실명을 입력해주세요">
        
                        <div id="email-title" class="sub-title">
                            <span>연락받을 이메일</span>
                            <span class="sub-title-plus">*</span>
                        </div>
                        <input type="text" id="email-input" placeholder="멘토링에 사용하실 이메일을 입력해주세요">
                        
        
                        <div id="phone-title" class="sub-title">
                            <span>연락처</span>
                            <span class="sub-title-plus">*</span>
                        </div>
                        <input type="text" id="phone-input" placeholder="01000000000">
        
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
            </div>
        </div>
    </div>
    <%@include file="/WEB-INF/views/common/footer2.jsp" %>
    <!-- 카테고리 임시 코드-->


    <script>
      // const mentoringCategory2 = document.querySelector('#mentoring-category2');
      // mentoringCategory2.addEventListener('click', () => {
      //     location.href = '/app/mentor/mymentoring/temp2';
      // });

      const mentoringCategory3 = document.querySelector('#mentoring-category3');
      mentoringCategory3.addEventListener('click', () => {
          location.href = '/app/mentor/mymentoring/temp3';
      });

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
