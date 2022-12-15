<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | MY PAGE</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"/>
    <link rel="stylesheet" href="/app/resources/css/myCommunity.css">

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
                <div id="community-category-box">
                    <input type="radio" name="community-category" id="community-category1">
                    <label for="community-category1">나의 글</label>
                    <input type="radio" name="community-category" id="community-category2">
                    <label for="community-category2">나의 스크랩</label>
                </div>
            </div>







          </div>
        </div>
      </div>
    </div>
    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

    
   
    <script>
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    </script>
  </body>
</html>
