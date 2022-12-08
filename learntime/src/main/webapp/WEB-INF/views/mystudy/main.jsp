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

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main class="space-between">
      <aside class="mystudy-left-aside">
        <div class="mystudy-img-aside">
          <div class="mystudy-logo">
            <img
              src="${pageContext.request.contextPath}/resources/img/mystudy/UsersThree.png"
              alt=""
            />
          </div>
          <div>
            <ul class="mystudy-list">
              <a href=""
                ><img
                  src="${pageContext.request.contextPath}/resources/img/study/study-profile.JPG"
                  alt=""
              /></a>
              <a href=""
                ><img
                  src="${pageContext.request.contextPath}/resources/img/study/study-profile.JPG"
                  alt=""
              /></a>
              <a href=""
                ><img
                  src="${pageContext.request.contextPath}/resources/img/study/study-profile.JPG"
                  alt=""
              /></a>
              <a href=""
                ><img
                  src="${pageContext.request.contextPath}/resources/img/study/study-profile.JPG"
                  alt=""
              /></a>
              <a href=""
                ><img
                  src="${pageContext.request.contextPath}/resources/img/study/study-profile.JPG"
                  alt=""
              /></a>
            </ul>
          </div>
        </div>
        <div class="mystudy-cate-aside relative">
          <h1>비전공자 자바스터디<i class="fa-solid fa-seedling"></i></h1>
          <ul class="mystudy-cate-list">
            <a href=""><i class="fa-solid fa-angle-right"></i>스터디 정보</a>
            <a href=""><i class="fa-solid fa-angle-right"></i>공지 사항</a>
            <a href=""><i class="fa-solid fa-angle-right"></i>자료 공유</a>
            <a href=""><i class="fa-solid fa-angle-right"></i>과제 제출</a>
          </ul>
          <div class="mystudy-manage-area">
            <i class="fa-solid fa-gear"></i><span>관리</span>
          </div>
        </div>
      </aside>
      <article class="mystudy-article">
        <div class="mystudy-board-title">스터디 정보</div>
        <div>
          <section class="study-detail-summary-area">
            <ul class="study-detail-summary-list">
              <li class="flex">
                <div>모집구분</div>
                <div>프로젝트</div>
              </li>
              <li class="flex">
                <div>진행방식</div>
                <div>오프라인</div>
              </li>
              <li class="flex">
                <div>모집인원</div>
                <div>5명 (3/5)</div>
              </li>
              <li class="flex">
                <div>시작예정</div>
                <div>2022.11.10</div>
              </li>
              <li class="flex">
                <div>예상기간</div>
                <div>3개월</div>
              </li>
              <li class="flex">
                <div>진행시간</div>
                <div>14:00 ~ 16:00</div>
              </li>
              <li class="flex">
                <div>진행장소</div>
                <div>강남 KH정보교육원</div>
              </li>
              <li class="flex">
                <div>기술스택</div>
                <ul class="flex tech-list">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
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
              <div class="study-detail-info-content">
                <p>토이프로젝트 앱개발 같이 하실분 구합니다.</p>
                <br />
                <p>사용 기술스택</p>
                <p>App: Flutter (Android, Mobile)</p>
                <p>Backend: nestjs (Typescript) Apollo client</p>
                <p>Frontend react (typescript) (view only)</p>
                <p>git: Github</p>
                <p>CI: github actions</p>
                <p>CD: GCP</p>
                <br />
                <p>
                  앱은 각정도만 잡혀 있는 상태이고 플루터 잘하시는분 환영합니다!
                </p>
                <p>
                  지금 인원은 앱 개발자:1분 PM: 1분 Devops, Backend 1분 입니다
                </p>
                <br />
                <p>
                  기존에 없던 앱을 만드는 것이라 나중에 포트폴리오 쓰실때 좋을듯
                  합니다 :)
                </p>
              </div>
              <ul class="tag-list">
                <li class="tag-list-detail">
                  <i class="fa-solid fa-hashtag gray1"></i>
                  <span>자바</span>
                </li>
                <li class="tag-list-detail">
                  <i class="fa-solid fa-hashtag gray1"></i>
                  <span>포트폴리오</span>
                </li>
                <li class="tag-list-detail">
                  <i class="fa-solid fa-hashtag gray1"></i>
                  <span>프로젝트</span>
                </li>
                <li class="tag-list-detail">
                  <i class="fa-solid fa-hashtag gray1"></i>
                  <span>자바스크립트</span>
                </li>
                <li class="tag-list-detail">
                  <i class="fa-solid fa-hashtag gray1"></i>
                  <span>앱개발</span>
                </li>
              </ul>
            </div>
            <div class="study-location-content hidden">
              <div id="map" style="width: 100%; height: 500px"></div>

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
                  "서울 강남구 테헤란로14길 6 남도빌딩 2층, 3층, 4층",
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
      <aside class="mystudy-right-aside">
        <h1>참여 멤버(3명)</h1>
        <ul class="study-member-list">
          <li>
            <img
              class="user-profile"
              src="${pageContext.request.contextPath}/resources/img/study/profile.png"
              alt=""
            />
            <a href="">한혜원</a>
            <img
              class="crown"
              src="${pageContext.request.contextPath}/resources/img/mystudy/crown.png"
              alt=""
            />
          </li>
          <li>
            <img
              class="user-profile"
              src="${pageContext.request.contextPath}/resources/img/study/profile.png"
              alt=""
            />
            <a href="">한혜원</a>
          </li>
          <li>
            <img
              class="user-profile"
              src="${pageContext.request.contextPath}/resources/img/study/profile.png"
              alt=""
            />
            <a href="">한혜원</a>
          </li>
        </ul>
      </aside>
    </main>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>
