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

    .relative {
      position: relative;
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

    /* 스터디 상세 1200 */

    .main-study-detail {
      width: 100%;
      display: flex;
    }

    .study-detail-aside-left {
      width: 18%;
      margin-top: 120px;
      display: flex;
      justify-content: center;
    }

    .study-detail-aside-right {
      width: 18%;
      margin-top: 120px;
    }

    .study-detail {
      width: 64%;
      margin-top: 100px;
    }

    /* 스터디 상세 - 왼쪽부분 뒤로가기버튼 */

    .back-btn {
      width: 40px;
      height: 40px;
      background-color: white;
      border: 1px solid rgb(211, 211, 211);
      border-radius: 5px;
      color: #535353;
      position: sticky;
      top: 120px;
      margin-left: 50px;
    }

    /* 스터디 상세 - 제목 부분 */

    .study-detail-title-area {
      padding-bottom: 15px;
      border-bottom: 1px solid rgb(223, 223, 223);
    }

    .study-detail-title-area h1 {
      font-size: 28px;
      margin-bottom: 30px;
    }

    .user-profile img {
      width: 25px;
      height: 25px;
    }

    .user-profile {
      margin-right: 5px;
    }

    .user-nick img {
      width: 16px;
      height: 16px;
    }

    .study-detail-title__date {
      margin: 0px 9px;
    }

    .hit-cmt-scrap {
      /* margin-top: 10px; */
    }

    .hit-cmt-scrap li {
      margin-right: 7px;
    }

    .hit-cmt-scrap li i {
      margin-right: 5px;
    }

    .study-detail-title-bottom {
      font-size: 14px;
    }

    /* 스터디 상세 - 요약부분 */

    .study-detail-summary-area {
      padding: 40px 25px;
    }

    .study-detail-summary-list {
      display: grid;
      grid-template-columns: 1fr 1fr;
      grid-template-rows: repeat(4, 20px);
      row-gap: 24px;
      font-weight: 700;
      font-size: 17px;
    }

    .study-detail-summary-list li div:first-child {
      color: gray;
      margin-right: 20px;
    }

    .tech-list img {
      width: 35px;
      height: 35px;
      margin-right: 7px;
    }

    /* 스터디 상세 - 소개부분 */
    .study-detail-info-area {
      margin-top: 70px;
    }

    .study-detail-info-category {
      font-size: 18px;
      font-weight: 700;
      display: flex;
      padding-bottom: 13px;
      border-bottom: 1px solid rgb(223, 223, 223);
      color: gray;
    }

    .clicked {
      color: black;
    }

    .study-detail-info-category li {
      margin-right: 20px;
      margin-bottom: 10px;
      cursor: pointer;
    }

    .study-detail-info-content {
      padding: 50px 20px;
      margin-bottom: 100px;
      font-size: 16px;
    }

    .tag-list {
      padding: 20px;
    }

    /* 참여멤버 */

    .study-detail-member-area h1 {
      font-size: 18px;
      font-weight: 700;
      margin-bottom: 20px;
      margin-top: 50px;
      padding-bottom: 23px;
      border-bottom: 1px solid rgb(223, 223, 223);
    }

    .study-member-list li {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
      margin-left: 10px;
    }

    .study-member-list img {
      width: 30px;
      height: 30px;
      margin-right: 7px;
    }

    .study-member-list li div:nth-child(2) {
      font-weight: 700;
      margin-right: 7px;
    }

    .study-member-list li div:nth-child(3) {
      font-weight: 700;
      color: gray;
    }

    /* 태그 */

    .tag-list-detail {
      display: inline-block;
      padding: 5px 5px;
      border-radius: 2px;
      font-size: 12px;
      background-color: #eff3fa;
      box-shadow: 0, 10px, 1px, black;
      margin-bottom: 5px;
    }

    /* 가입하기 버튼 */

    .study-join-btn {
      width: 130px;
      height: 40px;
      background-color: #00c471;
      color: white;
      border: none;
      border-radius: 3px;
      font-size: 17px;
      font-weight: 700;
      margin-top: 70px;
      margin-bottom: 30px;
      cursor: pointer;
    }

    /* 오른쪽 사이드바 - 모집중, 좋아요싫어요, 스크랩버튼 */

    .study-detail-aside-right-btns {
      margin-left: 45px;
      position: sticky;
      top: 120px;
    }

    .study-detail-aside-right-btns > div {
      width: 125px;
      height: 40px;
      border-radius: 5px;
      color: rgb(143, 143, 143);
      border: 1px solid rgba(128, 128, 128, 0.174);
      margin-bottom: 15px;
      display: flex;
      justify-content: center;
      align-items: center;
      box-shadow: rgba(100, 100, 111, 0.2) 0px 1px 8px 0px;
    }

    .study-detail-aside-right-btns > div:last-child i {
      margin-right: 5px;
    }

    .like-hate-btn div {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100%;
    }

    .like-hate-btn div:first-child {
      width: 35px;
    }

    .like-hate-btn div:nth-child(2) {
      width: 55px;
      border-left: 1px solid rgba(200, 200, 200, 0.368);
      border-right: 1px solid rgba(200, 200, 200, 0.368);
    }

    .like-hate-btn div:last-child {
      width: 35px;
    }

    /* 지도 api */

    #map {
      height: 500px;
    }

    /* 댓글 */

    .cmt-div {
      background-color: #f8f9fa;
      height: 100vh;
    }

    .cmt-input {
      margin-top: 50px;
      width: 800px;
      height: 320px;
      border: 1px solid rgb(212, 212, 212);
      background-color: white;
      border-radius: 5px;
      padding: 25px 20px;
    }

    .cmt-input-top {
      margin-bottom: 20px;
      font-size: 17px;
    }

    .cmt-input-top img {
      width: 40px;
      height: 40px;
      margin-right: 10px;
      margin-left: 20px;
    }

    .cmt-btn-area {
      display: flex;
      justify-content: flex-end;
    }

    .cmt-btn-area input {
      border: none;

      height: 35px;
      width: 75px;
      background-color: #00c471;
      color: white;
      font-size: 12px;
      font-weight: 900;
    }

    /* 가입신청 팝업창 */

    .study-popup-wrap {
      background-color: rgba(0, 0, 0, 0.3);
      justify-content: center;
      align-items: center;
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      display: none;
      padding: 15px;
      z-index: 1000;
    }

    .study-popup {
      width: 100%;
      max-width: 450px;
      border-radius: 10px;
      overflow: hidden;
      background-color: #ffffff;
      box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
      padding: 30px;
    }

    .study-popup-head {
      width: 100%;
      height: 50px;
      margin-bottom: 30px;
    }

    .study-popup-head div:first-child {
      color: #5ecc80;
      font-size: 23px;
      font-weight: 700;
      margin-bottom: 20px;
    }

    .study-popup-head div:last-child {
      color: gray;
      font-size: 13px;
    }

    .study-popup-body {
      width: 100%;
      background-color: #ffffff;
    }
    .study-body-content {
      width: 100%;
    }
    .study-body-titlebox div:first-child {
      font-weight: 900;
      margin-bottom: 5px;
      font-size: 17px;
    }

    .study-body-titlebox div:last-child {
      margin-bottom: 5px;
      font-size: 13px;
      color: gray;
    }
    .study-body-contentbox input {
      width: 100%;
      height: 40px;
      border: 1px solid rgb(218, 218, 218);
      border-radius: 3px;
      margin-top: 3px;
      margin-bottom: 20px;
      outline: none;
      padding: 3px 10px;
      box-sizing: border-box;
    }

    .study-popup-foot {
      width: 100%;
      height: 30px;
      display: flex;
      justify-content: flex-end;
    }

    .study-pop-btn {
      width: 55px;
      height: 30px;
      border-radius: 3px;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 12px;
      cursor: pointer;
    }

    .study-pop-btn:first-child {
      background-color: #5ecc80;

      color: white;
      margin-right: 5px;
    }

    .study-pop-btn:last-child {
      background-color: #ffffff;

      color: rgb(168, 168, 168);
      border: 1px solid rgb(207, 207, 207);
    }

    .detail-section {
      background-color: white;
      margin: 20px;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">
        <a href="${path}/admin/study/list?pno=1">스터디/프로젝트</a>
      </div>
      <div class="wrapper">
        <div class="detail-section">
          <main class="main-study-detail">
            <aside class="study-detail-aside-left">
              <button
                class="back-btn"
                onclick="location.href='${path}/admin/study/list?pno=${pno}&keyword=${keyword}&category=${category}&status=${status}'"
              >
                <i class="fa-solid fa-arrow-left"></i>
              </button>
            </aside>
            <article class="study-detail">
              <section class="study-detail-title-area">
                <h1 class="bold700">${groupOne.TITLE}</h1>
                <div class="space-between study-detail-title-bottom">
                  <div class="flex">
                    <div class="user-profile">
                      <img
                        src="${path}/resources/upload/common/profile_default.png"
                        alt=""
                      />
                    </div>
                    <div class="user-nick flex">
                      <div>${groupOne.NICK}</div>
                      <img src="/app/resources/img/study/flower.png" alt="" />
                    </div>
                    <div class="soft-gray study-detail-title__date">
                      | ${groupOne.ENROLL_DATE} |
                    </div>
                    <ul class="flex soft-gray hit-cmt-scrap">
                      <li>
                        <i class="fa-regular fa-eye"></i
                        ><span>${groupOne.HIT}</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i
                        ><span>${groupOne.CMT_CNT}</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i
                        ><span>${groupOne.SCRAP_CNT}</span>
                      </li>
                    </ul>
                  </div>
                  <div>
                  
                      <a
                        href="${path}/admin/study/edit?gno=${groupOne.NO}&pno=${pno}&keyword=${keyword}&category=${category}&status=${status}"
                        class="edit-bnt"
                        >수정</a
                      >
               
    
                    <c:if test="${loginMember.no == groupOne.WRITER_NO}">
                      <span class="cursor" onclick="deleteAlert();">삭제</span>
                    </c:if>
                  </div>
                  <script>
                    function deleteAlert() {
                      Swal.fire({
                        title: "글을 삭제하시겠습니까?",
                        text: "삭제하시면 다시 복구시킬 수 없습니다",
                        icon: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#5ecc80",
                        cancelButtonColor: "#d33",
                        confirmButtonText: "삭제",
                        cancelButtonText: "취소",
                      }).then((result) => {
                        if (result.isConfirmed) {
                          location.href =
                            "${path}/study/delete?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}";
                        }
                      });
                    }
                  </script>
                </div>
              </section>
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
                  <div id="map" style="width: 100%; height: 500px"></div>
    
                  <script
                    type="text/javascript"
                    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb4230ca104b4d83bce478dce786ba7d&libraries=services"
                  ></script>
                  <script>
                    var mapContainer = document.getElementById("map"), // 지도를 표시할 div
                      mapOption = {
                        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                        level: 4, // 지도의 확대 레벨
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
                          map.setCenter(coords);
    
                          // 결과값으로 받은 위치를 마커로 표시합니다
                          var marker = new kakao.maps.Marker({
                            map: map,
                            position: coords,
                          });
    
                          // 인포윈도우로 장소에 대한 설명을 표시합니다
                          var infowindow = new kakao.maps.InfoWindow({
                            content:
                              '<div style="width:150px;text-align:center;padding:6px 0 10px 0;">${groupOne.PLACE}</div>',
                          });
                          infowindow.open(map, marker);
    
                          // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                          console.log(coords);
                          map.setCenter(coords);
                        }
                      }
                    );
                  </script>
                </div>
              </section>
              <section class="study-detail-member-area">
                <h1>참여 멤버(${groupOne.memberList.size()}명)</h1>
    
                <ul class="study-member-list">
                  <c:forEach items="${groupOne.memberList}" var="item">
                    <li>
                      <img
                        src="${path}/resources/upload/common/profile_default.png"
                        alt=""
                      />
                      <div>${item.NICK}</div>
                      <c:if test="${item.STATUS == 'B'}">
                        <div>모임장</div>
                      </c:if>
                      <c:if test="${item.STATUS == 'C'}">
                        <div>멤버</div>
                      </c:if>
                    </li>
                  </c:forEach>
                </ul>
              </section>
              <form action="${path}/study/apply" method="post" id="apply">
                <input type="hidden" name="gno" value="${groupOne.NO}" />
                <input type="hidden" name="mno" value="${loginMember.no}" />
                <section class="center">
                    <input
                      class="study-join-btn"
                      type="button"
                      value="가입하기"
                      onclick="login();"/>
                 
                 
                </section>
              </form>
            </article>
            <aside class="study-detail-aside-right">
              <div class="study-detail-aside-right-btns">
                <c:if test="${groupOne.CLOSING_YN == 'N'}">
                  <c:if test="${loginMember != null && myStatus == 'B'}">
                    <div class="cursor" onclick="location.href = '${path}/study/detail/close?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}'">모집중</div>
                  </c:if>
                  <c:if test="${loginMember == null or myStatus != 'B'}">
                    <div>모집중</div>
                  </c:if>
                </c:if>
                <c:if test="${groupOne.CLOSING_YN == 'Y'}">
                  <c:if test="${loginMember != null && myStatus == 'B'}">
                    <div class="cursor main-back" onclick="location.href = '${path}/study/detail/open?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}'">모집완료</div>
                  </c:if>
                  <c:if test="${loginMember == null or myStatus != 'B'}">
                    <div class="main-back">모집완료</div>
                  </c:if>
                </c:if>
                <c:if test="${loginMember == null}">
                  <div class="like-hate-btn">
                    <div class="cursor" onclick="login();"><i class="fa-solid fa-chevron-down"></i></div>
                    <div>${groupOne.LIKE_CNT}</div>
                    <div class="cursor" onclick="login();"><i class="fa-solid fa-chevron-up"></i></div>
                  </div>
                </c:if>
                <c:if test="${loginMember != null && likeScrap.likeHateStatus == null}">
                  <div class="like-hate-btn">
                    <div class="cursor" onclick="location.href = '${path}/study/detail/hate?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}'"><i class="fa-solid fa-chevron-down"></i></div>
                    <div>${groupOne.LIKE_CNT}</div>
                    <div class="cursor" onclick="location.href = '${path}/study/detail/like?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}'"><i class="fa-solid fa-chevron-up"></i></div>
                  </div>
                </c:if>
                <c:if test="${loginMember != null && likeScrap.likeHateStatus == 'L'}">
                  <div class="like-hate-btn">
                    <div class="cursor" ><i class="fa-solid fa-chevron-down"></i></div>
                    <div class="main-color">${groupOne.LIKE_CNT}</div>
                    <div class="main-color cursor" onclick="location.href = '${path}/study/detail/deleteLikeHate?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}'"><i class="fa-solid fa-chevron-up"></i></div>
                  </div>
                </c:if>
                <c:if test="${loginMember != null && likeScrap.likeHateStatus == 'H'}">
                  <div class="like-hate-btn">
                    <div class="red cursor" onclick="location.href = '${path}/study/detail/deleteLikeHate?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}'"><i class="fa-solid fa-chevron-down"></i></div>
                    <div class="red">${groupOne.LIKE_CNT}</div>
                    <div class="cursor"><i class="fa-solid fa-chevron-up"></i></div>
                  </div>
                </c:if>
                
                <c:if test="${loginMember == null}">
                  <div class="cursor" onclick="login();">
                      <i class="fa-regular fa-bookmark"></i
                      ><span>${groupOne.SCRAP_CNT}</span>
                  </div>    
                </c:if>
                <c:if test="${loginMember != null && likeScrap.scrap_yn == null}">
                  <div class="cursor" onclick="location.href = '${path}/study/detail/addScrap?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}'">
                    <i class="fa-regular fa-bookmark "></i
                      ><span>${groupOne.SCRAP_CNT}</span>
                  </div>    
                </c:if>
                <c:if test="${loginMember != null && likeScrap.scrap_yn != null}">
                  <div class="cursor" onclick="location.href = '${path}/study/detail/deleteScrap?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}'">
                    <i class="fa-regular fa-bookmark main-color"></i
                      ><span class="main-color">${groupOne.SCRAP_CNT}</span>
                  </div>    
                </c:if>
                
              </div>
            </aside>
          </main>
          <div class="cmt-div">
            <main class="middle">
              <section class="cmt-area">
                
                <ul class="cmt-list">
                  <c:forEach items="${groupCmtList}" var="map">
                    <li>
                      <div class="cmt-top">
                          <div class="cmt-top-div cmt-profile-img"><img src="${path}/resources/upload/common/profile_default.png" alt=""></div>
                          <div class="cmt-top-div cmt-info">
                            <div class="flex">
                              <c:if test="${map.STATUS == 'B'}">
                                <div class="group-member">모임장</div>
                              </c:if>
                              <c:if test="${map.STATUS == 'C'}">
                                <div class="group-member">멤버</div>
                              </c:if>
                           
                              <div class="member-nick">${map.NICK}</div>
      
                            </div>
                            <div>
                              <span class="enroll-date">${map.ENROLL_DATE}</span>
                              
                              <c:if test="${loginMember != null && loginMember.no == map.WRITER}">
                                <a href="" class="cmt-edit">수정</a>
                                <a href="" class="cmt-edit">삭제</a>
      
                              </c:if>
                            </div>
                          </div>
                          <div class="cmt-top-div">
                            <c:if test="${loginMember == null}">
                              <div class="like-hate-btn">
                                <div class="cursor" onclick="login();"><i class="fa-solid fa-chevron-down"></i></div>
                                <div>${map.CMT_LIKE_CNT}</div>
                                <div class="cursor" onclick="login();"><i class="fa-solid fa-chevron-up"></i></div>
                              </div>
                            </c:if>
                            <c:if test="${loginMember != null && map.likeHateStatus == null}">
                              <div class="like-hate-btn">
                                <div class="cursor" onclick="location.href = '${path}/study/detail/cmtHate?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}&cno=${map.NO}'"><i class="fa-solid fa-chevron-down"></i></div>
                                <div>${map.CMT_LIKE_CNT}</div>
                                <div class="cursor" onclick="location.href = '${path}/study/detail/cmtLike?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}&cno=${map.NO}'"><i class="fa-solid fa-chevron-up"></i></div>
                              </div>
                            </c:if>
                            <c:if test="${loginMember != null && map.likeHateStatus == 'L'}">
                              <div class="like-hate-btn">
                                <div class="cursor"><i class="fa-solid fa-chevron-down"></i></div>
                                <div class="main-color">${map.CMT_LIKE_CNT}</div>
                                <div class="cursor main-color" onclick="location.href = '${path}/study/detail/deleteCmtLikeHate?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}&cno=${map.NO}'"><i class="fa-solid fa-chevron-up"></i></div>
                              </div>
                            </c:if>
                            <c:if test="${loginMember != null && map.likeHateStatus == 'H'}">
                              <div class="like-hate-btn">
                                <div class="cursor red" onclick="location.href = '${path}/study/detail/deleteCmtLikeHate?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}&cno=${map.NO}'"><i class="fa-solid fa-chevron-down"></i></div>
                                <div class="red">${map.CMT_LIKE_CNT}</div>
                                <div class="cursor"><i class="fa-solid fa-chevron-up"></i></div>
                              </div>
                            </c:if>     
                          </div>
                        </div>
                        <div class="cmt-content">
                           ${map.CMT_CONTENT}
                        </div>
                        <div class="cmt-reply"> 
                          <div class="cmt-reply-top">
                            <div>댓글</div>
                            <div ><span class="cmt-toggle-btn">더보기</span><i class="fa-solid fa-chevron-down"></i></div>
                          </div>
                        </div>
                        <div class="cmt-reply-detail hidden">
                          <ul class=cmt-reply-list>
                            <c:forEach items="${map.groupCmtReplyList}" var="reply">
                              <li>
                                <div class="cmt-reply-member-profile">
                                  <div><img src="${path}/resources/upload/common/profile_default.png" alt=""></div>
                                  <div></div>
                                </div>
                                <div class="cmt-reply-content">
                                  <div class="cmt-reply-content-top">
                                    <div class="flex">
                                      <c:if test="${reply.STATUS == 'B'}">
                                        <div class="group-member">모임장</div>
                                      </c:if>
                                      <c:if test="${reply.STATUS == 'C'}">
                                        <div class="group-member">멤버</div>
                                      </c:if>
                                      
                                      <div class="cmt-reply-member-nick">${reply.NICK}</div>
                                      <c:if test="${loginMember != null && loginMember.no == reply.WRITER}">
                                      <a href="" class="cmt-edit">수정</a>
                                      <a href="" class="cmt-edit">삭제</a>
                                      </c:if>
                                    </div>
                                    <div class="cmt-reply-enroll-date">${reply.ENROLL_DATE}</div>
                                  </div>
                                  <div class="cmt-reply-content-bottom">${reply.CMT_CONTENT}</div>
                                </div>
                                <div >
                                  <c:if test="${loginMember == null}">
                                    <div class="like-hate-btn">
                                    <div class="cursor" onclick="login();"><i class="fa-solid fa-chevron-down"></i></div>
                                    <div>${reply.CMT_LIKE_CNT}</div>
                                    <div class="cursor" onclick="login();"><i class="fa-solid fa-chevron-up"></i></div>
                                    </div>
                                  </c:if>
                                  <c:if test="${loginMember != null && reply.replyLikeHateStatus == null}">
                                    <div class="like-hate-btn">
                                    <div class="cursor" onclick="location.href = '${path}/study/detail/cmtHate?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}&cno=${reply.NO}'"><i class="fa-solid fa-chevron-down"></i></div>
                                    <div>${reply.CMT_LIKE_CNT}</div>
                                    <div class="cursor" onclick="location.href = '${path}/study/detail/cmtLike?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}&cno=${reply.NO}'"><i class="fa-solid fa-chevron-up"></i></div>
                                    </div>
                                  </c:if>
                                  <c:if test="${loginMember != null && reply.replyLikeHateStatus == 'L'}">
                                    <div class="like-hate-btn">
                                    <div class="cursor"><i class="fa-solid fa-chevron-down"></i></div>
                                    <div class="main-color">${reply.CMT_LIKE_CNT}</div>
                                    <div class="cursor main-color" onclick="location.href = '${path}/study/detail/deleteCmtLikeHate?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}&cno=${reply.NO}'"><i class="fa-solid fa-chevron-up"></i></div>
                                    </div>
                                  </c:if>
                                  <c:if test="${loginMember != null && reply.replyLikeHateStatus == 'H'}">
                                    <div class="like-hate-btn">
                                    <div class="cursor red" onclick="location.href = '${path}/study/detail/deleteCmtLikeHate?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}&cno=${reply.NO}'"><i class="fa-solid fa-chevron-down"></i></div>
                                    <div class="red">${reply.CMT_LIKE_CNT}</div>
                                    <div class="cursor"><i class="fa-solid fa-chevron-up"></i></div>
                                    </div>
                                  </c:if>     
                              </div>
                              </li>
                            </c:forEach>
                            
                          </ul>
                          <div class="cmt-write-btn">
                              <span>댓글작성</span>
                          </div>
                          <form action="${path}/study/detail/writeCmtReply" method="post">
                            <input type="hidden" name="gno" value="${groupOne.NO}">
                            <input type="hidden" name="keyword" value="${searchVo.keyword}">
                            <input type="hidden" name="tag" value="${fn:join(searchVo.tag,',')}">
                            <input type="hidden" name="techType" value="${searchVo.techType}">
                            <input type="hidden" name="techStack" value="${fn:join(searchVo.techStack,',')}">
                            <input type="hidden" name="type" value="${searchVo.type}">
                            <input type="hidden" name="order" value="${searchVo.order}">
                            <input type="hidden" name="status" value="${searchVo.status}">
                            <input type="hidden" name="mno" value="${loginMember.no}">
                            <div class="cmt-reply-btn hidden">
                              <div class="cmt-reply-area">
                                  <textarea name="cmt" class="summernote"></textarea> 
                                  <input type="hidden" name="group" value="${map.GROUP}"> 
                              </div>
                              <div class="cmt-btn-area relative">
                                <input type="submit" value="답변 등록" />
                              </div>
                            </div>
          
                          </form>
          
                        </div>
                    </li>
                  </c:forEach>
                 
                </ul>
              </section>
              <script src="${path}/resources/js/summernote/summernote-lite.js"></script>
              <script src="${path}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
              <script>
                $(document).ready(function () {
                  //여기 아래 부분
                  $(".summernote").summernote({
                    height: 150, // 에디터 높이
                    minHeight: null, // 최소 높이
                    maxHeight: null, // 최대 높이
                    focus: false, // 에디터 로딩후 포커스를 맞출지 여부
                    lang: "ko-KR", // 한글 설정
                    placeholder: "", //placeholder 설정
                    disableResizeEditor: true,
                  });
                });
      
                //글쓰기 버튼 클릭 시 로그인모달 띄우기
                function login() {
                  $(".blackBG").addClass("show");
                }
              </script>
            </main>
          </div>
        </div>
      </div>
    </div>
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
    <script>
      
      
   
      const cmtToggleBtn = document.querySelectorAll('.cmt-toggle-btn');
      cmtToggleBtn.forEach((o)=>{
        o.addEventListener('click', (event)=>{
          const span = event.target.innerHTML;
          if(span == '더보기') {
            event.target.innerHTML = '접기';
          }
          if(span == '접기') {
            event.target.innerHTML = '더보기';
          }
          const icon = event.target.nextSibling;
          icon.classList.toggle('fa-chevron-down');
          icon.classList.toggle('fa-chevron-up');
          const cmtReply = event.target.parentNode.parentNode.parentNode;
          const cmtReplyDetail = cmtReply.nextSibling.nextSibling;
          cmtReplyDetail.classList.toggle('hidden');
        })
      })

      const cmtWriteBtnSpan = document.querySelectorAll('.cmt-write-btn span');
      cmtWriteBtnSpan.forEach((o)=>{
        o.addEventListener('click', (event)=>{
          const cmtWriteBtn = event.target.parentNode;
          const cmtReplyBtn = cmtWriteBtn.nextSibling.nextSibling.querySelector('.cmt-reply-btn');
          
          if("${loginMember}" == "") {
            login();
          }else {
            cmtWriteBtn.classList.add('hidden');
            cmtReplyBtn.classList.remove('hidden');

          }
 
        })
      })

     

    </script>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
