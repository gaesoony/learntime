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

    /* 팝업 */
    * {
      box-sizing: border-box;
    }
    .shadow {
      box-shadow: rgba(0, 0, 0, 0.088) 0px 2px 4px;
    }

    .flex {
      display: flex;
      align-items: center;
    }

    .wrapper {
      padding: 20px 5px 20px 20px;
    }

    .center {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .hidden {
      display: none;
    }

    .cursor {
      cursor: pointer;
    }

    .relative {
      position: relative;
    }

    .popup-list {
      flex-wrap: wrap;
    }

    .popup-list li {
      width: 370px;
      height: 300px;
      background-color: white;
      box-shadow: rgba(0, 0, 0, 0.088) 0px 2px 4px;
      margin-bottom: 20px;
      margin-right: 20px;
    }

    .popup-list header {
      padding: 6px;
      height: 45px;
      border-bottom: 1px solid rgb(236, 236, 236);
      display: flex;
      font-size: 14px;
    }

    .header-section:first-child {
      width: 30px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .header-section:last-child {
      width: 40px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .header-section:nth-child(2) {
      width: 300px;
      display: flex;
      display: flex;
      justify-content: flex-start;
      align-items: center;
    }

    .status {
      border: 1px solid rgb(215, 215, 215);
      border-radius: 20px;
      color: red;
      padding: 5px;
      font-size: 12px;
      margin-left: 7px;
    }

    .more {
      background-color: rgb(238, 238, 238);
      border-radius: 50%;
      width: 30px;
      height: 30px;
      cursor: pointer;
    }
    .more i {
      font-size: 18px;
    }

    .popup-img img {
      width: 100%;
      height: 190px;
    }

    .popup-date-section {
      font-size: 14px;
      color: rgb(57, 57, 57);
      padding: 10px 15px;
    }

    .popup-date:first-child {
      margin-bottom: 7px;
    }

    .more-list {
      position: absolute;
      bottom: -106px;
      right: 0px;
    }

    .more-list a {
      display: flex;
      padding-left: 20px;
      align-items: center;
      width: 150px;
      height: 35px;
      background-color: white;
      font-size: 13px;
    }

    .more-list a:hover {
      background-color: #dbf1d5;
    }

    /* 검색부분 */

    .search-section {
      margin-bottom: 24px;
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
      top: 14px;
      left: 15px;
      color: gray;
    }

    .select-box {
      width: 100px;
      height: 45px;
      border: 1px solid #5ecc80;
      margin-left: 2px;
      outline: none;
      padding: 0px 5px;
      cursor: pointer;
      color: #5ecc80;
    }

    .add-btn {
      position: absolute;
      top: 0px;
      left: 716px;
      width: 100px;
      height: 45px;
      border: none;
      outline: none;
      background-color: #5ecc80;
      color: white;
      cursor: pointer;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">팝업 관리</div>
      <div class="wrapper">
        <section class="search-section">
          <div class="relative">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input
              type="text"
              placeholder="제목을 입력해주세요"
              class="search-box"
            />
            <select name="" id="" class="select-box">
              <option value="">전체</option>
              <option value="">활성화</option>
              <option value="">비활성화</option>
              <option value="">삭제</option>
            </select>
            <input
              type="button"
              value="팝업추가"
              class="add-btn"
              onclick="location.href='${path}/admin/popup/write'"
            />
          </div>
        </section>
        <ul class="popup-list flex">
          <c:forEach items="${popupList}" var="map">
            <li>
              <header class="relative">
                <div class="header-section">${map.NO}</div>
                <div class="header-section">
                  <span>${map.TITLE}</span>
                  <c:if test="${map.STATUS == 'A'}">
                    <span class="status">활성화</span>
                  </c:if>
                  <c:if test="${map.STATUS == 'B'}">
                    <span class="status">비활성화</span>
                  </c:if>
                </div>
                <div class="header-section">
                  <div class="more center" onclick="showMoreList(event);">
                    <i
                      class="fa-solid fa-ellipsis"
                      onclick="showMoreList2(event)"
                    ></i>
                  </div>
                </div>
                <ul class="more-list hidden">
                  <a href="${path}/admin/popup/edit?no=${map.NO}">수정</a>
                  <c:if test="${map.STATUS == 'A'}">
                    <a href="${path}/admin/popup/disable?no=${map.NO}"">비활성화</a>
                  </c:if>
                  <c:if test="${map.STATUS == 'B'}">
                    <a href="${path}/admin/popup/enable?no=${map.NO}"">활성화</a>
                  </c:if>
                  <a href="${path}/admin/popup/delete?no=${map.NO}"">영구삭제</a>
                </ul>
              </header>
              <section class="popup-img">
                <img
                  src="${path}/resources/upload/popup/${map.IMG_PATH}"
                  alt=""
                />
              </section>
              <section class="popup-date-section">
                <div class="popup-date">
                  <span>기간 : </span>
                  <span>${map.START_DATE} ~ ${map.END_DATE}</span>
                </div>
                <div class="popup-date">
                  <span>등록일시 : </span>
                  <span>${map.ENROLL_DATE}</span>
                </div>
              </section>
            </li>
          </c:forEach>
        </ul>
      </div>
    </div>
    <script>
      function showMoreList(e) {
        const list = e.target.parentNode.parentNode.querySelector(".more-list");
        list.classList.toggle("hidden");
      }

      function showMoreList(e) {
        const list =
          e.target.parentNode.parentNode.parentNode.querySelector(".more-list");
        list.classList.toggle("hidden");
      }
    </script>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
