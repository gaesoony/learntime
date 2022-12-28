<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${path}/resources/css/study/recruit.css?ver=5"
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
    <div class="middle">
      <form
        action="${path}/study/edit"
        method="post"
        onsubmit="return checkValidate();"
      >
        <input type="hidden" name="gno" value="${groupOne.NO}" />
        <input type="hidden" name="keyword" value="${vo.keyword}" />
        <input type="hidden" name="tagList" value="${fn:join(vo.tag,',')}" />
        <input type="hidden" name="techType" value="${vo.techType}" />
        <input
          type="hidden"
          name="techStackList"
          value="${fn:join(vo.techStack,',')}"
        />
        <input type="hidden" name="type" value="${vo.type}" />
        <input type="hidden" name="order" value="${vo.order}" />
        <input type="hidden" name="status" value="${vo.status}" />
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
                        <c:forEach items="${groupTypeList}" var="map">
                          <label>
                            <div class="option option-type">
                              <input
                                type="radio"
                                class="radio"
                                name="gTypeNo"
                                id="${map.NO}"
                                value="${map.NO}"
                              />
                              <label for="${map.NO}">${map.NAME}</label>
                            </div>
                          </label>
                        </c:forEach>
                      </div>

                      <div class="selected selected-type">
                        <c:forEach
                          items="${groupTypeList}"
                          var="map"
                          varStatus="status"
                        >
                          ${map.NAME}
                          <c:if
                            test="${groupTypeList.size() > status.index + 1}"
                            >/</c:if
                          >
                        </c:forEach>
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
                          name="numberPeople"
                          type="number"
                          min="2"
                          max="30"
                          placeholder="인원수를 입력해주세요"
                          value="${groupOne.NUMBER_PEOPLE}"
                        />
                      </div>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>진행방식</h2>

                    <div class="select-box relative">
                      <div class="options-container options-container-way">
                        <label>
                          <div
                            class="option option-way"
                            onclick="locationOnOff(event)"
                          >
                            <input
                              type="radio"
                              class="radio"
                              id="online"
                              name="gWayNo"
                              value="1"
                              onclick="locationOnOff2(event)"
                            />
                            <label for="online" onclick="locationOnOff2(event)"
                              >온라인</label
                            >
                          </div>
                        </label>
                        <label>
                          <div
                            class="option option-way"
                            onclick="locationOnOff(event)"
                          >
                            <input
                              type="radio"
                              class="radio"
                              id="offline"
                              name="gWayNo"
                              value="2"
                              onclick="locationOnOff2(event)"
                            />
                            <label for="offline" onclick="locationOnOff2(event)"
                              >오프라인</label
                            >
                          </div>
                        </label>
                      </div>

                      <div class="selected selected-way">온라인 / 오프라인</div>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>진행기간</h2>

                    <div class="select-box relative">
                      <div class="options-container options-container-period">
                        <c:forEach items="${groupPeriodList}" var="map">
                          <label>
                            <div class="option option-period">
                              <input
                                type="radio"
                                class="radio"
                                name="gPeriodNo"
                                id="${map.NO}"
                                value="${map.NO}"
                              />
                              <label for="${map.NO}">${map.NAME}</label>
                            </div>
                          </label>
                        </c:forEach>
                      </div>

                      <div class="selected selected-period">
                        <c:forEach
                          items="${groupPeriodList}"
                          var="map"
                          varStatus="status"
                        >
                          <c:if test="${status.first}">${map.NAME} ~ </c:if>
                          <c:if test="${status.last}">${map.NAME}</c:if>
                        </c:forEach>
                      </div>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>기술스택</h2>

                    <div class="select-box relative">
                      <div class="options-container options-container-tech">
                        <c:forEach items="${techStackList}" var="map">
                          <label>
                            <div
                              id="option-${map.NAME}"
                              class="option option-tech"
                              onclick="hiddenTag(event)"
                            >
                              <input
                                id="${map.NAME}"
                                type="checkbox"
                                class="radio"
                                name="techStackNo"
                                value="${map.NO}"
                                onclick="stop(event)"
                              />
                              <label
                                onclick="hiddenTag2(event)"
                                for="${map.NAME}"
                                >${map.NAME}</label
                              >
                            </div>
                          </label>
                        </c:forEach>
                      </div>

                      <div class="selected selected-tech">
                        <div class="tech-btn-list">프로젝트 사용 스택</div>
                      </div>
                    </div>
                  </div>
                  <script></script>
                  <div class="container1">
                    <h2>시작예정일</h2>

                    <div class="box relative">
                      <input
                        name="startDate"
                        class="datepicker"
                        placeholder="시작예정일을 선택해주세요"
                        autocomplete="off"
                        value="${groupOne.START_DATE}"
                      /><i class="fa-solid fa-calendar-days"></i>
                    </div>
                  </div>

                  <div class="container1">
                    <h2>시작시간</h2>
                    <div class="box relative">
                      <input
                        type="text"
                        id="time1"
                        name="startTime"
                        value="${groupOne.START_TIME}"
                      />
                      <i class="fa-solid fa-clock"></i>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>종료시간</h2>
                    <div class="box relative">
                      <input
                        type="text"
                        id="time2"
                        name="endTime"
                        value="${groupOne.END_TIME}"
                      />
                      <i class="fa-solid fa-clock"></i>
                    </div>
                  </div>
                </li>
              </ul>
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
              <div class="recruit-question-area">
                <div class="recruit-question-area-top flex">
                  <div>가입 질문 사용하기</div>
                  <div class="question-btn-on hidden">✅</div>
                  <div class="question-btn-off">
                    <i class="fa-regular fa-square"></i>
                  </div>
                  <div class="add-btn" onclick="create_question(event)">
                    질문추가
                  </div>
                </div>
                <ul class="recruit-question-list hidden">
                  <!-- <li>
                    <div>Q.</div>
                    <input type="text" name="question" id="" />
                    <i
                      class="fa-solid fa-square-xmark"
                      onclick="delete_question(event)"
                    ></i>
                  </li> -->
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
              <input
                type="text"
                placeholder="제목을 입력하세요"
                name="title"
                value="${groupOne.TITLE}"
              />
            </div>
            <div class="study-introduce-tag relative">
              <div class="study-search-tag-div">
                <i class="fa-solid fa-hashtag gray1"></i>
                <div class="tag-list"></div>
                <input
                  class="study-search-tag"
                  type="text"
                  placeholder="태그를 입력하세요"
                  onkeydown="if(window.event.keyCode==13){makeTag(event)} if(window.event.keyCode==8){deleteBeforeTag()}"
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
            <div>
              <textarea name="intro" id="summernote">
