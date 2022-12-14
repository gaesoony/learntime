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
      rel="stylesheet"
      href="/app/resources/css/summernote/summernote-lite.css"
    />
  
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <div class="middle">
      <main class="main-study-detail">
        <aside class="study-detail-aside-left">
          <button
            class="back-btn"
            onclick="location.href='${path}/study/list?keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}'"
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
                  src="${path}${groupOne.IMG_PATH}"
                  alt=""
                  onerror="this.src='${path}/resources/img/profile_default.png'"
                  onclick="location.href='${path}/member/mypage/home?no=${groupOne.WRITER_NO}'"
                  class="cursor"
                />
                </div>
                <div class="user-nick flex">
                  <div class="cursor" onclick="location.href='${path}/member/mypage/home?no=${groupOne.WRITER_NO}'">${groupOne.NICK}</div>
                  
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
                <c:if test="${loginMember.no == groupOne.WRITER_NO}">
                  <a
                    href="${path}/study/edit?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}"
                    class="edit-bnt"
                    >??????</a
                  >
                </c:if>

                <c:if test="${loginMember.no == groupOne.WRITER_NO}">
                  <span class="cursor" onclick="deleteAlert();">??????</span>
                </c:if>
              </div>
              <script>
                function deleteAlert() {
                  Swal.fire({
                    title: "?????? ?????????????????????????",
                    text: "??????????????? ?????? ???????????? ??? ????????????",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#5ecc80",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "??????",
                    cancelButtonText: "??????",
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
                <div>????????????</div>
                <div>${groupOne.TYPE}</div>
              </li>
              <li class="flex">
                <div>????????????</div>
                <div>${groupOne.WAY}</div>
              </li>
              <li class="flex">
                <div>????????????</div>
                <div>
                  ${groupOne.NUMBER_PEOPLE}???
                  (${groupOne.memberList.size()}/${groupOne.NUMBER_PEOPLE})
                </div>
              </li>
              <li class="flex">
                <div>????????????</div>
                <div>${groupOne.START_DATE}</div>
              </li>
              <li class="flex">
                <div>????????????</div>
                <div>${groupOne.PERIOD}</div>
              </li>
              <li class="flex">
                <div>????????????</div>
                <div>${groupOne.START_TIME} ~ ${groupOne.END_TIME}</div>
              </li>
              <li class="flex">
                <div>????????????</div>
                <c:if test="${groupOne.PLACE != null }">
                  <div>${groupOne.PLACE} (${groupOne.ADDRESS})</div>
                </c:if>
                <c:if test="${groupOne.PLACE == null }">
                  <div>??????????????? ?????????</div>
                </c:if>
              </li>
              <li class="flex">
                <div>????????????</div>
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
              <li class="study-tab clicked">???????????? ??????</li>
              <li class="study-tab">?????? ??????</li>
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
                var mapContainer = document.getElementById("map"), // ????????? ????????? div
                  mapOption = {
                    center: new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
                    level: 4, // ????????? ?????? ??????
                  };

                // ????????? ???????????????
                var map = new kakao.maps.Map(mapContainer, mapOption);

                // ??????-?????? ?????? ????????? ???????????????
                var geocoder = new kakao.maps.services.Geocoder();

                // ????????? ????????? ???????????????
                geocoder.addressSearch(
                  "${groupOne.ADDRESS}",
                  function (result, status) {
                    // ??????????????? ????????? ???????????????
                    if (status === kakao.maps.services.Status.OK) {
                      var coords = new kakao.maps.LatLng(
                        result[0].y,
                        result[0].x
                      );
                      map.setCenter(coords);

                      // ??????????????? ?????? ????????? ????????? ???????????????
                      var marker = new kakao.maps.Marker({
                        map: map,
                        position: coords,
                      });

                      // ?????????????????? ????????? ?????? ????????? ???????????????
                      var infowindow = new kakao.maps.InfoWindow({
                        content:
                          '<div style="width:150px;text-align:center;padding:6px 0 10px 0;">${groupOne.PLACE}</div>',
                      });
                      infowindow.open(map, marker);

                      // ????????? ????????? ??????????????? ?????? ????????? ??????????????????
                      console.log(coords);
                      map.setCenter(coords);
                    }
                  }
                );
              </script>
            </div>
          </section>
          <section class="study-detail-member-area">
            <h1>?????? ??????(${groupOne.memberList.size()}???)</h1>

            <ul class="study-member-list">
              <c:forEach items="${groupOne.memberList}" var="item">
                <li>
                  <img
                  class="circle cursor"
                  src="${path}${item.IMG_PATH}"
                  alt=""
                  onerror="this.src='${path}/resources/img/profile_default.png'"
                  onclick="location.href='${path}/member/mypage/home?no=${groupOne.WRITER_NO}'"
                />
                  <div class="cursor" onclick="location.href='${path}/member/mypage/home?no=${groupOne.WRITER_NO}'">${item.NICK}</div>
                  <c:if test="${item.STATUS == 'B'}">
                    <div>?????????</div>
                  </c:if>
                  <c:if test="${item.STATUS == 'C'}">
                    <div>??????</div>
                  </c:if>
                </li>
              </c:forEach>
            </ul>
          </section>
          <form action="${path}/study/apply" method="post" id="apply">
            <input type="hidden" name="gno" value="${groupOne.NO}" />
            <input type="hidden" name="mno" value="${loginMember.no}" />
            <section class="center">
              <c:if test="${loginMember != null && groupOne.CLOSING_YN == 'N' && groupOne.memberList.size() != groupOne.NUMBER_PEOPLE &&(myStatus == null || myStatus == 'D' || myStatus == 'F' )}">
                <input
                  class="study-join-btn"
                  type="button"
                  id="study-modal-open"
                  value="????????????"/>
              </c:if>
              <c:if test="${loginMember != null && (myStatus == 'A' || myStatus == 'B' || myStatus == 'C' || myStatus == 'E' || groupOne.CLOSING_YN == 'Y' || groupOne.memberList.size() == groupOne.NUMBER_PEOPLE)}">
                <input class="study-join-btn" type="button" value="????????????" onclick="alertEnable('${myStatus}');"/>
              </c:if>
              <c:if test="${loginMember == null}">
                <input
                  class="study-join-btn"
                  type="button"
                  value="????????????"
                  onclick="login();"/>
              </c:if>

              <div class="study-popup-wrap" id="study-popup">
                <div class="study-popup">
                  <div class="study-popup-head">
                    <div class="study-head-title">?????? ??????</div>
                    <div>?????? ????????? ?????? ????????? ??????????????????</div>
                  </div>
                  <div class="study-popup-body">
                    <c:if test="${groupOne.questionList.size()==0}">
                      <div>?????? ?????? ???????????????????</div>
                    </c:if>
                    <c:if test="${groupOne.questionList.size()>0}">
                      <c:forEach
                        items="${groupOne.questionList}"
                        var="item"
                        varStatus="status"
                      >
                      <input type="hidden" value="${item.NO}" name="qno">
                        <div class="study-body-content">
                          <div class="study-body-titlebox">
                            <div>??????${status.index + 1}</div>
                            <div>${item.QUESTION}</div>
                          </div>
                          <div class="study-body-contentbox">
                            <input type="text" name="answer" />
                          </div>
                        </div>
                      </c:forEach>
                    </c:if>
                  </div>
                  <div class="study-popup-foot">
                    <div class="study-pop-btn study-confirm" id="study-confirm">
                      ??????
                    </div>

                    <div class="study-pop-btn study-close" id="study-close">
                      ??????
                    </div>
                  </div>
                </div>
              </div>
              <script>
                $(function () {
                  $("#study-confirm").click(function () {
                    document.querySelector("#apply").submit();
                    //???????????????
                    const msg1 = "11#????????? ??????#"+${groupOne.WRITER_NO}+"#"+${loginMember.no}+"#??????????????? ????????????";
                    webSocket.send(msg1);

                    //?????? ????????? ??????
                  });
                  $("#study-modal-open").click(function () {
                    $("#study-popup").css("display", "flex").hide().fadeIn();
                    //????????? flex???????????? ????????? ??? hide()??? ????????? ?????? fadeIn()?????? ??????
                  });
                  $("#study-close").click(function () {
                    modalClose(); //?????? ?????? ?????? ??????
                  });
                  function modalClose() {
                    $("#study-popup").fadeOut(); //??????????????? ??????
                  }
                });

                function alertEnable(x) {
                  
                  if(x == 'A') {
                    Swal.fire('?????? ??????????????? ???????????????');
                  }

                  if(x == 'B') {
                    Swal.fire('?????? ??????????????????!');
                  }

                  if(x == 'C') {
                    Swal.fire('??????????????? ???????????????');
                  }

                  if(x == 'E') {
                    Swal.fire('??????????????? ????????? ???????????????');
                  }

                  if("${groupOne.CLOSING_YN}" == 'Y') {
                    Swal.fire('???????????????????????????!');
                  }

                  if("${groupOne.memberList.size()}" == "${groupOne.NUMBER_PEOPLE}") {
                    Swal.fire('????????? ???????????????!');
                  }
                }

               
              </script>
            </section>
          </form>
        </article>
        <aside class="study-detail-aside-right">
          <div class="study-detail-aside-right-btns">
            <c:if test="${groupOne.CLOSING_YN == 'N'}">
              <c:if test="${loginMember != null && myStatus == 'B'}">
                <div class="cursor" onclick="location.href = '${path}/study/detail/close?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}'">?????????</div>
              </c:if>
              <c:if test="${loginMember == null or myStatus != 'B'}">
                <div>?????????</div>
              </c:if>
            </c:if>
            <c:if test="${groupOne.CLOSING_YN == 'Y'}">
              <c:if test="${loginMember != null && myStatus == 'B'}">
                <div class="cursor main-back" onclick="location.href = '${path}/study/detail/open?gno=${groupOne.NO}&keyword=${searchVo.keyword}&tag=${fn:join(searchVo.tag,',')}&techType=${searchVo.techType}&techStack=${fn:join(searchVo.techStack,',')}&type=${searchVo.type}&order=${searchVo.order}&status=${searchVo.status}&mno=${loginMember.no}'">????????????</div>
              </c:if>
              <c:if test="${loginMember == null or myStatus != 'B'}">
                <div class="main-back">????????????</div>
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
    </div>
    <div class="cmt-div">
      <main class="middle">
        <section class="cmt-area">
          <div class="cmt-input">
            <div class="cmt-input-top flex">
              <c:if test="${loginMember.nick == null}">
                <img
                  src="${path}/resources/upload/common/profile_default.png"
                  alt=""
                />
                <div class="bold700">??????????????? ????????? ???????????????!</div>
              </c:if>
              <c:if test="${loginMember.nick != null}">
                <c:if test="${loginMember.imgName == null}">
                  <img
                    src="/app/resources/upload/common/profile_default.png"
                    alt=""
                  />
                </c:if>
                <c:if test="${loginMember.imgName != null}">
                  <img
                  class="circle"
                  src="/app/${loginMember.imgName}"
                  alt=""
                  onerror="this.src='${path}/resources/img/profile_default.png'"
                />
                </c:if>
                <div class="bold700">
                  ${loginMember.nick}???, ????????? ???????????????!
                </div>
              </c:if>
            </div>
            <c:if test="${loginMember != null}">
              <form action="${path}/study/detail/writeCmt" method="post">
                <input type="hidden" name="gno" value="${groupOne.NO}">
                <input type="hidden" name="keyword" value="${searchVo.keyword}">
                <input type="hidden" name="tag" value="${fn:join(searchVo.tag,',')}">
                <input type="hidden" name="techType" value="${searchVo.techType}">
                <input type="hidden" name="techStack" value="${fn:join(searchVo.techStack,',')}">
                <input type="hidden" name="type" value="${searchVo.type}">
                <input type="hidden" name="order" value="${searchVo.order}">
                <input type="hidden" name="status" value="${searchVo.status}">
                <input type="hidden" name="mno" value="${loginMember.no}">
                <div class="cmt-area">
                  <textarea name="cmt" class="summernote"></textarea>
                </div>
                <div class="cmt-btn-area relative">
                  <input type="submit" value="?????? ??????"/>
                </div>

              </form>

            </c:if>
          </div>
          <ul class="cmt-list">
          	<c:forEach items="${groupCmtList}" var="map">
            	<li>
	            	<div class="cmt-top">
	                	<div class="cmt-top-div cmt-profile-img">
                      <img
                      class="circle cursor"
                      src="${path}${map.IMG_PATH}"
                      alt=""
                      onerror="this.src='${path}/resources/img/profile_default.png'"
                      onclick="location.href='${path}/member/mypage/home?no=${map.MEMBER_NO}'"
                    />
                    </div>
		                <div class="cmt-top-div cmt-info">
                      <div class="flex">
                        <c:if test="${map.STATUS == 'B'}">
                          <div class="group-member">?????????</div>
                        </c:if>
                        <c:if test="${map.STATUS == 'C'}">
                          <div class="group-member">??????</div>
                        </c:if>
                     
                        <div class="member-nick cursor" onclick="location.href='${path}/member/mypage/home?no=${map.MEMBER_NO}'">${map.NICK}</div>

                      </div>
		                  <div>
		                    <span class="enroll-date">${map.ENROLL_DATE}</span>
                        
                        <c:if test="${loginMember != null && loginMember.no == map.WRITER}">
                          <a href="" class="cmt-edit">??????</a>
                          <a href="" class="cmt-edit">??????</a>

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
		                  <div>??????</div>
		                  <div ><span class="cmt-toggle-btn">?????????</span><i class="fa-solid fa-chevron-down"></i></div>
		                </div>
		              </div>
		              <div class="cmt-reply-detail hidden">
		                <ul class=cmt-reply-list>
		                	<c:forEach items="${map.groupCmtReplyList}" var="reply">
			                	<li>
			                    <div class="cmt-reply-member-profile">
			                      <div>
                              <img
                              class="circle cursor"
                              src="${path}${reply.IMG_PATH}"
                              alt=""
                              onerror="this.src='${path}/resources/img/profile_default.png'"
                              onclick="location.href='${path}/member/mypage/home?no=${reply.MEMBER_NO}'"
                            />
                            </div>
			                      <div></div>
			                    </div>
			                    <div class="cmt-reply-content">
			                      <div class="cmt-reply-content-top">
			                        <div class="flex">
                                <c:if test="${reply.STATUS == 'B'}">
                                  <div class="group-member">?????????</div>
                                </c:if>
                                <c:if test="${reply.STATUS == 'C'}">
                                  <div class="group-member">??????</div>
                                </c:if>
			                          
			                          <div class="cmt-reply-member-nick cursor" onclick="location.href='${path}/member/mypage/home?no=${reply.MEMBER_NO}'">${reply.NICK}</div>
                                <c:if test="${loginMember != null && loginMember.no == reply.WRITER}">
			                          <a href="" class="cmt-edit">??????</a>
			                          <a href="" class="cmt-edit">??????</a>
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
		                    <span>????????????</span>
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
		                      <input type="submit" value="?????? ??????" />
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
            //?????? ?????? ??????
            $(".summernote").summernote({
              height: 150, // ????????? ??????
              minHeight: null, // ?????? ??????
              maxHeight: null, // ?????? ??????
              focus: false, // ????????? ????????? ???????????? ????????? ??????
              lang: "ko-KR", // ?????? ??????
              placeholder: "", //placeholder ??????
              disableResizeEditor: true,
            });
          });

          //????????? ?????? ?????? ??? ??????????????? ?????????
          function login() {
            $(".blackBG").addClass("show");
          }
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

   
      const cmtToggleBtn = document.querySelectorAll('.cmt-toggle-btn');
      cmtToggleBtn.forEach((o)=>{
        o.addEventListener('click', (event)=>{
          const span = event.target.innerHTML;
          if(span == '?????????') {
            event.target.innerHTML = '??????';
          }
          if(span == '??????') {
            event.target.innerHTML = '?????????';
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

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>
