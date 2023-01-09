<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | MY PAGE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"/>
    <link rel="stylesheet" href="/app/resources/css/mentoring/myMentoring.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <style>
      #mypage-box {
        width: 1200px;
        height: 100%;
        margin: auto;
      }

      #mypage {
        width: 100%;
        display: grid;
        grid-template-columns: 300px 900px;
      }

      #home-area {
        padding: 40px;
        height: auto;
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

      * {
        font-family: "Noto Sans KR", sans-serif;
      }

    </style>
  </head>
  <body>
    <%@include file="/WEB-INF/views/common/header.jsp" %>

    <div id="mypage-box">
        <div id="mypage">
            <div id="bin">
            <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
            </div>
            <div id="home-area">
            <div id="main-wrap">
                    <div id="category-wrap">
                      <div id="mentoring-category-box">
                          <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category1" >
                          <label for="mentoring-category1">신청한 멘토링</label>

                          <c:if test="${sessionScope.mentorInfo == null}">
                              <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category2">
                              <label for="mentoring-category2">멘토 지원하기</label>
                          </c:if>

                          <c:if test="${sessionScope.mentorInfo != null}">
                              <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category3" checked>
                              <label for="mentoring-category3">나의 멘토링 관리</label>
                          </c:if>
                      </div>
                      <!-- TODO 멘토 정보 수정 -->
                      <div id="mentor-modify-btn" onclick="location.href='/app/member/mypage/mentor/modify'">멘토 정보 수정</div>
                      <div id="mentoring-regist-btn" onclick="location.href='/app/mentor/mentoring/regist'">멘토링 설정</div>
                    </div>

                    <div id="mentoring-content-wrap">
                      
                      <c:if test = "${sessionScope.mentorInfo != null and mentorInfo.title == null}">
                        <div id="no-mentor" class="m-notice">아직 멘토링 설정을 하지 않았어요 :( <br>
                          <a href="/app/mentor/mentoring/regist">멘토링 설정하기 ></a>
                        </div>
                      </c:if>

                      <c:if test = "${sessionScope.mentorInfo != null and mentorInfo.title != null}">

                        <div id="content-title">
                            <div class="content-title">상태</div>
                            <div class="content-title">신청자</div>
                            <div class="content-title">연락처</div>
                            <div class="content-title">이메일</div>
                            <div class="content-title">멘토링명</div>
                            <div class="content-title">멘토링일정</div>
                            <div class="content-title">신청정보</div>
                        </div>
                        
                        <c:forEach var="requestList" items="${requestList}">
                          <div class="content-list">
                            <c:if test = "${requestList.applyYn == 'N' and requestList.cancelYn == 'N' and requestList.completeYn == 'N'}">
                              <div class="content">수락대기중</div>
                            </c:if>
                            <c:if test = "${requestList.applyYn == 'Y' and requestList.cancelYn == 'N' and requestList.completeYn == 'N'}">
                              <div class="content">수락완료</div>
                            </c:if>
                            <c:if test = "${requestList.completeYn == 'Y'}">
                              <div class="content">완료됨</div>
                            </c:if>
                            <c:if test = "${requestList.cancelYn == 'Y'}">
                              <div class="content">취소됨</div>
                            </c:if>

                              <div class="content">${requestList.menteeNick}</div>
                              <div class="content">${requestList.phoneNo}</div>
                              <div class="content">${requestList.email}</div>
                              <div class="content">${requestList.title}</div>
                              <div class="content">
                                ${requestList.reservationDate} 
                                ${requestList.reservationTime}
                              </div>

                            <c:if test = "${requestList.applyYn == 'N' and requestList.cancelYn == 'N'}">
                              <div class="content">
                                <input type="hidden" name="" id = "no-input" value="${requestList.no}">
                                <div class = "apply-btn btn">수락</div>
                                <div class = "refuse-btn btn">거절</div>
                              </div>
                            </c:if>
                            <c:if test = "${requestList.applyYn == 'Y' and requestList.cancelYn == 'N' and requestList.completeYn == 'N'}">
                              <div class="content">
                                <input type="hidden" name="" id = "no-input" value="${requestList.no}">
                                <div class = "complete-btn btn">멘토링 완료</div>
                              </div>
                            </c:if>
                            <c:if test = "${requestList.completeYn == 'Y'}">
                              <div class="content">
                                멘토링 완료
                              </div>
                            </c:if>
                            <c:if test = "${requestList.cancelYn == 'Y'}">
                              <div class="content btn">취소됨</div>
                            </c:if>
                          </div>

                        </c:forEach>

                        <c:if test = "${requestList == null}">
                          <div id="no-application" class="m-notice">아직 멘토링 신청이 없어요 :( </div>
                        </c:if>

                      </c:if>

                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

    <script>
      // 수락 처리
      $('.apply-btn').click(function() {
        console.log('수락');
        const no = $(this).prev().val();
        $.ajax({
          url: '/app/mentor/mentoring/acception',
          type: 'post',
          data: {
            no: no
          },
          success: function() {
            //페이지 새로고침
            console.log('성공');
            document.location.reload();
            
          }
        });
      });

      // 멘토링 완료 처리
      $('.complete-btn').click(function() {
        console.log('완료');
        const no = $(this).prev().val();
        $.ajax({
          url: '/app/mentor/mentoring/complete',
          type: 'post',
          data: {
            no: no
          },
          success: function() {
            //페이지 새로고침
            console.log('성공');
            document.location.reload();
            
          }
        });
      });


    </script>

   
    <script>
        const mentoringCategory1 = $('#mentoring-category1').next();
        mentoringCategory1.click(function() {
            location.href = '/app/member/mypage/mentoring';
        });

        const mentoringCategory2 = $('#mentoring-category2').next();
        mentoringCategory2.click(function() {
            location.href = '/app/member/mypage/mentoring/register';
        });

        const mentoringCategory3 = $('#mentoring-category3').next();
        mentoringCategory3.click(function() {
            location.href = '/app/member/mypage/mentoring/manage';
        });

    </script>
    

    <script>
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    </script>
  </body>
</html>
