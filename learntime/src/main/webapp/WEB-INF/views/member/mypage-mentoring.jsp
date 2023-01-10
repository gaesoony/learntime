<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- jstl 라이브러리 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

                        <c:if test="${sessionScope.mentorInfo == null}">
                            <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category2">
                            <label for="mentoring-category2">멘토 지원하기</label>
                        </c:if>

                        <c:if test="${sessionScope.mentorInfo != null}">
                            <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category3">
                            <label for="mentoring-category3">나의 멘토링 관리</label>
                        </c:if>

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
                    <!-- avList nul check -->
                    <c:if test="${avList == null || avList.size() == 0}">
                        <div id="no-application" class="m-notice">신청한 멘토링이 없습니다. :( </div>
                    </c:if>

                    <c:forEach items="${avList}" var="av">
                        <div class="content-box">
                            <div class="mentoring-nbr">
                                <span>No. ${av.no}</span>
                            </div>
                            <div class="mentoring-title">
                                <span>${av.title}</span>
                            </div>
                            <div class="mentor-info">
                                <div class="mentor-nick">
                                    <a href="">
                                        <img src="/app/${av.mentorImg}" alt="">
                                        <span>${av.mentorNick}</span>
                                    </a>
                                </div>
                                <div class="apply-date">신청 날짜 : ${av.paymentDate}</div>
                            </div>
                            <div class="mentoring-status">
                                <div class="status-txt">
                                    <c:if test="${av.applyYn eq 'N' and av.cancelYn eq 'N' and av.completeYn eq 'N'}">
                                        승인 대기중
                                    </div>
                                    <input type="hidden" name="" value="${av.no}">
                                    <div class="status-btn red-btn cancel-btn">취소하기</div>
                                    </c:if>

                                    <c:if test="${av.applyYn eq 'Y' and av.cancelYn eq 'N' and av.completeYn eq 'N'}">
                                        예약 확정
                                    </div>
                                    <input type="hidden" name="" value="${av.no}">
                                    <div class="status-btn red-btn cancel-btn">취소하기</div>
                                    </c:if>

                                    <c:if test="${av.cancelYn eq 'Y'}">
                                        취소 완료
                                    </c:if>
                                    
                                    <c:if test="${av.applyYn eq 'Y' and av.cancelYn eq 'N' and av.completeYn eq 'Y'}">
                                        이용 완료
                                    </div>
                                        <c:if test="${av.reviewWriter == 0}">
                                            <div class="status-btn green-btn review-btn">후기작성</div>
                                        </c:if>
                                    
                                    </c:if>
                                    
                            </div>
                        </div>
                        <!-- 후기작성 div -->
                        <c:if test="${av.applyYn eq 'Y' and av.cancelYn eq 'N' and av.completeYn eq 'Y' and av.reviewWriter == 0}">
                            <div class="review-box" >
                                <form action="/app/mentor/review/write" method="post">
                                    <div class="review-head">
                                        <div class="review-star">
                                            <div class="star-box">
                                                <span class="material-symbols-rounded star-icon">star</span>
                                                <span class="material-symbols-rounded star-icon">star</span>
                                                <span class="material-symbols-rounded star-icon">star</span>
                                                <span class="material-symbols-rounded star-icon">star</span>
                                                <span class="material-symbols-rounded star-icon">star</span>
                                                <select name="star" class="star" hidden>
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
                                        <input type="hidden" name="mentorNo" value="${av.mentorNo}">
                                        <input type="hidden" name="no" value="${av.no}">
                                        <div class="review-write-btn green-btn">작성하기</div>
                                    </div>
                                    <div class="review-txt">
                                        <textarea name="content" cols="30" rows="10" placeholder="멘토링에 대한 솔직한 후기를 남겨주세요"></textarea>
                                    </div>
                                </form>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="/WEB-INF/views/common/footer2.jsp" %>
    <script>
        // 후기 작성창 토글
        $('.review-btn').click(function(){
            $(this).parent().parent().next('.review-box').slideToggle(200);
        });

        // 후기작성 버튼 클릭시 ajax
        $('.review-write-btn').click(function(){
            $.ajax({
                url : '/app/mentor/review/write',
                type : 'post',
                data : {
                    paymentNo : $(this).closest('.review-box').find('input[name="no"]').val(),
                    star : $(this).closest('.review-box').find('.star').val(),
                    content : $(this).closest('.review-box').find('textarea[name="content"]').val(),
                    mentorNo : $(this).closest('.review-box').find('input[name="mentorNo"]').val()
                },
                success : function(data){
                    //들어온 data의 String 값이 1이면 true
                    if(data == 1){
                        alert('후기가 작성되었습니다.');
                        location.reload();
                    }else{
                        alert('후기 작성에 실패했습니다.');
                    }
                },
                error : function(){
                    alert('후기 작성에 실패했습니다.');
                }
            })
        })

    </script>

    
    <!-- 카테고리 임시 코드-->
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

        //별 채우기, 별 점 value값 변경
        $(document).ready(function(){
            $(".star-icon").click(function(){
                $(this).addClass("filled-icon");
                $(this).prevAll().addClass("filled-icon");
                $(this).nextAll().removeClass("filled-icon");
                $(this).siblings('.star').val($(this).index() + 1);
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
