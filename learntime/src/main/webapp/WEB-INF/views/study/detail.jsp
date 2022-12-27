<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${path}/resources/css/study/detail.css?ver=4"
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
      <main class="main-study-detail">
        <aside class="study-detail-aside-left">
          <button class="back-btn" onclick="location.href='${path}/study/list'">
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
                <c:if test="${loginMember.no != groupOne.WRITER_NO}">
                  <a href="" class="no-cursor">수정</a>
                </c:if>
                <c:if test="${loginMember.no == groupOne.WRITER_NO}">
                  <a
                    href="${pageContext.request.contextPath}/study/edit?gno=${groupOne.NO}"
                    >수정</a
                  >
                </c:if>

                <c:if test="${loginMember.no != groupOne.WRITER_NO}">
                  <a href="" class="no-cursor">삭제</a>
                </c:if>
                <c:if test="${loginMember.no == groupOne.WRITER_NO}">
                  <a
                    href="${pageContext.request.contextPath}/study/delete?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}"
                    >삭제</a
                  >
                </c:if>
              </div>
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
                  "서울 강남구 테헤란로14길 6 남도빌딩 2층, 3층, 4층",
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
                          '<div style="width:150px;text-align:center;padding:6px 0;">스터디장소</div>',
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
          <section class="center">
            <input
              class="study-join-btn"
              type="button"
              id="study-modal-open"
              value="가입하기"
            />
            <div class="study-popup-wrap" id="study-popup">
              <div class="study-popup">
                <div class="study-popup-head">
                  <div class="study-head-title">가입 신청</div>
                  <div>가입 신청을 위한 정보를 입력해주세요</div>
                </div>
                <div class="study-popup-body">
                  <c:if test="${groupOne.questionList.size()==0}">
                    <div>가입 신청 하시겠습니까?</div>
                  </c:if>
                  <c:if test="${groupOne.questionList.size()>0}">
                    <c:forEach
                      items="${groupOne.questionList}"
                      var="item"
                      varStatus="status"
                    >
                      <div class="study-body-content">
                        <div class="study-body-titlebox">
                          <div>질문${status.index + 1}</div>
                          <div>${item.QUESTION}</div>
                        </div>
                        <div class="study-body-contentbox">
                          <input type="text" />
                        </div>
                      </div>
                    </c:forEach>
                  </c:if>
                </div>
                <div class="study-popup-foot">
                  <div class="study-pop-btn study-confirm" id="study-confirm">
                    신청
                  </div>

                  <div class="study-pop-btn study-close" id="study-close">
                    취소
                  </div>
                </div>
              </div>
            </div>
            <script>
              $(function () {
                $("#study-confirm").click(function () {
                  modalClose(); //모달 닫기 함수 호출

                  //컨펌 이벤트 처리
                });
                $("#study-modal-open").click(function () {
                  $("#study-popup").css("display", "flex").hide().fadeIn();
                  //팝업을 flex속성으로 바꿔준 후 hide()로 숨기고 다시 fadeIn()으로 효과
                });
                $("#study-close").click(function () {
                  modalClose(); //모달 닫기 함수 호출
                });
                function modalClose() {
                  $("#study-popup").fadeOut(); //페이드아웃 효과
                }
              });
            </script>
          </section>
        </article>
        <aside class="study-detail-aside-right">
          <div class="study-detail-aside-right-btns">
            <c:if test="${groupOne.CLOSING_YN == 'N'}">
              <c:if test="${loginMember.no == groupOne.WRITER_NO}">
                <div>모집중</div>
              </c:if>
              <c:if test="${loginMember.no != groupOne.WRITER_NO}">
                <div class="no-cursor">모집중</div>
              </c:if>
            </c:if>
            <c:if test="${groupOne.CLOSING_YN == 'Y'}">
              <c:if test="${loginMember.no == groupOne.WRITER_NO}">
                <div>모집완료</div>
              </c:if>
              <c:if test="${loginMember.no != groupOne.WRITER_NO}">
                <div class="no-cursor">모집완료</div>
              </c:if>
            </c:if>
            <div class="like-hate-btn">
              <div><i class="fa-solid fa-chevron-down"></i></div>
              <c:if test="${likeScarp.likeHateStatus == 'Y'}">
                <div class="main-color">${groupOne.LIKE_CNT}</div>
              </c:if>
              <c:if test="${likeScarp.likeHateStatus == 'N'}">
                <div class="red">${groupOne.LIKE_CNT}</div>
              </c:if>
              <c:if test="${likeScarp.likeHateStatus == null}">
                <div>${groupOne.LIKE_CNT}</div>
              </c:if>
              <div><i class="fa-solid fa-chevron-up"></i></div>
            </div>
            <div>
              <c:if test="${likeScarp.scrap_yn != null}">
                <i class="fa-regular fa-bookmark main-color"></i
                ><span class="main-color">${groupOne.SCRAP_CNT}</span>
              </c:if>
              <c:if test="${likeScarp.scrap_yn == null}">
                <i class="fa-regular fa-bookmark"></i
                ><span>${groupOne.SCRAP_CNT}</span>
              </c:if>
            </div>
          </div>
        </aside>
      </main>
    </div>
    <div class="cmt-div">
      <main class="middle">
        <section class="cmt-area">
          <div class="cmt-input">
            <div class="cmt-input-top flex">
              <img src="/app/resources/img/study/profile.png" alt="" />
              <div class="bold700">한혜원님, 댓글을 남겨보세요!</div>
            </div>
            <div class="cmt-area">
              <textarea name="editordata" id="summernote"></textarea>
            </div>
            <div class="cmt-btn-area relative">
              <input type="button" value="답변 등록" />
            </div>
          </div>
        </section>

        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
        <script>
          $(document).ready(function () {
            //여기 아래 부분
            $("#summernote").summernote({
              height: 120, // 에디터 높이
              minHeight: null, // 최소 높이
              maxHeight: null, // 최대 높이
              focus: false, // 에디터 로딩후 포커스를 맞출지 여부
              lang: "ko-KR", // 한글 설정
              placeholder: "", //placeholder 설정
              disableResizeEditor: true,
            });
          });
        </script>
      </main>
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

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>
