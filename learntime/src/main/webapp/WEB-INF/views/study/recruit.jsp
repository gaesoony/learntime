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
        action="${path}/study/recruit"
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
              onclick="location.href='${path}/study/list'"
            />
            <input type="submit" value="등록" class="save-btn" />
          </section>
        </main>
      </form>
    </div>

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
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb4230ca104b4d83bce478dce786ba7d&libraries=services"
    ></script>
    <script defer src="${path}/resources/js/study/recruit.js"></script>
  </body>
</html>
