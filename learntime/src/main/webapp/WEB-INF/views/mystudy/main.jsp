<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/mystudy/main.css?ver=2"
    />
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main class="space-between">
      <%@ include file="/WEB-INF/views/mystudy/common/side.jsp" %>
      <article class="mystudy-article">
        <div class="mystudy-board-title">스터디 정보</div>
        <div>
          <section class="study-detail-summary-area">
            <ul class="study-detail-summary-list">
              <li class="flex">
                <div>모집구분</div>
                <div>${groupOne.TYPE}</div>
              </li>
              <li class="flex">
                <div>진행방식</div>
                <div>${groupOne.WAY}</div>
              </li>
              <li class="flex">
                <div>모집인원</div>
                <div>
                  ${groupOne.NUMBER_PEOPLE}명
                  (${groupOne.memberList.size()}/${groupOne.NUMBER_PEOPLE})
                </div>
              </li>
              <li class="flex">
                <div>시작예정</div>
                <div>${groupOne.START_DATE}</div>
              </li>
              <li class="flex">
                <div>예상기간</div>
                <div>${groupOne.PERIOD}</div>
              </li>
              <li class="flex">
                <div>진행시간</div>
                <div>${groupOne.START_TIME} ~ ${groupOne.END_TIME}</div>
              </li>
              <li class="flex">
                <div>진행장소</div>
                <c:if test="${groupOne.PLACE != null }">
                  <div>${groupOne.PLACE} (${groupOne.ADDRESS})</div>
                </c:if>
                <c:if test="${groupOne.PLACE == null }">
                  <div>온라인에서 만나요</div>
                </c:if>
              </li>
              <li class="flex">
                <div>기술스택</div>
                <ul class="flex tech-list">
                  <c:forEach items="${groupOne.techStackList}" var="ts">
                    <li class="study-tech">
                      <img
                        src="${path}/resources/upload/techStack/${ts.IMG_PATH}"
                        alt=""
                      />
                    </li>
                  </c:forEach>
                </ul>
              </li>
            </ul>
          </section>
          <section class="study-detail-info-area">
            <ul class="study-detail-info-category">
              <li class="study-tab clicked">프로젝트 소개</li>
              <li class="study-tab">진행 장소</li>
            </ul>
            <div class="study-info-content">
              <div class="study-detail-info-content">${groupOne.INTRO}</div>
              <ul class="tag-list">
                <c:forEach items="${groupOne.tagList}" var="item">
                  <li class="tag-list-detail">
                    <i class="fa-solid fa-hashtag gray1"></i>
                    <span>${item.NAME}</span>
                  </li>
                </c:forEach>
              </ul>
            </div>
            <div class="study-location-content hidden">
              <div id="map" style="width: 100%; height: 700px"></div>

              <script
                type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb4230ca104b4d83bce478dce786ba7d&libraries=services"
              ></script>
              <script>
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
                  "${groupOne.ADDRESS}",
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
              </script>
            </div>
          </section>
        </div>
      </article>
    </main>

    <script>
      const studyTab1 = document.querySelector(".study-tab:first-child");
      const studyTab2 = document.querySelector(".study-tab:last-child");

      const studyInfoContent = document.querySelector(".study-info-content");
      const studyLocationContent = document.querySelector(
        ".study-location-content"
      );
      studyTab1.addEventListener("click", function () {
        this.classList.add("clicked");
        studyInfoContent.classList.remove("hidden");

        studyTab2.classList.remove("clicked");
        studyLocationContent.classList.add("hidden");
      });

      studyTab2.addEventListener("click", function () {
        this.classList.add("clicked");
        studyLocationContent.classList.remove("hidden");

        studyTab1.classList.remove("clicked");
        studyInfoContent.classList.add("hidden");
        window.setTimeout(function () {
          map.relayout();
        }, 0);
      });
    </script>
  </body>
</html>
