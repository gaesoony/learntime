<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <!-- <link rel="stylesheet" href="/app/.css"> -->
    <title>Insert title here</title>
    <link
      href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
      rel="stylesheet"
    />

    <!-- include summernote css/js-->
    <link
      href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
      rel="stylesheet"
    />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <style>
    * {
      font-family: "Noto Sans KR", sans-serif;
      box-sizing: border-box;
    }

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
      /* padding: 40px 100px; */
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

    .relative {
      position: relative;
    }

    /* info.css */

    /* 스터디모집페이지 css가져옴 */

    @charset "utf-8";
    * {
      box-sizing: border-box;
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

    .bold900 {
      font-weight: 900;
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

    .hidden {
      display: none;
    }

    /* 스터디모집 1200 */

    .study-recruit-main {
      /* width: 850px; */
      padding: 30px;
    }

    /* 프로젝트 기본정보 */

    .study-info {
      margin-top: 10px;
    }

    .study-info-bottom {
      margin-top: 20px;
      width: 800px;
      margin-bottom: 60px;
    }

    .study-recruit-num {
      width: 25px;
      height: 25px;
      background-color: #5ecc80;
      border-radius: 50%;
      color: white;
      margin-right: 10px;
      line-height: 25px;
    }

    .study-recruit-title h1 {
      font-weight: 700;
      font-size: 18px;
    }

    .study-recruit-title {
      padding-bottom: 25px;
    }

    /* 셀렉트 박스 */

    .container-list {
      margin-left: 10px;
      display: grid;
      grid-template-columns: 1fr 1fr;
    }

    .container1 h2 {
      font-weight: 700;
      font-size: 15px;
      margin-bottom: 15px;
    }

    .container-title {
      font-weight: 700;
      font-size: 15px;
      margin-bottom: 15px;
    }

    .container-title div:last-child {
      font-weight: 400;
      font-size: 13px;
      margin-left: 10px;
      color: #db4e23;
    }

    .container1 {
      margin-bottom: 15px;
    }

    .select-box {
      display: flex;
      width: 330px;
      flex-direction: column;
    }

    .box {
      padding: 10px 17px 12px 17px;
      width: 330px;
      background: #ffffff;
      border-radius: 5px;
      margin-bottom: 8px;
      color: #727272;

      position: relative;
      border: 1px solid gray;
      height: 45px;
    }

    .select-box .options-container {
      background: #ffffff;
      color: #505050;
      max-height: 0;
      width: 100%;
      opacity: 0;
      transition: all 0.4s;
      border-radius: 5px;
      overflow: hidden;
      border: 1px solid gray;
      font-weight: 700;
      order: 1;
      position: absolute;
      top: 55px;
      z-index: 10;
      box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px,
        rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
    }

    .selected {
      background: #ffffff;
      border-radius: 5px;
      margin-bottom: 8px;
      color: #727272;
      font-weight: 700;
      position: relative;
      border: 1px solid gray;
      height: 45px;

      order: 0;
    }

    .selected:not(.selected-people):after {
      content: "";
      background: url("${pageContext.request.contextPath}/resources/img/study/arrow_down.png");

      background-size: contain;
      background-repeat: no-repeat;

      position: absolute;
      height: 100%;
      width: 32px;
      right: 10px;
      top: 5px;

      transition: all 0.4s;
    }

    .box input {
      width: 300px;
      border: none;
      outline: #505050;
      font-size: 15px;
      color: #767676;
      font-weight: 700;
      cursor: pointer;
    }

    .selected-people input {
      width: 250px;
      border: none;
      outline: #505050;
      font-size: 15px;
      color: #505050;
      font-weight: 700;
    }

    .selected-people:after {
      content: "명";
      font-weight: 700;
      background-size: contain;
      background-repeat: no-repeat;

      position: absolute;
      height: 100%;
      width: 32px;
      right: 5px;
      top: 13px;

      transition: all 0.4s;
    }

    .fa-calendar-days,
    .fa-clock {
      position: absolute;
      right: 19px;
      top: 14px;
      cursor: pointer;
    }

    .select-box .options-container.active {
      max-height: 240px;
      opacity: 1;
      overflow-y: scroll;
    }

    .select-box .options-container.active + .selected::after {
      transform: rotateX(180deg);
      top: -6px;
    }

    .select-box .option,
    .selected {
      padding: 12px 17px 12px 17px;
      cursor: pointer;
    }

    .select-box .option:hover {
      background: #7ffe9232;
    }

    .select-box label {
      cursor: pointer;
    }

    .select-box .option .radio {
      display: none;
    }

    /* datepicker */

    .ui-widget-header {
      border: none !important;
      background-color: transparent !important;
    }

    .ui-state-default,
    .ui-widget-content .ui-state-default,
    .ui-widget-header .ui-state-default,
    .ui-button,
    html .ui-button.ui-state-disabled:hover,
    html .ui-button.ui-state-disabled:active {
      border: 1px solid rgb(255, 255, 255) !important;
      background: #fff !important;
      font-weight: normal !important;
      color: #454545 !important;
      text-align: center !important;
      font-size: 14px;
    }

    .ui-widget.ui-widget-content {
      width: 260px;
    }

    .ui-datepicker .ui-datepicker-title {
      font-size: 15px;
    }

    .ui-datepicker .ui-datepicker-header {
      width: 100%;
    }

    .ui-datepicker th {
      font-size: 15px;
      padding: 0.7em !important;
    }

    .ui-datepicker-calendar th:first-child {
      color: #ff0000 !important;
    }

    .ui-datepicker-calendar th:nth-last-child(1) {
      color: #0d47a1 !important;
    }

    .ui-datepicker-calendar tr td:first-child a {
      color: #ff0000 !important;
    }

    .ui-datepicker-calendar tr td:nth-last-child(1) a {
      color: #0d47a1 !important;
    }

    #time1,
    #time2,
    .datepicker {
      /* padding-bottom: 10px; */
    }

    /* 가입 질문 */

    .recruit-question-area {
      margin: 30px 0px;
      padding-left: 10px;
    }

    .recruit-question-area-top {
      margin-bottom: 20px;
      height: 20px;
    }

    .recruit-question-area-top div:first-child {
      font-weight: 700;
    }

    .recruit-question-area-top div:nth-child(2) {
      margin-left: 5px;
      margin-right: 15px;
      cursor: pointer;
    }

    .recruit-question-list li {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
    }

    .recruit-question-list li div {
      font-weight: 700;
      margin-right: 15px;
    }

    .recruit-question-list li input {
      width: 680px;
      height: 35px;
      padding: 5px;
      border-radius: 5px;
      border: 1px solid rgb(173, 173, 173);
      margin-right: 5px;
      outline: none;
      padding-left: 10px;
    }

    .recruit-question-list li i {
      font-size: 33px;
      color: gray;
    }

    .recruit-question-explain {
      margin-top: 40px;
    }

    .recruit-question-explain p {
      color: gray;
      margin-bottom: 5px;
      font-size: 14px;
    }

    .fa-square {
      font-size: 21px;
      margin-top: 1px;
      margin-left: 6px;
      margin-right: 17px;
    }

    /* 프로젝트 소개 */

    .text-area {
      padding: 0px 10px;
    }

    .study-introduce-title {
      margin-left: 10px;
      font-size: 20px;
      font-weight: 700;
      color: gray;
      margin-bottom: 10px;
    }

    .study-introduce-title input {
      padding: 10px;
      border: none;
      width: 800px;
    }

    .study-introduce-title input:focus {
      outline: 2px solid rgba(161, 222, 180, 0.659);
      border-radius: 5px;
    }

    .study-introduce-tag {
      margin-left: 10px;
      margin-bottom: 30px;
    }

    .study-introduce-tag input {
      padding: 10px;
      border: none;
      width: 800px;
    }

    .study-introduce-tag input:focus {
      outline: 2px solid rgba(161, 222, 180, 0.659);
      border-radius: 5px;
    }

    /* 스터디 장소 */

    .study-location {
      margin: 70px 0px;
    }

    .myAddress {
      width: 400px;
      padding: 5px;
    }

    .myAddress-btn {
      background-color: #5ecc80;
      color: white;
      width: 50px;
      height: 35px;
      border-radius: 3px;
      border: none;
      margin-left: 5px;
    }

    .search-study-location {
      margin-bottom: 20px;
    }

    .edit-section {
      background-color: white;
      margin: 20px;
      padding: 40px;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">스터디/프로젝트</div>
      <div class="wrapper">
        <section class="edit-section">
          <section class="study-info">
            <div class="flex study-recruit-title">
              <div class="study-recruit-num center">1</div>
              <h1>프로젝트 기본 정보를 입력해주세요</h1>
            </div>
            <div class="study-info-bottom">
              <ul>
                <li class="container-list">
                  <div class="container1">
                    <h2>모집구분</h2>

                    <div class="select-box relative">
                      <div class="options-container options-container-type">
                        <div class="option option-type">
                          <input
                            type="radio"
                            class="radio"
                            id="study"
                            name="category"
                          />
                          <label for="study">스터디</label>
                        </div>

                        <div class="option option-type">
                          <input
                            type="radio"
                            class="radio"
                            id="project"
                            name="category"
                          />
                          <label for="project">프로젝트</label>
                        </div>
                      </div>

                      <div class="selected selected-type">스터디/프로젝트</div>
                    </div>
                  </div>
                  <div class="container1">
                    <div class="container-title flex">
                      <div>모집인원</div>
                      <div>2명~30명까지 가능합니다</div>
                    </div>

                    <div class="box">
                      <div class="selected-people">
                        <input
                          type="number"
                          min="2"
                          max="30"
                          required
                          placeholder="인원수를 입력해주세요"
                        />
                      </div>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>진행방식</h2>

                    <div class="select-box relative">
                      <div class="options-container options-container-way">
                        <div
                          class="option option-way"
                          onclick="locationOnOff(event)"
                        >
                          <input
                            type="radio"
                            class="radio"
                            id="online"
                            name="way"
                          />
                          <label for="online">온라인</label>
                        </div>

                        <div
                          class="option option-way"
                          onclick="locationOnOff(event)"
                        >
                          <input
                            type="radio"
                            class="radio"
                            id="offline"
                            name="way"
                          />
                          <label for="offline">오프라인</label>
                        </div>
                      </div>

                      <div class="selected selected-way">온라인/오프라인</div>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>진행기간</h2>

                    <div class="select-box relative">
                      <div class="options-container options-container-period">
                        <div class="option option-period">
                          <input
                            type="radio"
                            class="radio"
                            id="none"
                            name="period"
                          />
                          <label for="study">기간미정</label>
                        </div>

                        <div class="option option-period">
                          <input
                            type="radio"
                            class="radio"
                            id="1month"
                            name="period"
                          />
                          <label for="project">1개월</label>
                        </div>
                        <div class="option option-period">
                          <input
                            type="radio"
                            class="radio"
                            id="2month"
                            name="period"
                          />
                          <label for="project">2개월</label>
                        </div>
                        <div class="option option-period">
                          <input
                            type="radio"
                            class="radio"
                            id="3month"
                            name="period"
                          />
                          <label for="project">3개월</label>
                        </div>
                        <div class="option option-period">
                          <input
                            type="radio"
                            class="radio"
                            id="4month"
                            name="period"
                          />
                          <label for="project">4개월</label>
                        </div>
                        <div class="option option-period">
                          <input
                            type="radio"
                            class="radio"
                            id="5month"
                            name="period"
                          />
                          <label for="project">5개월</label>
                        </div>
                        <div class="option option-period">
                          <input
                            type="radio"
                            class="radio"
                            id="6monthover"
                            name="period"
                          />
                          <label for="project">6개월이상</label>
                        </div>
                      </div>

                      <div class="selected selected-period">
                        기간미정 ~ 6개월이상
                      </div>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>기술스택</h2>

                    <div class="select-box relative">
                      <div class="options-container options-container-tech">
                        <div class="option option-tech">
                          <input
                            type="radio"
                            class="radio"
                            id="java"
                            name="tech"
                          />
                          <label for="study">java</label>
                        </div>

                        <div class="option option-tech">
                          <input
                            type="radio"
                            class="radio"
                            id="spring"
                            name="tech"
                          />
                          <label for="project">spring</label>
                        </div>
                      </div>

                      <div class="selected selected-tech">
                        프로젝트 사용 스택
                      </div>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>시작예정일</h2>

                    <div class="box relative">
                      <input
                        class="datepicker"
                        placeholder="시작예정일을 선택해주세요"
                      /><i class="fa-solid fa-calendar-days"></i>
                      <script
                        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
                        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
                        crossorigin="anonymous"
                        referrerpolicy="no-referrer"
                      ></script>
                      <script
                        src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
                        integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
                        crossorigin="anonymous"
                        referrerpolicy="no-referrer"
                      ></script>
                      <link
                        rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"
                        integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ=="
                        crossorigin="anonymous"
                        referrerpolicy="no-referrer"
                      />
                      <script>
                        $.datepicker.setDefaults({
                          dateFormat: "yy-mm-dd",
                          prevText: "이전 달",
                          nextText: "다음 달",
                          monthNames: [
                            "1월",
                            "2월",
                            "3월",
                            "4월",
                            "5월",
                            "6월",
                            "7월",
                            "8월",
                            "9월",
                            "10월",
                            "11월",
                            "12월",
                          ],
                          monthNamesShort: [
                            "1월",
                            "2월",
                            "3월",
                            "4월",
                            "5월",
                            "6월",
                            "7월",
                            "8월",
                            "9월",
                            "10월",
                            "11월",
                            "12월",
                          ],
                          dayNames: ["일", "월", "화", "수", "목", "금", "토"],
                          dayNamesShort: [
                            "일",
                            "월",
                            "화",
                            "수",
                            "목",
                            "금",
                            "토",
                          ],
                          dayNamesMin: [
                            "일",
                            "월",
                            "화",
                            "수",
                            "목",
                            "금",
                            "토",
                          ],
                          showMonthAfterYear: true,
                          yearSuffix: "년",
                        });

                        $(function () {
                          $(".datepicker").datepicker();
                        });
                      </script>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>시작시간</h2>
                    <div class="box relative">
                      <input type="text" id="time1" name="time1" />
                      <i class="fa-solid fa-clock"></i>
                      <link
                        rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css"
                      />
                      <script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
                      <script>
                        $(function () {
                          $("#time1").timepicker({
                            timeFormat: "h:mm p",
                            interval: 30,
                            minTime: "0",
                            maxTime: "11:30pm",
                            defaultTime: "12",
                            startTime: "12:00",
                            dynamic: false,
                            dropdown: true,
                            scrollbar: true,
                          });
                        });
                      </script>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>종료시간</h2>
                    <div class="box relative">
                      <input type="text" id="time2" name="time2" />
                      <i class="fa-solid fa-clock"></i>
                      <script>
                        $(function () {
                          $("#time2").timepicker({
                            timeFormat: "h:mm p",
                            interval: 30,
                            minTime: "0",
                            maxTime: "11:30pm",
                            defaultTime: "12",
                            startTime: "12:00",
                            dynamic: false,
                            dropdown: true,
                            scrollbar: true,
                          });
                        });
                      </script>
                    </div>
                  </div>
                </li>
              </ul>
              <script>
                const selectedType = document.querySelector(".selected-type");
                const selectedWay = document.querySelector(".selected-way");
                const selectedPeriod =
                  document.querySelector(".selected-period");
                const selectedTech = document.querySelector(".selected-tech");

                const optionsContainerType = document.querySelector(
                  ".options-container-type"
                );
                const optionsContainerWay = document.querySelector(
                  ".options-container-way"
                );
                const optionsContainerPeriod = document.querySelector(
                  ".options-container-period"
                );
                const optionsContainerTech = document.querySelector(
                  ".options-container-tech"
                );

                const optionsListType =
                  document.querySelectorAll(".option-type");
                const optionsListWay = document.querySelectorAll(".option-way");
                const optionsListPeriod =
                  document.querySelectorAll(".option-period");
                const optionsListTech =
                  document.querySelectorAll(".option-tech");

                selectedType.addEventListener("click", () => {
                  optionsContainerType.classList.toggle("active");
                });

                selectedWay.addEventListener("click", () => {
                  optionsContainerWay.classList.toggle("active");
                });

                selectedPeriod.addEventListener("click", () => {
                  optionsContainerPeriod.classList.toggle("active");
                });

                selectedTech.addEventListener("click", () => {
                  optionsContainerTech.classList.toggle("active");
                });

                optionsListType.forEach((o) => {
                  o.addEventListener("click", () => {
                    selectedType.innerHTML = o.querySelector("label").innerHTML;
                    optionsContainerType.classList.remove("active");
                  });
                });

                optionsListWay.forEach((o) => {
                  o.addEventListener("click", () => {
                    selectedWay.innerHTML = o.querySelector("label").innerHTML;
                    optionsContainerWay.classList.remove("active");
                  });
                });

                optionsListPeriod.forEach((o) => {
                  o.addEventListener("click", () => {
                    selectedPeriod.innerHTML =
                      o.querySelector("label").innerHTML;
                    optionsContainerPeriod.classList.remove("active");
                  });
                });

                optionsListTech.forEach((o) => {
                  o.addEventListener("click", () => {
                    selectedTech.innerHTML = o.querySelector("label").innerHTML;
                    optionsContainerTech.classList.remove("active");
                  });
                });
              </script>
              <div class="recruit-question-area">
                <div class="recruit-question-area-top flex">
                  <div>가입 질문 사용하기</div>
                  <div class="question-btn-on hidden">✅</div>
                  <div class="question-btn-off">
                    <i class="fa-regular fa-square"></i>
                  </div>
                  <div onclick="create_question()">질문추가</div>
                </div>
                <ul class="recruit-question-list hidden">
                  <li>
                    <div>Q.</div>
                    <input type="text" name="" id="" />
                    <i
                      class="fa-solid fa-square-xmark"
                      onclick="delete_question(event)"
                    ></i>
                  </li>
                  <!-- <li>
                        <div>질문2</div>
                        <input type="text" name="" id="" />
                        <i class="fa-solid fa-square-xmark"></i>
                      </li>
                      <li>
                        <div>질문3</div>
                        <input type="text" name="" id="" />
                        <i class="fa-solid fa-square-xmark"></i>
                      </li> -->
                </ul>
                <div class="recruit-question-explain hidden">
                  <p>가입 질문은 5개까지 가능합니다.</p>
                  <p>
                    멤버의 개인정보(성명, 연락처 주소, 학교, 직장명, 출생지
                    등)를 확인할 수 있는 질문은 타인의 사생활을 침해할 수
                    있으며, 스터디 운영 목적과 무관하게 임의로 수집 및 이용한
                    개인정보는 법률적 문제가 발생할 수 있으므로 스터디 가입
                    질문은 최소한의 내용으로 작성해주시기 바랍니다.
                  </p>
                </div>
              </div>
            </div>
          </section>
          <section class="study-introduce">
            <div class="flex study-recruit-title">
              <div class="study-recruit-num center">2</div>
              <h1>프로젝트에 대해 소개해주세요</h1>
            </div>
            <div class="study-introduce-title">
              <input type="text" placeholder="제목을 입력하세요" />
            </div>
            <div class="study-introduce-tag">
              <input type="text" placeholder="태그를 설정하세요 (최대 10개)" />
            </div>
            <div class="text-area">
              <textarea name="editordata" id="summernote"></textarea>
            </div>
            <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
            <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
            <script>
              $(document).ready(function () {
                //여기 아래 부분
                $("#summernote").summernote({
                  height: 500, // 에디터 높이
                  minHeight: null, // 최소 높이
                  maxHeight: null, // 최대 높이
                  focus: true, // 에디터 로딩후 포커스를 맞출지 여부
                  lang: "ko-KR", // 한글 설정
                  placeholder: "최대 2048자까지 쓸 수 있습니다", //placeholder 설정
                });
              });
            </script>
          </section>
          <section class="study-location hidden">
            <div class="flex study-recruit-title">
              <div class="study-recruit-num center">3</div>
              <h1>프로젝트 장소를 입력해주세요</h1>
            </div>
            <div class="study-location-content">
              <div class="search-study-location">
                <input type="text" class="myAddress" /><input
                  type="button"
                  value="검색"
                  class="myAddress-btn"
                  onclick="searchLocation()"
                />
              </div>
              <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
              <script>
                window.onload = function () {
                  document
                    .querySelector(".myAddress")
                    .addEventListener("click", function () {
                      //주소입력칸을 클릭하면
                      //카카오 지도 발생
                      new daum.Postcode({
                        oncomplete: function (data) {
                          //선택시 입력값 세팅
                          document.querySelector(".myAddress").value =
                            data.address; // 주소 넣기
                          document
                            .querySelector("input[name=address_detail]")
                            .focus(); //상세입력 포커싱
                        },
                      }).open();
                    });
                };
              </script>
              <div id="map" style="width: 100%; height: 500px"></div>

              <script
                type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb4230ca104b4d83bce478dce786ba7d&libraries=services"
              ></script>
              <script>
                function searchLocation() {
                  var mapContainer = document.getElementById("map"), // 지도를 표시할 div
                    mapOption = {
                      center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                      level: 1, // 지도의 확대 레벨
                    };
                  // 지도를 생성합니다
                  var map = new kakao.maps.Map(mapContainer, mapOption);
                  // 주소-좌표 변환 객체를 생성합니다
                  var geocoder = new kakao.maps.services.Geocoder();
                  // 주소로 좌표를 검색합니다
                  geocoder.addressSearch(
                    document.querySelector(".myAddress").value,
                    function (result, status) {
                      // 정상적으로 검색이 완료됐으면
                      if (status === kakao.maps.services.Status.OK) {
                        var coords = new kakao.maps.LatLng(
                          result[0].y,
                          result[0].x
                        );
                        // 결과값으로 받은 위치를 마커로 표시합니다
                        var marker = new kakao.maps.Marker({
                          map: map,
                          position: coords,
                        });
                        // 인포윈도우로 장소에 대한 설명을 표시합니다
                        var infowindow = new kakao.maps.InfoWindow({
                          content:
                            '<div style="width:150px;text-align:center;padding:6px 0;">스터디장소</div>',
                        });
                        infowindow.open(map, marker);
                        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                        map.setCenter(coords);
                      }
                    }
                  );
                }
              </script>
            </div>
          </section>
        </section>
      </div>
    </div>
    <script>
      const questionBntOn = document.querySelector(".question-btn-on");
      const questionBntOff = document.querySelector(".question-btn-off");
      const recruitQuestionList = document.querySelector(
        ".recruit-question-list"
      );
      const recruitQuestionExplain = document.querySelector(
        ".recruit-question-explain"
      );

      questionBntOn.addEventListener("click", function () {
        this.classList.add("hidden");
        questionBntOff.classList.remove("hidden");
        recruitQuestionList.classList.add("hidden");
        recruitQuestionExplain.classList.add("hidden");
      });

      questionBntOff.addEventListener("click", function () {
        this.classList.add("hidden");
        questionBntOn.classList.remove("hidden");
        recruitQuestionList.classList.remove("hidden");
        recruitQuestionExplain.classList.remove("hidden");
      });
    </script>
    <script>
      let divCnt = 1;
      function create_question() {
        if (divCnt == 5) {
          return false;
        }
        let list = document.querySelector(".recruit-question-list");
        let new_li = document.createElement("li");
        let new_div = document.createElement("div");
        new_div.innerHTML = "Q.";

        new_li.appendChild(new_div);
        new_li.innerHTML +=
          "<input type='text' name='' id='' /><i class='fa-solid fa-square-xmark' onclick='delete_question(event)'></i>";
        list.appendChild(new_li);

        divCnt++;
      }

      function delete_question(e) {
        let li = e.target.parentNode;
        li.remove();
        divCnt--;
      }
    </script>
    <script>
      function locationOnOff(e) {
        let studyWay = document.querySelector(".selected-way");
        let studyWayStr = e.target.querySelector("label").innerHTML;

        let studyLocation = document.querySelector(".study-location");
        if (studyWayStr == "온라인" || studyWayStr == "온라인/오프라인") {
          studyLocation.classList.add("hidden");
        }

        if (studyWayStr == "오프라인") {
          studyLocation.classList.remove("hidden");
        }
      }
    </script>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
