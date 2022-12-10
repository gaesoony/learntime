<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/mystudy/manage/info.css"
    />
    <link
      href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
      rel="stylesheet"
    />

    <!-- include summernote css/js-->
    <link
      href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main class="space-between">
      <%@ include file="/WEB-INF/views/mystudy/common/manage-side.jsp" %>
      <article class="mystudy-article">
        <div class="mystudy-board-title">스터디 정보</div>
        <div>
          <main class="study-recruit-main">
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

                        <div class="selected selected-type">
                          스터디/프로젝트
                        </div>
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
                            dayNames: [
                              "일",
                              "월",
                              "화",
                              "수",
                              "목",
                              "금",
                              "토",
                            ],
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
                  const optionsListWay =
                    document.querySelectorAll(".option-way");
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
                      selectedType.innerHTML =
                        o.querySelector("label").innerHTML;
                      optionsContainerType.classList.remove("active");
                    });
                  });

                  optionsListWay.forEach((o) => {
                    o.addEventListener("click", () => {
                      selectedWay.innerHTML =
                        o.querySelector("label").innerHTML;
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
                      selectedTech.innerHTML =
                        o.querySelector("label").innerHTML;
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
                <input
                  type="text"
                  placeholder="태그를 설정하세요 (최대 10개)"
                />
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
          </main>
        </div>
      </article>
    </main>

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
  </body>
</html>