${groupOne.INTRO}</textarea
              >
            </div>
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
                  value="${groupOne.PLACE}"
                /><input
                  type="button"
                  value="검색"
                  class="myAddress-btn"
                  onclick="searchKeyWordLocation()"
                />

                <input
                  type="text"
                  name="address"
                  class="detailAddress"
                  value="${groupOne.ADDRESS}"
                  placeholder="장소 검색 후 마커를 클릭하면 주소가 표시됩니다"
                  disabled
                  readonly
                />
                <input type="hidden" id="place-name" name="place" disabled />
              </div>

              <div id="map" style="width: 100%; height: 500px"></div>
            </div>
          </section>
          <section class="btn-section">
            <input
              type="button"
              value="취소"
              class="cancel-btn"
              onclick="location.href='${path}/study/list'"
            />
            <input type="submit" value="등록" class="save-btn" />
          </section>
        </main>
      </form>
    </div>
    <script>
        const typeArr = document.querySelectorAll("input[name=gTypeNo]");
        const typeStr = "${groupOne.TYPE_NO}".trim();

        for (let i = 0; i < typeArr.length; i++) {
          const v = typeArr[i].value.trim();

          let result = typeStr.search(v);
          if (result >= 0) {
            typeArr[i].checked = true;
          }
        }

        const wayArr = document.querySelectorAll("input[name=gWayNo]");
        const wayStr = "${groupOne.WAY_NO}".trim();

        for (let i = 0; i < wayArr.length; i++) {
          const v = wayArr[i].value.trim();

          let result = wayStr.search(v);
          if (result >= 0) {
            wayArr[i].checked = true;
          }
        }

        const periodArr = document.querySelectorAll("input[name=gPeriodNo]");
        const periodStr = "${groupOne.PERIOD_NO}".trim();

        for (let i = 0; i < periodArr.length; i++) {
          const v = periodArr[i].value.trim();

          let result = periodStr.search(v);
          if (result >= 0) {
            periodArr[i].checked = true;
          }
        }

        const techStackArr = document.querySelectorAll("input[name=techStackNo]");
        const techStackStr = "${groupOne.TECH_STACK_NO}".trim();
        const techArr = techStackStr.split(",");
        const techAll = document.querySelector(".options-container-tech");
        for(let i=0; i<techArr.length; i++) {
          let techInput = $('.options-container-tech input[value='+techArr[i]+']');
          console.log(techInput);
          techInput.prop('checked', true);
        }


        //timepicker - 시작시간
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
          $("#time1").val("${groupOne.START_TIME}");
        });

        //timepicker - 종료시간
        $(function () {
          $("#time2").timepicker({
            timeFormat: "h:mm p",
            interval: 30,
            minTime: "0",
            maxTime: "11:30pm",
            defaultTime: "12",
            startTime: "12:00",
            dynamic: true,
            dropdown: true,
            scrollbar: true,
          });
          $("#time2").val("${groupOne.END_TIME}");
        });

        var arr = new Array();

        <c:forEach items="${groupOne.tagList}" var="item">
          arr.push({NO : "${item.NO}",
          NAME : "${item.NAME}"});
        </c:forEach>



        const tagList = document.querySelector(".tag-list");
        for(let i=0; i<arr.length; i++) {
          tagList.innerHTML +=  '<div class="relative cursor tag-div" onclick="deleteTag(event)">' +
      '<input onclick="deleteTag2(event)" type="text" name="tag" style="width:' +
      (arr[i].NAME.length + 2) * 12 +
      "px" +
      ';" value="' +
      arr[i].NAME+
      '" class="tag-btn cursor" /> ' +
      '<i class="fa-solid fa-xmark" onclick="deleteTag2(event)"></i>' +
      "</div>";
            console.log("${groupOne.tagList[i].NAME}");
        };
    </script>
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb4230ca104b4d83bce478dce786ba7d&libraries=services"
    ></script>
    <script>
            var arr2= new Array();

            <c:forEach items="${groupOne.questionList}" var="item">
              arr2.push({NO : "${item.NO}",
              NAME : "${item.QUESTION}"});
            </c:forEach>
            let divCnt = 1;
            const questionBntOn = document.querySelector(".question-btn-on");
            const questionBntOff = document.querySelector(".question-btn-off");
            const recruitQuestionList = document.querySelector(
              ".recruit-question-list"
            );
            const recruitQuestionExplain = document.querySelector(
              ".recruit-question-explain"
            );
            if(arr2.length>0) {
              questionBntOff.classList.add("hidden");
              questionBntOn.classList.remove("hidden");
              recruitQuestionList.classList.remove("hidden");

              for(let i=0; i<arr2.length; i++) {
                console.log(arr2[i].NAME);
                recruitQuestionList.innerHTML +=
                   '<li><div>Q.</div><input type="text" name="question" id="" value="'+arr2[i].NAME+'" />'+
                    '<i class="fa-solid fa-square-xmark" onclick="delete_question(event)"></i></li>';

              }
              recruitQuestionExplain.classList.remove("hidden");
              divCnt = arr2.length;
            }


            //가입질문 생성

            function create_question(e) {
              if (divCnt == 5) {
                return false;
              }

              const questionBtnOn = document.querySelector(".question-btn-on");
              if (questionBtnOn.classList.contains("hidden")) {
                return false;
              }

              let list = document.querySelector(".recruit-question-list");
              let new_li = document.createElement("li");
              let new_div = document.createElement("div");
              new_div.innerHTML = "Q.";

              new_li.appendChild(new_div);
              new_li.innerHTML +=
                "<input type='text' name='question' id='' /><i class='fa-solid fa-square-xmark' onclick='delete_question(event)'></i>";
              list.appendChild(new_li);

              divCnt++;
            }

            //가입질문 버튼 on, off



            questionBntOn.addEventListener("click", function () {
              console.log('온을 클릭');
              this.classList.add("hidden");
              questionBntOff.classList.remove("hidden");
              recruitQuestionList.classList.add("hidden");
              recruitQuestionList.innerHTML = "";
              recruitQuestionExplain.classList.add("hidden");
              divCnt = 1;
            });

            questionBntOff.addEventListener("click", function () {
              console.log('오프를 클릭');
              this.classList.add("hidden");
              questionBntOn.classList.remove("hidden");
              recruitQuestionList.classList.remove("hidden");
              recruitQuestionList.innerHTML =
                '<li><div>Q.</div><input type="text" name="question" id="" /><i class="fa-solid fa-square-xmark" onclick="delete_question(event)"></i></li>';
              recruitQuestionExplain.classList.remove("hidden");
              divCnt = 1;
            });

            //가입질문 삭제
            function delete_question(e) {
              let li = e.target.parentNode;
              li.remove();
              divCnt--;
              if (divCnt == 0) {
                const questionBntOn = document.querySelector(".question-btn-on");
                questionBntOn.classList.add("hidden");
                questionBntOff.classList.remove("hidden");
                recruitQuestionList.classList.add("hidden");
                recruitQuestionList.innerHTML = "";
                recruitQuestionExplain.classList.add("hidden");
              }
            }

            //지도
            const offline = document.querySelector("#offline");
      if (offline.checked) {
        let studyWayStr = document.querySelector("label[for=offline]").innerHTML;
        let studyLocation = document.querySelector(".study-location");
        const place = document.querySelector("input[name=place]");
        const address = document.querySelector("input[name=address]");
        if (studyWayStr == "온라인" || studyWayStr == "온라인/오프라인") {
          studyLocation.classList.add("hidden");
          place.setAttribute("disabled", "disabled");
          address.setAttribute("disabled", "disabled");
        }

        if (studyWayStr == "오프라인") {
          studyLocation.classList.remove("hidden");
          place.removeAttribute("disabled");
          address.removeAttribute("disabled");
        }

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
        ps.keywordSearch("${groupOne.ADDRESS}", placesSearchCB);

        // 키워드 검색 완료 시 호출되는 콜백함수 입니다
        function placesSearchCB(data, status, pagination) {
          if (status === kakao.maps.services.Status.OK) {
            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
            // LatLngBounds 객체에 좌표를 추가합니다
            var bounds = new kakao.maps.LatLngBounds();

            for (var i = 0; i < data.length; i++) {
              displayMarker(data[i]);
              bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
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
            const placeName = document.querySelector("#place-name");
            // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
            infowindow.setContent(
              '<div style="padding:5px;font-size:12px;">' +
                place.place_name +
                "</div>"
            );
            placeName.value = place.place_name;
            infowindow.open(map, marker);

            searchDetailAddrFromCoords(place, function (result, status) {
              if (status === kakao.maps.services.Status.OK) {
                var detailAddr = !!result[0].road_address
                  ? "" + result[0].road_address.address_name + ""
                  : "";

                var content = detailAddr;

                // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
                let box = document.querySelector(".detailAddress");
                box.value = content;
              }
            });
          });
        }

        function searchDetailAddrFromCoords(coords, callback) {
          // 좌표로 법정동 상세 주소 정보를 요청합니다
          geocoder.coord2Address(coords.x, coords.y, callback);
        }
      }
    </script>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css"
    />
    <script
      defer
      src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"
    ></script>
    <script
      defer
      src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"
    ></script>
    <script
      defer
      src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"
    ></script>

    <script defer src="${path}/resources/js/study/edit.js"></script>
  </body>
</html>
