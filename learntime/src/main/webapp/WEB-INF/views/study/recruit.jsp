<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/study/recruit.css?ver=5"
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

    <script src="${pageContext.request.contextPath}/resources/js/study/recruit.js"></script>
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="middle">
      <form
        action="${pageContext.request.contextPath}/study/recruit"
        method="post"
        onsubmit="return checkValidate();"
      >
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
                        <label>
                          <div class="option option-type">
                            <input
                              type="radio"
                              class="radio"
                              id="study"
                              name="gTypeNo"
                              value="1"
                            />
                            <label for="study">스터디</label>
                          </div>
                        </label>
                        <label>
                          <div class="option option-type">
                            <input
                              type="radio"
                              class="radio"
                              id="project"
                              name="gTypeNo"
                              value="2"
                            />
                            <label for="project">프로젝트</label>
                          </div>
                        </label>
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
                          placeholder="인원수를 입력해주세요"
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

                      <div class="selected selected-way">온라인/오프라인</div>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>진행기간</h2>

                    <div class="select-box relative">
                      <div class="options-container options-container-period">
                        <label>
                          <div class="option option-period">
                            <input
                              type="radio"
                              class="radio"
                              id="none"
                              name="gPeriodNo"
                              value="1"
                            />
                            <label for="none">기간미정</label>
                          </div>
                        </label>
                        <label>
                          <div class="option option-period">
                            <input
                              type="radio"
                              class="radio"
                              id="1month"
                              name="gPeriodNo"
                              value="2"
                            />
                            <label for="1month">1개월</label>
                          </div>
                        </label>
                        <label>
                          <div class="option option-period">
                            <input
                              type="radio"
                              class="radio"
                              id="2month"
                              name="gPeriodNo"
                              value="3"
                            />
                            <label for="2month">2개월</label>
                          </div>
                        </label>
                        <label>
                          <div class="option option-period">
                            <input
                              type="radio"
                              class="radio"
                              id="3month"
                              name="gPeriodNo"
                              value="4"
                            />
                            <label for="3month">3개월</label>
                          </div>
                        </label>
                        <label>
                          <div class="option option-period">
                            <input
                              type="radio"
                              class="radio"
                              id="4month"
                              name="gPeriodNo"
                              value="5"
                            />
                            <label for="4month">4개월</label>
                          </div>
                        </label>
                        <label>
                          <div class="option option-period">
                            <input
                              type="radio"
                              class="radio"
                              id="5month"
                              name="gPeriodNo"
                              value="6"
                            />
                            <label for="5month">5개월</label>
                          </div>
                        </label>
                        <label>
                          <div class="option option-period">
                            <input
                              type="radio"
                              class="radio"
                              id="6month"
                              name="gPeriodNo"
                              value="7"
                            />
                            <label for="6month">6개월</label>
                          </div>
                        </label>
                        <label>
                          <div class="option option-period">
                            <input
                              type="radio"
                              class="radio"
                              id="long"
                              name="gPeriodNo"
                              value="8"
                            />
                            <label for="long">장기</label>
                          </div>
                        </label>
                      </div>

                      <div class="selected selected-period">
                        기간미정 ~ 장기
                      </div>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>기술스택</h2>

                    <div class="select-box relative">
                      <div class="options-container options-container-tech">
                        <label onclick="hiddenTag(event)">
                          <div id="option-java" class="option option-tech">
                            <input
                              type="checkbox"
                              class="radio"
                              id="java"
                              name="techStackNo"
                              value="1"
                              onclick="stop(event)"
                            />
                            <label for="java" onclick="hiddenTag2(event)"
                              >java</label
                            >
                          </div>
                        </label>
                        <label>
                          <div
                            id="option-spring"
                            class="option option-tech"
                            onclick="hiddenTag(event)"
                          >
                            <input
                              type="checkbox"
                              class="radio"
                              id="spring"
                              name="techStackNo"
                              value="2"
                              onclick="stop(event)"
                            />
                            <label for="spring" onclick="hiddenTag2(event)"
                              >spring</label
                            >
                          </div>
                        </label>
                        <label>
                          <div
                            id="option-javascript"
                            class="option option-tech"
                            onclick="hiddenTag(event)"
                          >
                            <input
                              type="checkbox"
                              class="radio"
                              id="javascript"
                              name="techStackNo"
                              value="3"
                              onclick="stop(event)"
                            />
                            <label for="javascript" onclick="hiddenTag2(event)"
                              >javascript</label
                            >
                          </div>
                        </label>
                        <label>
                          <div
                            id="option-python"
                            class="option option-tech"
                            onclick="hiddenTag(event)"
                          >
                            <input
                              type="checkbox"
                              class="radio"
                              id="python"
                              name="techStackNo"
                              value="4"
                              onclick="stop(event)"
                            />
                            <label for="python" onclick="hiddenTag2(event)"
                              >python</label
                            >
                          </div>
                        </label>
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
                      /><i class="fa-solid fa-calendar-days"></i>
                    </div>
                  </div>

                  <div class="container1">
                    <h2>시작시간</h2>
                    <div class="box relative">
                      <input type="text" id="time1" name="startTime" />
                      <i class="fa-solid fa-clock"></i>
                    </div>
                  </div>
                  <div class="container1">
                    <h2>종료시간</h2>
                    <div class="box relative">
                      <input type="text" id="time2" name="endTime" />
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
              <input type="text" placeholder="제목을 입력하세요" name="title" />
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
            <div>
              <textarea name="intro" id="summernote"></textarea>
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
              onclick="location.href='${pageContext.request.contextPath}/study/list'"
            />
            <input type="submit" value="등록" class="save-btn" />
          </section>
        </main>
      </form>
    </div>

    <script>
      const numberPeople = document.querySelector("input[name=numberPeople]");
      const startDate = document.querySelector("input[name=startDate]");
      const title = document.querySelector("input[name=title]");

      const studyLocation = document.querySelector(".study-location");

      numberPeople.addEventListener("blur", function (event) {
        if (event.target.value < 2 && event.target.value !== "") {
          event.target.value = 2;
        }

        if (event.target.value > 30) {
          event.target.value = 30;
        }
      });
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

      function checkValidate() {
        const content = document.querySelector("textarea[name=intro]");
        let flagType = false;
        let flagWay = false;
        let flagTech = false;
        let flagPeriod = false;
        let flagPeople = false;
        let flagStartDate = false;
        let flagTitle = false;
        let flagContent = false;
        let flagQuestion = true;
        let flagPlace = true;

        const studyWay = document.querySelector(".selected-way");
        if (studyWay.innerHTML == "오프라인") {
          const place = document.querySelector("input[name=place]");
          if (place.value == "") {
            flagPlace = false;
          }
        }

        optionsContainerType
          .querySelectorAll("input[type=radio]")
          .forEach(function (item) {
            if (item.checked) {
              flagType = true;
            }
          });

        optionsContainerWay
          .querySelectorAll("input[type=radio]")
          .forEach(function (item) {
            if (item.checked) {
              flagWay = true;
            }
          });

        optionsContainerPeriod
          .querySelectorAll("input[type=radio]")
          .forEach(function (item) {
            if (item.checked) {
              flagPeriod = true;
            }
          });

        optionsContainerTech
          .querySelectorAll("input[type=checkbox]")
          .forEach(function (item) {
            if (item.checked) {
              flagTech = true;
            }
          });

        const question = document.querySelectorAll("input[name=question]");
        question.forEach(function (item) {
          if (item.value === "") {
            flagQuestion = false;
          }
        });

        if (numberPeople.value !== "") {
          flagPeople = true;
        }

        if (startDate.value !== "") {
          flagStartDate = true;
        }

        if (title.value !== "") {
          flagTitle = true;
        }

        if (content.innerHTML.trim() !== "") {
          flagContent = true;
        }

        if (flagType == false) {
          alert("모집구분을 선택해주세요");
          return false;
        }

        if (flagPeople == false) {
          alert("모집인원을 작성해주세요");
          return false;
        }

        if (flagWay == false) {
          alert("진행방식을 선택해주세요");
          return false;
        }

        if (flagPeriod == false) {
          alert("진행기간을 선택해주세요");
          return false;
        }

        if (flagTech == false) {
          alert("기술스택을 선택해주세요");
          return false;
        }

        if (flagStartDate == false) {
          alert("시작예정일을 선택해주세요");
          return false;
        }

        if (flagTitle == false) {
          alert("제목을 입력해주세요");
          return false;
        }

        if (flagQuestion == false) {
          alert("가입질문을 입력해주세요");
          return false;
        }

        if (flagPlace == false) {
          alert("장소를 입력해주세요");
          return false;
        }

        let flag =
          flagType &&
          flagWay &&
          flagTech &&
          flagPeriod &&
          flagPeople &&
          flagStartDate &&
          flagTitle &&
          flagQuestion &&
          flagPlace;

        return flag;
      }

      const optionsListType = document.querySelectorAll(".option-type");
      const optionsListWay = document.querySelectorAll(".option-way");
      const optionsListPeriod = document.querySelectorAll(".option-period");
      const optionsListTech = document.querySelectorAll(".option-tech");
      const optionsListTechLabel =
        document.querySelectorAll(".option-tech label");

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
        o.addEventListener("click", (event) => {
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
          // optionsContainerTech.classList.remove("active");
        });
      });

      optionsListTechLabel.forEach((o) => {
        o.addEventListener("click", (event) => {
          event.stopPropagation();
          if (selectedTech.innerHTML.trim() == "프로젝트 사용 스택") {
            selectedTech.innerHTML = "";
          }

          selectedTech.innerHTML +=
            "<div class='tech-btn-div' onclick='deleteTech(event)'>" +
            "<input onclick='deleteTech2(event)' class='tech-btn' type='button' value='" +
            o.innerHTML +
            "'>" +
            "<i class='fa-solid fa-xmark' onclick='deleteTech2(event)'></i>" +
            "</div>";
          // optionsContainerTech.classList.remove("active");
        });
      });

      function deleteTech(e) {
        e.stopPropagation();
        e.target.remove();
        const value = e.target.querySelector("input").value;

        const option = document.querySelector("#option-" + value);
        option.parentNode.classList.toggle("hidden");
        const selectedTech = document.querySelector(".tech-btn-list");
        if (selectedTech.innerHTML.trim() == "") {
          selectedTech.innerHTML = "프로젝트 사용 스택";
        }
        const input = optionsContainerTech.querySelector("#" + value);
        input.checked = false;
      }

      function deleteTech2(e) {
        e.stopPropagation();
        e.target.parentNode.remove();
        const value = e.target.parentNode.querySelector("input").value;

        const option = document.querySelector("#option-" + value);
        option.parentNode.classList.toggle("hidden");
        const selectedTech = document.querySelector(".tech-btn-list");
        if (selectedTech.innerHTML.trim() == "") {
          selectedTech.innerHTML = "프로젝트 사용 스택";
        }
        const input = optionsContainerTech.querySelector("#" + value);
        input.checked = false;
      }

      function hiddenTag(e) {
        e.target.parentNode.classList.add("hidden");
      }

      function hiddenTag2(e) {
        e.stopPropagation();
        e.target.parentNode.parentNode.classList.add("hidden");
      }

      function stop(e) {
        e.stopPropagation();
      }

      let divCnt = 1;
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
        console.log(divCnt);
      }

      //가입질문 버튼
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
        recruitQuestionList.innerHTML = "";
        recruitQuestionExplain.classList.add("hidden");
        divCnt = 1;
      });

      questionBntOff.addEventListener("click", function () {
        this.classList.add("hidden");
        questionBntOn.classList.remove("hidden");
        recruitQuestionList.classList.remove("hidden");
        recruitQuestionList.innerHTML =
          '<li><div>Q.</div><input type="text" name="question" id="" /><i class="fa-solid fa-square-xmark" onclick="delete_question(event)"></i></li>';
        recruitQuestionExplain.classList.remove("hidden");
        divCnt = 1;
      });

      function delete_question(e) {
        let li = e.target.parentNode;
        li.remove();
        divCnt--;
        console.log(divCnt);
        if (divCnt == 0) {
          const questionBntOn = document.querySelector(".question-btn-on");
          questionBntOn.classList.add("hidden");
          questionBntOff.classList.remove("hidden");
          recruitQuestionList.classList.add("hidden");
          recruitQuestionList.innerHTML = "";
          recruitQuestionExplain.classList.add("hidden");
        }
      }

      function locationOnOff(e) {
        console.log(e.target);
        let studyWay = document.querySelector(".selected-way");
        let studyWayStr = e.target.querySelector("label").innerHTML;

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
      }

      function locationOnOff2(e) {
        console.log(e.target);

        let studyWay = document.querySelector(".selected-way");
        let studyWayStr = e.target.parentNode.querySelector("label").innerHTML;

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
      }
    </script>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css"
    />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb4230ca104b4d83bce478dce786ba7d&libraries=services"
    ></script>
  </body>
</html>
