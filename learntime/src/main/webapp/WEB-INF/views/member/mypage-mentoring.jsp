<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | MY PAGE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"/>
    <link rel="stylesheet" href="/app/resources/css/mentoring/myMentoringA.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>
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
                        <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category1" checked>
                        <label for="mentoring-category1">신청한 멘토링</label>
                        <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category2">
                        <label for="mentoring-category2">멘토 지원하기</label>
                        <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category3">
                        <label for="mentoring-category3">나의 멘토링 관리</label>

                      
                    </div>
                </div>
        
                <div id="mentoring-content-wrap">
                    <div id="content-title-box">
                        <input class="sm-category" type="radio" name="mentoring-sm-category" id="mentoring-sm-category1" checked>
                        <label for="mentoring-sm-category1">
                            <span class="material-symbols-rounded dot-icon">fiber_manual_record</span>
                            <span> 전체</span>
                        </label>
                        <input class="sm-category" type="radio" name="mentoring-sm-category" id="mentoring-sm-category2">
                        <label for="mentoring-sm-category2">
                            <span class="material-symbols-rounded dot-icon">fiber_manual_record</span>
                            <span> 승인대기</span>
                        </label>
                        <input class="sm-category" type="radio" name="mentoring-sm-category" id="mentoring-sm-category3">
                        <label for="mentoring-sm-category3">
                            <span class="material-symbols-rounded dot-icon">fiber_manual_record</span>
                            <span> 예약확정</span>
                        </label>
                        <input class="sm-category" type="radio" name="mentoring-sm-category" id="mentoring-sm-category4">
                        <label for="mentoring-sm-category4">
                            <span class="material-symbols-rounded dot-icon">fiber_manual_record</span>
                            <span> 이용완료</span>
                        </label>
                        <input class="sm-category" type="radio" name="mentoring-sm-category" id="mentoring-sm-category5">
                        <label for="mentoring-sm-category5">
                            <span class="material-symbols-rounded dot-icon">fiber_manual_record</span>
                            <span> 취소/환불</span>
                        </label>
                    </div>
        
                    <div class="content-box">
                        <div class="mentoring-nbr">
                            <span>No 221129192042</span>
                        </div>
                        <div class="mentoring-title">
                            <span>스프링으로 생산력 향상 시켜드립니다.</span>
                        </div>
                        <div class="mentor-info">
                            <div class="mentor-nick">
                                <a href="">
                                    <img src="/app/resources/img/profile01.png" alt="">
                                    <span>코딩하는망치맨</span>
                                </a>
                            </div>
                            <div class="apply-date">신청 날짜 : 2022/11/29 19:20:42</div>
                        </div>
                        <div class="mentoring-status">
                            <div class="status-txt">예약 확정</div>
                            <div class="status-btn red-btn">취소하기</div>
                        </div>
                    </div>
                    
                    <div class="content-box">
                        <div class="mentoring-nbr">
                            <span>No 221129192042</span>
                        </div>
                        <div class="mentoring-title">
                            <span>스프링으로 생산력 향상 시켜드립니다아아아아아아아아아아아</span>
                        </div>
                        <div class="mentor-info">
                            <div class="mentor-nick">
                                <a href="">
                                    <img src="/app/resources/img/profile01.png" alt="">
                                    <span>코딩하는망치맨</span>
                                </a>
                            </div>
                            <div class="apply-date">신청 날짜 : 2022/11/29 19:20:42</div>
                        </div>
                        <div class="mentoring-status">
                            <div class="status-txt">승인대기중</div>
                            <div class="status-btn red-btn">취소하기</div>
                        </div>
                    </div>
                   
                    <div class="content-box">
                        <div class="mentoring-nbr">
                            <span>No 221129192042</span>
                        </div>
                        <div class="mentoring-title">
                            <span>스프링으로 생산력 향상 시켜드립니다.</span>
                        </div>
                        <div class="mentor-info">
                            <div class="mentor-nick">
                                <a href="">
                                    <img src="/app/resources/img/profile01.png" alt="">
                                    <span>코딩하는망치맨</span>
                                </a>
                            </div>
                            <div class="apply-date">신청 날짜 : 2022/11/29 19:20:42</div>
                        </div>
                        <div class="mentoring-status">
                            <div class="status-txt">이용 완료</div>
                            <div class="status-btn green-btn review-btn">후기작성</div>
                        </div>
                    </div>
                    
                    <div class="review-box" hidden>
                        <form action="">
                            <div class="review-head">
                                <div class="review-star">
                                    <div class="star-box">
                                        <span class="material-symbols-rounded star-icon">star</span>
                                        <span class="material-symbols-rounded star-icon">star</span>
                                        <span class="material-symbols-rounded star-icon">star</span>
                                        <span class="material-symbols-rounded star-icon">star</span>
                                        <span class="material-symbols-rounded star-icon">star</span>

                                        <select name="" id="" class="star" hidden>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="star-txt">
                                    <span></span>
                                </div>
                                <div class="review-write-btn green-btn">작성하기</div>
                            </div>
                            
                            <div class="review-txt">
                                <textarea name="" id="" cols="30" rows="10" placeholder="멘토링에 대한 솔직한 후기를 남겨주세요"></textarea>
                            </div>
                        </form>
                    </div>



                    <div id="no-application" class="m-notice">신청한 멘토링이 없습니다. :( </div>
                </div>
            </div>
            </div>
        </div>
    </div>
    <%@include file="/WEB-INF/views/common/footer2.jsp" %>
    
      <!-- 카테고리 임시 코드-->
      <script>
      const mentoringCategory2 = document.querySelector('#mentoring-category2');
      mentoringCategory2.addEventListener('click', () => {
          location.href = '/app/mentor/mymentoring/temp2';
      });

      const mentoringCategory3 = document.querySelector('#mentoring-category3');
      mentoringCategory3.addEventListener('click', () => {
          location.href = '/app/mentor/mymentoring/temp3';
      });


      // 리뷰
      $('.review-btn').click(function(){
        $('.review-box').slideToggle(300);
      });

      //별 클릭시 채워짐 변경
      $(document).ready(function(){
          $(".star-icon").click(function(){
              $(this).addClass("filled-icon");
              $(this).prevAll().addClass("filled-icon");
              $(this).nextAll().removeClass("filled-icon");
          });
      });

      //별 클릭시 별점 텍스트 변경
      $(document).ready(function(){
          $(".star-box span:first").click(function(){
              $(".star-txt span").text("1점 (매우 나쁨) 어떤 점이 불만족스러웠나요? :(");
          });
      });
      $(document).ready(function(){
          $(".star-box span:nth-child(2)").click(function(){
              $(".star-txt span").text("2점 (나쁨) 어떤 점이 불만족스러웠나요? :(");
          });
      });
      $(document).ready(function(){
          $(".star-box span:nth-child(3)").click(function(){
              $(".star-txt span").text("3점 (보통) 개선 사항을 피드백 해주세요 :)");
          });
      });
      $(document).ready(function(){
          $(".star-box span:nth-child(4)").click(function(){
              $(".star-txt span").text("4점 (좋음) 어떤 점이 만족스러웠나요? :)");
          });
      });
      $(document).ready(function(){
          $(".star-box span:nth-child(5)").click(function(){
              $(".star-txt span").text("5점 (매우 좋음) 어떤 점이 만족스러웠나요? :)");
          });
      });
      </script>

    <script>
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    </script>
  </body>
</html>
