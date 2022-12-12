<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <!-- <link rel="stylesheet" href="/app/.css"> -->
    <title>Insert title here</title>
  </head>
  <style>
    #content-wrap {
      background-color: #efefef;
    }

    #admin-category-title {
      padding: 0 20px;
      color: black;
      background-color: white;
      box-shadow: 0px 2px 2px #c5c5c5;

      height: 55px;
      line-height: 55px;
      font-size: 18px;
    }

    /* 검색부분 */

    .wrapper {
      padding: 40px 100px;
    }

    .search-section {
      margin-bottom: 10px;
    }

    .search-box {
      outline: none;
      background-color: rgb(255, 255, 255);
      color: rgb(42, 42, 42);
      width: 600px;
      height: 45px;
      padding: 0px 10px 0px 34px;

      border: 1px solid rgb(207, 207, 207);
    }

    .fa-magnifying-glass {
      position: absolute;
      top: 16px;
      left: 13px;
      color: gray;
    }

    .select-box {
      width: 100px;
      height: 45px;
      border: 1px solid #5ecc80;
      margin-left: 6px;
      outline: none;
      padding: 0px 5px;
      cursor: pointer;
      color: #5ecc80;
    }

    .write-btn {
      width: 100px;
      height: 40px;
      border: none;
      outline: none;
      background-color: #5ecc80;
      color: white;
      cursor: pointer;
    }

    /* 게시판 목록 부분 */

    .content-section {
      background-color: white;
      border: 1px solid rgb(221, 221, 221);
    }

    .content-section-top {
      padding: 20px 30px;
      font-weight: 700;
      font-size: 15px;
    }

    .grid {
      display: grid;
      grid-template-columns: 0.6fr 2fr 2fr 2fr 1fr 1.5fr;
      margin-bottom: 100px;
    }

    .grid div {
      height: 45px;
      border-bottom: 1px solid rgb(219, 219, 219);
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 14px;
    }

    .grid-title {
      font-weight: 600;
    }

    .main-color {
      color: #5ecc80;
    }

    .btn-area {
      padding: 10px;
      margin-bottom: 200px;
    }

    .btn-area input {
      background-color: white;
      border: 1px solid #5ecc80;
      width: 90px;
      height: 35px;
      color: #5ecc80;
      cursor: pointer;
    }

    /* 가입신청 팝업창 */

    .study-popup-wrap {
      background-color: rgba(0, 0, 0, 0.3);
      justify-content: center;
      align-items: center;
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      display: none;
      padding: 15px;
      z-index: 1000;
    }

    .study-popup {
      width: 100%;
      max-width: 290px;
      border-radius: 4px;
      overflow: hidden;
      background-color: #ffffff;
      box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
      padding: 36px;
    }

    .study-popup-head {
      width: 100%;
      height: 50px;
      margin-bottom: 30px;
    }

    .study-popup-head div:first-child {
      color: #5ecc80;
      font-size: 23px;
      font-weight: 700;
      margin-bottom: 20px;
      text-align: center;
    }

    .study-popup-body {
      width: 100%;
      background-color: #ffffff;
    }
    .study-body-content {
      width: 100%;
    }
    .study-body-titlebox div:first-child {
      font-weight: 500;
      margin-bottom: 14px;
      font-size: 17px;
    }

    .study-body-titlebox div:last-child {
      margin-bottom: 5px;
      font-size: 13px;
      color: gray;
    }
    .study-body-contentbox input {
      width: 100%;
      height: 40px;
      border: 1px solid rgb(218, 218, 218);
      border-radius: 3px;
      margin-top: 3px;
      margin-bottom: 20px;
      outline: none;
      padding: 3px 10px;
      box-sizing: border-box;
    }

    .study-popup-foot {
      width: 100%;
      height: 30px;
      display: flex;
      justify-content: flex-end;
    }

    .study-pop-btn {
      width: 55px;
      height: 30px;
      border-radius: 3px;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 12px;
      cursor: pointer;
    }

    .study-pop-btn:first-child {
      background-color: #5ecc80;

      color: white;
      margin-right: 5px;
    }

    .study-pop-btn:last-child {
      background-color: #ffffff;

      color: rgb(168, 168, 168);
      border: 1px solid rgb(207, 207, 207);
    }

    .relative {
      position: relative;
    }

    .main1 i,
    .main2 i {
      position: absolute;
      top: 22px;
      right: 11px;
      font-size: 16px;
      color: gray;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">관리자 로그 내역</div>
      <div class="wrapper">
        <section class="search-section space-between">
          <div class="relative">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input
              type="text"
              placeholder="내용을 입력해주세요"
              class="search-box"
            /><select name="" id="" class="select-box">
              <option value="">닉네임</option>
              <option value="">아이디</option>
            </select>
            <select name="" id="" class="select-box">
              <option value="">로그인</option>
              <option value="">로그아웃</option>
            </select>
          </div>
        </section>
        <section class="content-section">
          <div class="content-section-top">
            <span>전체 로그</span>
            <span class="main-color">100</span>
            <span>건</span>
          </div>
          <div class="grid">
            <div class="grid-title">번호</div>
            <div class="grid-title">닉네임</div>
            <div class="grid-title">아이디</div>
            <div class="grid-title">로그시간</div>
            <div class="grid-title">로그정보</div>
            <div class="grid-title">접속IP</div>

            <% for(int i=1; i<=10; i++) {%>

            <div>1</div>
            <div>
              <a href="/app/mystudy/board/detail">한혜원</a>
            </div>
            <div>hyewon@gmail.com</div>
            <div>2022-12-11 12:12:12</div>
            <div>로그아웃</div>
            <div>127.0.0.1</div>

            <%}%>
          </div>
        </section>
      </div>
    </div>

    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
