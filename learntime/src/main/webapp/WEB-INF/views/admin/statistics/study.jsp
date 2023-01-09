<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

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
    <!-- <script src="${path}/resources/js/admin/statistics/study.js"></script> -->
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

    .info-bottom > div:last-child {
      font-size: 14px;
      font-weight: 400;
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
                  <div>Today's Study</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>${todayStudyCnt}</div>
                <div>
                  <span>어제 ${yesterdayStudyCnt}건 | </span>
                  <c:if test="${(todayStudyCnt - yesterdayStudyCnt) >= 0}">
                    <span>+${todayStudyCnt - yesterdayStudyCnt}건&nbsp | </span>
                  </c:if>
                  <c:if test="${(todayStudyCnt - yesterdayStudyCnt) < 0}">
                    <span>${todayStudyCnt - yesterdayStudyCnt}건&nbsp | </span>
                  </c:if>
                  <c:if test="${yesterdayStudyCnt == 0}">
                    <span>증가율없음</span>
                  </c:if>
                  <c:if test="${yesterdayStudyCnt != 0}">
                    <c:if
                      test="${((todayStudyCnt - yesterdayStudyCnt)/yesterdayStudyCnt * 100) >= 0}"
                    >
                      <span
                        >+${(todayStudyCnt -
                        yesterdayStudyCnt)/yesterdayStudyCnt * 100}%</span
                      >
                    </c:if>
                    <c:if
                      test="${((todayStudyCnt - yesterdayStudyCnt)/yesterdayStudyCnt * 100) < 0}"
                    >
                      <span
                        >${(todayStudyCnt - yesterdayStudyCnt)/yesterdayStudyCnt
                        * 100}%</span
                      >
                    </c:if>
                  </c:if>
                </div>
              </div>
            </li>
            <li class="shadow">
              <div class="info-top flex">
                <div class="info-img purple">
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="info-title">
                  <div>오늘 생성 프로젝트</div>
                  <div>Today's Project</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>${todayProjectCnt}</div>
                <div>
                  <span>어제 ${yesterdayProjectCnt}건 | </span>
                  <c:if test="${(todayProjectCnt - yesterdayProjectCnt) >= 0}">
                    <span
                      >+${todayProjectCnt - yesterdayProjectCnt}건&nbsp |
                    </span>
                  </c:if>
                  <c:if test="${(todayProjectCnt - yesterdayProjectCnt) < 0}">
                    <span
                      >${todayProjectCnt - yesterdayProjectCnt}건&nbsp |
                    </span>
                  </c:if>
                  <c:if test="${yesterdayProjectCnt == 0}">
                    <span>증가율없음</span>
                  </c:if>
                  <c:if test="${yesterdayProjectCnt != 0}">
                    <c:if
                      test="${((todayProjectCnt - yesterdayProjectCnt)/yesterdayProjectCnt * 100) >= 0}"
                    >
                      <span
                        >+${(todayProjectCnt -
                        yesterdayProjectCnt)/yesterdayProjectCnt * 100}%</span
                      >
                    </c:if>
                    <c:if
                      test="${((todayProjectCnt - yesterdayProjectCnt)/yesterdayProjectCnt * 100) < 0}"
                    >
                      <span
                        >${(todayProjectCnt -
                        yesterdayProjectCnt)/yesterdayProjectCnt * 100}%</span
                      >
                    </c:if>
                  </c:if>
                </div>
              </div>
            </li>
            <li class="shadow">
              <div class="info-top flex">
                <div class="info-img pink">
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="info-title">
                  <div>오늘 가입신청</div>
                  <div>Today's Apply</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>${todayGroupApplyCnt}</div>
                <div>
                  <span>어제 ${yesterdayGroupApplyCnt}건 | </span>
                  <c:if
                    test="${(todayGroupApplyCnt - yesterdayGroupApplyCnt) >= 0}"
                  >
                    <span
                      >+${todayGroupApplyCnt - yesterdayGroupApplyCnt}건&nbsp |
                    </span>
                  </c:if>
                  <c:if
                    test="${(todayGroupApplyCnt - yesterdayGroupApplyCnt) < 0}"
                  >
                    <span
                      >${todayGroupApplyCnt - yesterdayGroupApplyCnt}건&nbsp |
                    </span>
                  </c:if>
                  <c:if test="${yesterdayGroupApplyCnt == 0}">
                    <span>증가율없음</span>
                  </c:if>
                  <c:if test="${yesterdayGroupApplyCnt != 0}">
                    <c:if
                      test="${((todayGroupApplyCnt - yesterdayGroupApplyCnt)/yesterdayGroupApplyCnt * 100) >= 0}"
                    >
                      <span
                        >+${(todayGroupApplyCnt -
                        yesterdayGroupApplyCnt)/yesterdayGroupApplyCnt *
                        100}%</span
                      >
                    </c:if>
                    <c:if
                      test="${((todayGroupApplyCnt - yesterdayGroupApplyCnt)/yesterdayGroupApplyCnt * 100) < 0}"
                    >
                      <span
                        >${(todayGroupApplyCnt -
                        yesterdayGroupApplyCnt)/yesterdayGroupApplyCnt *
                        100}%</span
                      >
                    </c:if>
                  </c:if>
                </div>
              </div>
            </li>
            <!-- <li class="shadow">
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
            </li> -->
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
      let techStackNameArr = new Array();
      let techStackCntArr = new Array();

      let groupTypeNameArr = new Array();
      let groupTypeCntArr = new Array();

      let groupWayNameArr = new Array();
      let groupWayCntArr = new Array();

      let groupStatusNameArr = new Array();
      let groupStatusCntArr = new Array();

      let groupPeriodNameArr = new Array();
      let groupPeriodCntArr = new Array();

      <c:forEach items="${techStackSumList}" var="map">
        techStackNameArr.push("${map.NAME}");
      </c:forEach>;
      <c:forEach items="${techStackSumList}" var="map">
        techStackCntArr.push("${map.cnt}");
      </c:forEach>;

      <c:forEach items="${groupTypeSumList}" var="map">
        groupTypeNameArr.push("${map.NAME}");
      </c:forEach>;
      <c:forEach items="${groupTypeSumList}" var="map">
        groupTypeCntArr.push("${map.cnt}");
      </c:forEach>;

      <c:forEach items="${groupWaySumList}" var="map">
        groupWayNameArr.push("${map.NAME}");
      </c:forEach>;
      <c:forEach items="${groupWaySumList}" var="map">
        groupWayCntArr.push("${map.cnt}");
      </c:forEach>;
      console.log(typeof groupWayCntArr);
      <c:forEach items="${groupStatusSumList}" var="map">
        groupStatusNameArr.push("${map.name}");
      </c:forEach>;
      <c:forEach items="${groupStatusSumList}" var="map">
        groupStatusCntArr.push("${map.cnt}");
      </c:forEach>;

      <c:forEach items="${groupPeriodSumList}" var="map">
        groupPeriodNameArr.push("${map.NAME}");
      </c:forEach>;
      <c:forEach items="${groupPeriodSumList}" var="map">
        groupPeriodCntArr.push("${map.cnt}");
      </c:forEach>;
    </script>
    <script>
      window.onload = function () {
        chartDraw();
        // setLegendOnClick();
      };

      let mentorTypeData = {
        labels: techStackNameArr,
        datasets: [
          {
            data: techStackCntArr,
            backgroundColor: [
              "#5ecc80",
              "#fe8d6f",
              "#fdc453",
              "#dfdd6c",
              "#9adbc5",
              "#5ecc80",
              "#fe8d6f",
              "#fdc453",
              "#dfdd6c",
              "#9adbc5",
              "#5ecc80",
              "#fe8d6f",
              "#fdc453",
              "#dfdd6c",
              "#9adbc5",
              "#5ecc80",
              "#fe8d6f",
              "#fdc453",
              "#dfdd6c",
              "#9adbc5",
              "#5ecc80",
              "#fe8d6f",
              "#fdc453",
              "#dfdd6c",
              "#9adbc5",
              "#5ecc80",
              "#fe8d6f",
              "#fdc453",
              "#dfdd6c",
              "#9adbc5",
              "#dfdd6c",
              "#5ecc80",
              "#fe8d6f",
            ],
          },
        ],
      };

      let mentorJobTypeData = {
        labels: groupWayNameArr,
        datasets: [
          {
            data: groupWayCntArr,
            backgroundColor: ["#CDF2CA", "#FFDEFA"],
          },
        ],
      };

      let mentorJobData = {
        labels: groupTypeNameArr,
        datasets: [
          {
            data: groupTypeCntArr,
            backgroundColor: ["#4ea1d3", "#FFB2A6"],
          },
        ],
      };

      let mentorCareerData = {
        labels: groupStatusNameArr,
        datasets: [
          {
            data: groupStatusCntArr,
            backgroundColor: [
              "#CAB8FF",
              "#CCF3EE",
              "#fdc453",
              "#dfdd6c",
              "#9adbc5",
            ],
          },
        ],
      };

      let chartDraw = function () {
        let chartMentorType = document
          .getElementById("chart-mentor-type")
          .getContext("2d");

        let barMentorType = document
          .getElementById("bar-mentor-type")
          .getContext("2d");

        window.pieChart = new Chart(chartMentorType, {
          type: "pie",
          data: mentorTypeData,
          options: {
            responsive: false,
            legend: {
              display: false,
            },
            legendCallback: customLegend,
          },
        });

        new Chart(barMentorType, {
          type: "bar",
          data: mentorTypeData,
          options: {},
        });

        document.getElementById("legend-mentor-type").innerHTML =
          window.pieChart.generateLegend();

        let chartMentorJobType = document
          .getElementById("chart-mentor-job-type")
          .getContext("2d");

        let barMentorJobType = document
          .getElementById("bar-mentor-job-type")
          .getContext("2d");

        window.pieChart = new Chart(chartMentorJobType, {
          type: "pie",
          data: mentorJobTypeData,
          options: {
            responsive: false,
            legend: {
              display: false,
            },
            legendCallback: customLegend,
          },
        });

        const test = [];
        <c:forEach items="${groupTypeSumList}" var="map">
          test.push("${map.cnt}")
        </c:forEach>;
        console.log(test);
        new Chart(barMentorJobType, {
          type: "bar",
          data: {
            labels: ["온라인", "오프라인"],
            datasets: [
              {
                data: test,
                backgroundColor: ["#CDF2CA", "#FFDEFA"],
              },
            ],
          },
          options: {
            responsive: false,
            legend: {
              display: false,
            },
          },
        });

        document.getElementById("legend-mentor-job-type").innerHTML =
          window.pieChart.generateLegend();

        let chartMentorJob = document
          .getElementById("chart-mentor-job")
          .getContext("2d");

        let barMentorJob = document
          .getElementById("bar-mentor-job")
          .getContext("2d");

        window.pieChart = new Chart(chartMentorJob, {
          type: "pie",
          data: mentorJobData,
          options: {
            responsive: false,
            legend: {
              display: false,
            },
            legendCallback: customLegend,
          },
        });

        new Chart(barMentorJob, {
          type: "bar",
          data: mentorJobData,
          options: {
            responsive: false,
            legend: {
              display: false,
            },
          },
        });

        document.getElementById("legend-mentor-job").innerHTML =
          window.pieChart.generateLegend();

        let chartMentorCareer = document
          .getElementById("chart-mentor-career")
          .getContext("2d");

        let barMentorCareer = document
          .getElementById("bar-mentor-career")
          .getContext("2d");

        window.pieChart = new Chart(chartMentorCareer, {
          type: "pie",
          data: mentorCareerData,
          options: {
            responsive: false,
            legend: {
              display: false,
            },
            legendCallback: customLegend,
          },
        });

        new Chart(barMentorCareer, {
          type: "bar",
          data: mentorCareerData,
          options: {
            responsive: false,
            legend: {
              display: false,
            },
          },
        });

        document.getElementById("legend-mentor-career").innerHTML =
          window.pieChart.generateLegend();
      };

      let customLegend = function (chart) {
        let ul = document.createElement("ul");
        let color = chart.data.datasets[0].backgroundColor;

        chart.data.labels.forEach(function (label, index) {
          ul.innerHTML +=
            "<li data-index=" +
            index +
            "><span style=background-color:" +
            color[index] +
            "></span>" +
            label +
            "</li>";
        });

        return ul.outerHTML;
      };
    </script>
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
