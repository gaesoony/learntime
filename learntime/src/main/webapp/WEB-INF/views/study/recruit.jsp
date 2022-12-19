<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="/app/resources/css/variables.css" />
    <link rel="stylesheet" href="/app/resources/css/study/recruit.css?ver=5" />

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

    <!-- datepicker -->
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="middle">
      <main class="study-recruit-main">
        <section class="study-info">
          <div class="flex study-recruit-title">
            <div class="study-recruit-num center">1</div>
            <h1>프로젝트 기본 정보를 입력해주세요</h1>
          </div>
          <div>
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
                          name="groupType"
                        />
                        <label for="study">스터디</label>
                      </div>

                      <div class="option option-type">
                        <input
                          type="radio"
                          class="radio"
                          id="project"
                          name="groupType"
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
                        name="numberPeople"
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
                          name="groupWay"
                          onclick="locationOnOff2(event)"
                        />
                        <label for="online" onclick="locationOnOff2(event)"
                          >온라인</label
                        >
                      </div>

                      <div
                        class="option option-way"
                        onclick="locationOnOff(event)"
                      >
                        <input
                          type="radio"
                          class="radio"
                          id="offline"
                          name="groupWay"
                          onclick="locationOnOff2(event)"
                        />
                        <label for="offline" onclick="locationOnOff2(event)"
                          >오프라인</label
                        >
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
                          name="groupPeriod"
                        />
                        <label for="none">기간미정</label>
                      </div>

                      <div class="option option-period">
                        <input
                          type="radio"
                          class="radio"
                          id="1month"
                          name="groupPeriod"
                        />
                        <label for="1month">1개월</label>
                      </div>
                      <div class="option option-period">
                        <input
                          type="radio"
                          class="radio"
                          id="2month"
                          name="groupPeriod"
                        />
                        <label for="2month">2개월</label>
                      </div>
                      <div class="option option-period">
                        <input
                          type="radio"
                          class="radio"
                          id="3month"
                          name="groupPeriod"
                        />
                        <label for="3month">3개월</label>
                      </div>
                      <div class="option option-period">
                        <input
                          type="radio"
                          class="radio"
                          id="4month"
                          name="groupPeriod"
                        />
                        <label for="4month">4개월</label>
                      </div>
                      <div class="option option-period">
                        <input
                          type="radio"
                          class="radio"
                          id="5month"
                          name="groupPeriod"
                        />
                        <label for="5month">5개월</label>
                      </div>
                      <div class="option option-period">
                        <input
                          type="radio"
                          class="radio"
                          id="6month"
                          name="groupPeriod"
                        />
                        <label for="6month">6개월</label>
                      </div>
                      <div class="option option-period">
                        <input
                          type="radio"
                          class="radio"
                          id="long"
                          name="groupPeriod"
                        />
                        <label for="long">장기</label>
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
                      <div
                        id="option-java"
                        class="option option-tech"
                        onclick="hiddenTag(event)"
                      >
                        <input
                          type="radio"
                          class="radio"
                          id="java"
                          name="tech"
                        />
                        <label for="study">java</label>
                      </div>

                      <div
                        id="option-spring"
                        class="option option-tech"
                        onclick="hiddenTag(event)"
                      >
                        <input
                          type="radio"
                          class="radio"
                          id="spring"
                          name="tech"
                        />
                        <label for="project">spring</label>
                      </div>

                      <div
                        id="option-javascript"
                        class="option option-tech"
                        onclick="hiddenTag(event)"
                      >
                        <input
                          type="radio"
                          class="radio"
                          id="javascript"
                          name="tech"
                        />
                        <label for="project">javascript</label>
                      </div>

                      <div
                        id="option-python"
                        class="option option-tech"
                        onclick="hiddenTag(event)"
                      >
                        <input
                          type="radio"
                          class="radio"
                          id="python"
                          name="tech"
                        />
                        <label for="project">python</label>
                      </div>
                    </div>

                    <div class="selected selected-tech">
                      <div class="tech-btn-list">프로젝트 사용 스택</div>
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
                        dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
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
              const selectedPeriod = document.querySelector(".selected-period");
              const selectedTech = document.querySelector(".tech-btn-list");
              const selectedTech2 = document.querySelector(
                ".selected-tech:not(.tech-btn-list .tech-btn )"
              );

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

              const optionsListType = document.querySelectorAll(".option-type");
              const optionsListWay = document.querySelectorAll(".option-way");
              const optionsListPeriod =
                document.querySelectorAll(".option-period");
              const optionsListTech = document.querySelectorAll(".option-tech");

              selectedType.addEventListener("click", () => {
                optionsContainerType.classList.toggle("active");
              });

              selectedWay.addEventListener("click", () => {
                optionsContainerWay.classList.toggle("active");
              });

              selectedPeriod.addEventListener("click", () => {
                optionsContainerPeriod.classList.toggle("active");
              });

              selectedTech2.addEventListener("click", () => {
                console.log("클릭됨");
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
                  selectedPeriod.innerHTML = o.querySelector("label").innerHTML;
                  optionsContainerPeriod.classList.remove("active");
                });
              });

              optionsListTech.forEach((o) => {
                o.addEventListener("click", () => {
                  if (selectedTech.innerHTML.trim() == "프로젝트 사용 스택") {
                    selectedTech.innerHTML = "";
                  }
                  selectedTech.innerHTML +=
                    "<div class='tech-btn-div' onclick='deleteTech(event)'>" +
                    "<input onclick='deleteTech2(event)' class='tech-btn' type='button' value='" +
                    o.querySelector("label").innerHTML +
                    "'>" +
                    "<i class='fa-solid fa-xmark' onclick='deleteTech2(event)'></i>" +
                    "</div>";
                  optionsContainerTech.classList.remove("active");
                });
              });
            </script>
            <script>
              function deleteTech(e) {
                e.target.remove();
                const value = e.target.querySelector("input").value;
                const option = document.querySelector("#option-" + value);
                option.classList.toggle("hidden");
              }

              function deleteTech2(e) {
                e.target.parentNode.remove();
                const value = e.target.parentNode.querySelector("input").value;
                const option = document.querySelector("#option-" + value);
                option.classList.toggle("hidden");
              }

              function hiddenTag(e) {
                console.log("들어옴");
                e.target.classList.toggle("hidden");
              }
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
                  멤버의 개인정보(성명, 연락처 주소, 학교, 직장명, 출생지 등)를
                  확인할 수 있는 질문은 타인의 사생활을 침해할 수 있으며, 스터디
                  운영 목적과 무관하게 임의로 수집 및 이용한 개인정보는 법률적
                  문제가 발생할 수 있으므로 스터디 가입 질문은 최소한의 내용으로
                  작성해주시기 바랍니다.
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
          <div class="study-introduce-tag relative">
            <div class="study-search-tag-div">
              <i class="fa-solid fa-hashtag gray1"></i>
              <div class="tag-list"></div>
              <input
                class="study-search-tag"
                type="text"
                placeholder="태그를 입력하세요"
                onkeyup="if(window.event.keyCode==13){makeTag(event)} if(window.event.keyCode==8){deleteBeforeTag()}"
              />
            </div>
            <input
              type="reset"
              value="초기화"
              class="reset-btn"
              onclick="resetTag()"
            /><i
              class="fa-solid fa-rotate-left cursor"
              onclick="resetTag()"
            ></i>
          </div>
          <script>
            function makeTag(e) {
              const value = e.target.value;
              const str =
                '<div class="relative cursor tag-div" onclick="deleteTag(event)">' +
                '<input onclick="deleteTag2(event)" type="button" value="' +
                value +
                '" class="tag-btn cursor" /> ' +
                '<i class="fa-solid fa-xmark" onclick="deleteTag2(event)"></i>' +
                "</div>";

              const tagList = document.querySelector(".tag-list");
              tagList.innerHTML += str;

              e.target.value = "";
            }

            function resetTag() {
              const tagList = document.querySelector(".tag-list");
              tagList.textContent = "";
            }

            function deleteTag(e) {
              e.target.remove();
            }

            function deleteTag2(e) {
              e.target.parentNode.remove();
            }

            function deleteBeforeTag() {
              const lastTag = document.querySelector(
                ".tag-list div:last-child"
              );
              lastTag.remove();
            }
          </script>
          <div>
            <textarea name="editordata" id="summernote">
              <p>
                스터디 모집글을 아래 양식을 참고해 작성해주세요.
                <br>
                <br>
                마크다운, 단축키를 이용해서 편리하게 글을 작성할 수 있어요.
                <br>
                <br>
                꼼꼼히 작성하면 멋진 스터디 팀원을 만나실 수 있을거예요.
              </p>
              <br>
              <p>
                <strong>
                  [개발 스터디 모집 내용 예시]
                </strong>
              </p>
              <br>
              <ul>
                <li>✔스터디 주제 :</li>
                <li>✔스터디 목표 :</li>
                <li>✔예상 스터디 일정(횟수) :</li>
                <li>✔예상 커리큘럼 간략히 :</li>
                <li>✔스터디 소개와 개설 이유 :</li>
                <li>✔스터디 관련 주의사항 :</li>
              </ul>
        
            </textarea>
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
                focus: false, // 에디터 로딩후 포커스를 맞출지 여부
                lang: "ko-KR", // 한글 설정
                placeholder: "", //placeholder 설정
                disableResizeEditor: true,
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
              <input
                type="text"
                class="myAddress"
                placeholder="키워드로 주소를 검색하세요!"
              /><input
                type="button"
                value="검색"
                class="myAddress-btn"
                onclick="searchKeyWordLocation()"
              />

              <input
                type="text"
                class="detailAddress"
                placeholder="장소 검색 후 마커를 클릭하면 주소가 표시됩니다"
                readonly
              />
            </div>

            <div id="map" style="width: 100%; height: 500px"></div>

            <script
              type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb4230ca104b4d83bce478dce786ba7d&libraries=services"
            ></script>
            <script>
              function searchKeyWordLocation() {
                // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
                var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

                var mapContainer = document.getElementById("map"), // 지도를 표시할 div
                  mapOption = {
                    center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                    level: 3, // 지도의 확대 레벨
                  };

                // 지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);

                // 주소-좌표 변환 객체를 생성합니다
                var geocoder = new kakao.maps.services.Geocoder();

                // 장소 검색 객체를 생성합니다
                var ps = new kakao.maps.services.Places();

                // 키워드로 장소를 검색합니다
                ps.keywordSearch(
                  document.querySelector(".myAddress").value,
                  placesSearchCB
                );

                // 키워드 검색 완료 시 호출되는 콜백함수 입니다
                function placesSearchCB(data, status, pagination) {
                  if (status === kakao.maps.services.Status.OK) {
                    // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                    // LatLngBounds 객체에 좌표를 추가합니다
                    var bounds = new kakao.maps.LatLngBounds();

                    for (var i = 0; i < data.length; i++) {
                      displayMarker(data[i]);
                      bounds.extend(
                        new kakao.maps.LatLng(data[i].y, data[i].x)
                      );
                    }

                    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                    map.setBounds(bounds);
                  }
                }

                // 지도에 마커를 표시하는 함수입니다
                function displayMarker(place) {
                  // 마커를 생성하고 지도에 표시합니다
                  var marker = new kakao.maps.Marker({
                    map: map,
                    position: new kakao.maps.LatLng(place.y, place.x),
                  });

                  // 마커에 클릭이벤트를 등록합니다
                  kakao.maps.event.addListener(marker, "click", function () {
                    // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
                    infowindow.setContent(
                      '<div style="padding:5px;font-size:12px;">' +
                        place.place_name +
                        "</div>"
                    );
                    infowindow.open(map, marker);

                    searchDetailAddrFromCoords(
                      place,
                      function (result, status) {
                        if (status === kakao.maps.services.Status.OK) {
                          var detailAddr = !!result[0].road_address
                            ? "" + result[0].road_address.address_name + ""
                            : "";

                          var content = detailAddr;

                          // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
                          let box = document.querySelector(".detailAddress");
                          box.value = content;
                        }
                      }
                    );
                  });
                }

                function searchDetailAddrFromCoords(coords, callback) {
                  // 좌표로 법정동 상세 주소 정보를 요청합니다
                  geocoder.coord2Address(coords.x, coords.y, callback);
                }
              }
            </script>
          </div>
        </section>
        <section class="btn-section">
          <input type="button" value="취소" class="cancel-btn" />
          <input type="button" value="등록" class="save-btn" />
        </section>
      </main>
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

      function locationOnOff2(e) {
        let studyWay = document.querySelector(".selected-way");
        let studyWayStr = e.target.parentNode.querySelector("label").innerHTML;

        let studyLocation = document.querySelector(".study-location");
        if (studyWayStr == "온라인" || studyWayStr == "온라인/오프라인") {
          studyLocation.classList.add("hidden");
        }

        if (studyWayStr == "오프라인") {
          studyLocation.classList.remove("hidden");
        }
      }
    </script>
    <script>
      // 상세페이지로 들어갔을때 초기위치가 댓글쪽이어서 최상단으로 올려줌
      setTimeout(function () {
        scrollTo(0, 0);
      }, 100);
    </script>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
