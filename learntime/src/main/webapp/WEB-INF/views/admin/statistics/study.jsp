<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <!-- <link rel="stylesheet" href="/app/.css"> -->
    <title>Insert title here</title>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css"
    />
    <script src="${pageContext.request.contextPath}/resources/js/admin/statistics/study.js"></script>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
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

    * {
      font-family: "Noto Sans KR", sans-serif;
      box-sizing: border-box;
    }

    .flex {
      display: flex;
      align-items: center;
    }

    .space-between {
      display: flex;
      justify-content: space-between;
    }

    .hidden {
      display: none;
    }

    .info-section {
      margin-bottom: 30px;
    }

    .info-list li {
      width: 270px;
      height: 150px;
      background-color: white;
      padding: 24px;
      margin-right: 20px;
    }

    .info-list {
      display: flex;
      /* justify-content: space-between; */
    }

    .info-img {
      border-radius: 5px;
      width: 40px;
      height: 40px;
      display: flex;
      justify-content: center;
      align-items: center;
      margin-right: 15px;
    }

    .blue {
      background-color: #2f81ed5a;
    }

    .purple {
      background-color: #9281db56;
    }

    .pink {
      background-color: #f0a0a06f;
    }

    .yellow {
      background-color: #ffb9495f;
    }

    .info-img i {
      font-size: 20px;
      color: white;
    }

    .info-title div:first-child {
      font-size: 18px;
      margin-bottom: 8px;
      font-weight: 700;
      word-spacing: -4px;
    }

    .info-title div:last-child {
      font-size: 11px;
      color: gray;
    }

    .info-top {
      margin-bottom: 30px;
    }

    .info-bottom div:first-child {
      font-size: 30px;
      font-weight: 700;
    }

    .info-bottom div:last-child {
      font-size: 16px;
      font-weight: 500;
    }

    .wrapper {
      padding: 20px;
    }

    .shadow {
      box-shadow: rgba(0, 0, 0, 0.088) 0px 2px 4px;
    }

    .statistics-list {
      display: flex;
      flex-wrap: wrap;
    }

    .statistics {
      width: 560px;
      height: 350px;
      background-color: white;
      margin-right: 20px;
      margin-bottom: 20px;
    }

    .statistics:first-child {
      width: 1140px;
      height: 500px;
      background-color: white;
      margin-right: 20px;
      margin-bottom: 20px;
    }

    .statistics header {
      height: 50px;
      border-bottom: 1px solid rgb(225, 225, 225);
      padding: 0px 20px;
      display: flex;
      justify-content: space-between;
      font-size: 16px;
      /* font-weight: 600; */
    }

    .chart-div {
      height: 300px;
      padding: 40px;
      display: flex;
      align-items: center;
      position: relative;
    }

    .legend-div {
      position: absolute;
      top: 41px;
      left: 309px;
      height: 193px;
      overflow: auto;
    }

    .legend-div::-webkit-scrollbar {
      display: none;
    }

    .legend-div ul li {
      margin: 20px 0px;
      color: #666;
      font-family: "Noto Sans KR", sans-serif;
    }

    .legend-div ul li span {
      display: inline-block;
      width: 15px;
      height: 15px;
      border-radius: 50%;
      margin-right: 15px;
      vertical-align: middle;
    }

    .material-symbols-outlined {
      font-variation-settings: "FILL" 1, "wght" 400, "GRAD" 0, "opsz" 48;
      color: gray;
      cursor: pointer;
    }

    .btn-active {
      color: rgb(237, 114, 77);
    }

    .height {
      height: 430px;
    }

    .tech-legend {
      height: 390px;
      width: 660px;
      top: 79px;
      left: 427px;
    }

    .tech-legend ul {
      display: flex;
      flex-wrap: wrap;
    }

    .tech-legend ul li {
      margin-left: 10px;
    }

    .tech-legend ul li span {
      margin-right: 3px;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">
        스터디/프로젝트 통계
      </div>
      <div class="wrapper">
        <section class="info-section">
          <ul class="info-list">
            <li class="shadow">
              <div class="info-top flex">
                <div class="info-img blue">
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="info-title">
                  <div>오늘 생성 스터디</div>
                  <div>Today's Pageview</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>1500</div>
                <div><span>+1115&nbsp</span><span>+11.01%</span></div>
              </div>
            </li>
            <li class="shadow">
              <div class="info-top flex">
                <div class="info-img purple">
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="info-title">
                  <div>오늘 생성 프로젝트</div>
                  <div>Today's Pageview</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>1500</div>
                <div><span>+1115&nbsp</span><span>+11.01%</span></div>
              </div>
            </li>
            <li class="shadow">
              <div class="info-top flex">
                <div class="info-img pink">
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="info-title">
                  <div>오늘 가입신청</div>
                  <div>Today's Pageview</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>1500</div>
                <div><span>+1115&nbsp</span><span>+11.01%</span></div>
              </div>
            </li>
            <li class="shadow">
              <div class="info-top flex">
                <div class="info-img yellow">
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="info-title">
                  <div>오늘 강퇴인원</div>
                  <div>Today's Pageview</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>1500</div>
                <div><span>+1115&nbsp</span><span>+11.01%</span></div>
              </div>
            </li>
          </ul>
        </section>
        <ul class="statistics-list">
          <li class="statistics">
            <header class="flex">
              <div>기술스택</div>
              <div>
                <span
                  class="material-symbols-outlined btn-active pie-btn"
                  onclick="showPieChart(event)"
                >
                  pie_chart
                </span>
                <span
                  class="material-symbols-outlined bar-btn"
                  onclick="showBarChart(event)"
                >
                  insert_chart
                </span>
              </div>
            </header>
            <section class="pie-chart-section">
              <div class="chart-div height">
                <canvas
                  id="chart-mentor-type"
                  width="350px"
                  height="350px"
                ></canvas>
                <div
                  id="legend-mentor-type"
                  class="legend-div tech-legend"
                ></div>
              </div>
            </section>
            <section class="hidden bar-chart-section">
              <div class="chart-div height">
                <canvas
                  id="bar-mentor-type"
                  width="1050px"
                  height="400px"
                ></canvas>
              </div>
            </section>
          </li>
          <li class="statistics">
            <header class="flex">
              <div>온라인/오프라인</div>
              <div>
                <span
                  class="material-symbols-outlined btn-active pie-btn"
                  onclick="showPieChart(event)"
                >
                  pie_chart
                </span>
                <span
                  class="material-symbols-outlined bar-btn"
                  onclick="showBarChart(event)"
                >
                  insert_chart
                </span>
              </div>
            </header>
            <section class="pie-chart-section">
              <div class="chart-div">
                <canvas
                  id="chart-mentor-job-type"
                  width="220px"
                  height="220px"
                ></canvas>
                <div id="legend-mentor-job-type" class="legend-div"></div>
              </div>
            </section>
            <section class="hidden bar-chart-section">
              <div class="chart-div">
                <canvas
                  id="bar-mentor-job-type"
                  width="480px"
                  height="250px"
                ></canvas>
              </div>
            </section>
          </li>
          <li class="statistics">
            <header class="flex">
              <div>스터디/프로젝트</div>
              <div>
                <span
                  class="material-symbols-outlined btn-active pie-btn"
                  onclick="showPieChart(event)"
                >
                  pie_chart
                </span>
                <span
                  class="material-symbols-outlined bar-btn"
                  onclick="showBarChart(event)"
                >
                  insert_chart
                </span>
              </div>
            </header>
            <section class="pie-chart-section">
              <div class="chart-div">
                <canvas
                  id="chart-mentor-job"
                  width="220px"
                  height="220px"
                ></canvas>
                <div id="legend-mentor-job" class="legend-div"></div>
              </div>
            </section>
            <section class="hidden bar-chart-section">
              <div class="chart-div">
                <canvas
                  id="bar-mentor-job"
                  width="480px"
                  height="250px"
                ></canvas>
              </div>
            </section>
          </li>
          <li class="statistics">
            <header class="flex">
              <div>모집중/모집완료</div>
              <div>
                <span
                  class="material-symbols-outlined btn-active pie-btn"
                  onclick="showPieChart(event)"
                >
                  pie_chart
                </span>
                <span
                  class="material-symbols-outlined bar-btn"
                  onclick="showBarChart(event)"
                >
                  insert_chart
                </span>
              </div>
            </header>
            <section class="pie-chart-section">
              <div class="chart-div">
                <canvas
                  id="chart-mentor-career"
                  width="220px"
                  height="220px"
                ></canvas>
                <div id="legend-mentor-career" class="legend-div"></div>
              </div>
            </section>
            <section class="hidden bar-chart-section">
              <div class="chart-div">
                <canvas
                  id="bar-mentor-career"
                  width="480px"
                  height="250px"
                ></canvas>
              </div>
            </section>
          </li>
        </ul>
      </div>
    </div>
    <script>
      function showPieChart(e) {
        const parent = e.target.parentNode.parentNode.parentNode;
        const pieSection = parent.querySelector(".pie-chart-section");
        const barSection = parent.querySelector(".bar-chart-section");

        pieSection.classList.remove("hidden");
        barSection.classList.add("hidden");

        const pieBtn = parent.querySelector(".pie-btn");
        const barBtn = parent.querySelector(".bar-btn");
        pieBtn.classList.add("btn-active");
        barBtn.classList.remove("btn-active");
      }

      function showBarChart(e) {
        const parent = e.target.parentNode.parentNode.parentNode;
        const pieSection = parent.querySelector(".pie-chart-section");
        const barSection = parent.querySelector(".bar-chart-section");

        pieSection.classList.add("hidden");
        barSection.classList.remove("hidden");

        const pieBtn = parent.querySelector(".pie-btn");
        const barBtn = parent.querySelector(".bar-btn");
        pieBtn.classList.remove("btn-active");
        barBtn.classList.add("btn-active");
      }
    </script>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
