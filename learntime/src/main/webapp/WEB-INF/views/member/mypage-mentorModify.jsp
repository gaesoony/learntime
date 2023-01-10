<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | MY PAGE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"/>
    <link rel="stylesheet" href="/app/resources/css/mentoring/mentorRegist.css">
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
                <div id="mentoring-category-box">
                  <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category1" >
                  <label for="mentoring-category1">신청한 멘토링</label>

                  <c:if test="${sessionScope.mentorInfo == null}">
                      <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category2" >
                      <label for="mentoring-category2">멘토 지원하기</label>
                  </c:if>

                  <c:if test="${sessionScope.mentorInfo != null}">
                      <input class="lg-category" type="radio" name="mentoring-category" id="mentoring-category3" checked>
                      <label for="mentoring-category3">나의 멘토링 관리</label>
                  </c:if>
                </div>

                <form action="/app/member/mypage/mentor/modify" method="post" onsubmit="return false;">
                <div id="basic-info-box">
                    <div id="basic-info-title" class="title">
                        <span>멘토 정보</span>
                        <!-- <div id="save-btn">저장</div> -->
                    </div>
                    <div id="basic-info" class="info-box">
                        <div id="email-title" class="sub-title">
                            <span>이름(실명)</span>
                            <span class="sub-title-plus">*</span>
                        </div>
                        <input type="text" id="name-input" name="name" placeholder="실명을 입력해주세요">
                        <div id="email-title" class="sub-title">
                            <span>연락받을 이메일</span>
                            <span class="sub-title-plus">*</span>
                        </div>
                        <input type="text" id="email-input" name="email" placeholder="멘토링에 사용하실 이메일을 입력해주세요">
                        <div id="phone-title" class="sub-title">
                            <span>연락처</span>
                            <span class="sub-title-plus">*</span>
                        </div>
                        <input type="text" id="phone-input" name="phoneNo" placeholder="01000000000">
                        <div id="link-title" class="sub-title">
                            <span>링크</span>
                            <span class="sub-title-plus">*</span>
                        </div>
                        <input type="text" id="link-input" name="link" placeholder="멘토님을 표현할 수 있는 깃허브 주소나 블로그 주소를 입력해주세요">
                        <div id="account-title" class="sub-title">
                          <span>계좌번호</span>
                          <span class="sub-title-plus">*</span>
                        </div>
                          <div id="account-box">
                            <select name="accountBank">
                              <option value="" disabled selected>은행을 선택해주세요</option> 
                              <option value="1" >기업은행</option>
                              <option value="2" >국민은행</option>
                              <option value="3" >외환은행</option>
                              <option value="4" >수협</option>
                              <option value="5" >우리은행</option>
                              <option value="6" >신한은행</option>
                              <option value="7" >씨티뱅크</option>
                              <option value="8" >부산은행</option>
                              <option value="9" >새마을금고</option>
                              <option value="10">산업은행</option>                 
                              <option value="11">농협</option>                  
                              <option value="12">신협</option>                  
                              <option value="13">우체국</option>                  
                            </select>
                            <input type="text" name="accountNo" id="accountNo-input" placeholder="정산 받을 계좌번호를 입력해주세요">
                         </div>

                        <div id="intro-title" class="sub-title">
                            <span>나의 소개글</span>
                            <span class="sub-title-plus">*</span>
                        </div>
                        <textarea id="intro-input" name="intro" cols="30" rows="10" placeholder="멘토님을 상세하게 소개해주세요"></textarea>
                    </div>
                </div>
                <div id="btn-box">
                    <div id="cancel-btn">취소하기</div>
                    <input type="hidden" name="writer" value="${loginMember.no}">
                    <!-- 자동 submit 방지 input-->
                    <input type="submit" value="저장하기 ">
                </div>
                </form>
              </div>

              <script>
                var check1 = true;
                var check2 = true;
                var check3 = true;
                var check4 = true;
                var check5 = true;
                var check6 = true;
                var check7 = true;

                // 이름 입력
                $("#name-input").blur(function(){
                  var name = $("#name-input").val();
                  var regExp = /^[가-힣]{2,4}$/;
                  if(!regExp.test(name)){
                    $("#name-input").css("border", "1px solid red");
                  }else{
                    $("#name-input").css("border", "1px solid #58c079");
                    check1 = true;
                  }
                });

                // 이메일 입력
                $("#email-input").blur(function(){
                  var email = $("#email-input").val();
                  var regExp = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$/;
                  if(!regExp.test(email)){
                    $("#email-input").css("border", "1px solid red");
                  }else{
                    $("#email-input").css("border", "1px solid #58c079");
                    check2 = true;
                  }
                });

                // 폰번호 입력
                $("#phone-input").blur(function(){
                  var phone = $("#phone-input").val();
                  var regExp = /^[0-9]{11}$/;
                  if(!regExp.test(phone)){
                    $("#phone-input").css("border", "1px solid red");
                  }else{
                    $("#phone-input").css("border", "1px solid #58c079");
                    check3 = true;
                  }
                });

                // 링크 입력
                $("#link-input").blur(function(){
                  var link = $("#link-input").val();
                  if(link != ""){
                    check4 = true;
                  }
                });

                // 소개글 입력
                $("#intro-input").blur(function(){
                  var intro = $("#intro-input").val();
                  if(intro == ""){
                    $("#intro-input").css("border", "1px solid red");
                  }else{
                    $("#intro-input").css("border", "1px solid #58c079");
                    check5 = true;
                  }
                });
                
                // 계좌번호 입력
                $("#account-box input").blur(function(){
                  var account = $("#account-box input").val();
                  var regExp = /^[0-9]{10,15}$/;
                  if(!regExp.test(account)){
                    $("#account-box input").css("border", "1px solid red");
                  }else{
                    $("#account-box input").css("border", "1px solid #58c079");
                    check6 = true;
                  }
                });
                
                // 조건 확인 후 submit true

                $("input[type=\"submit\"]").click(function(){
                  if(check1 && check2 && check3 && check5 && check6){
                    //#form에 있는 submit을 실행
                    $('form').attr('onsubmit', 'return true');
                    $("form").submit();
                  }else{
                    alert("입력 조건을 확인해주세요");
                    return false;
                  }
                });

              </script>

              <script>
                window.onload = function(){
                  //기본 정보 채우기
                  $('#name-input').val('${mentorInfo.name}');
                  $('#email-input').val('${mentorInfo.email}');
                  $('#phone-input').val('${mentorInfo.phoneNo}');
                  $('#intro-input').val('${mentorInfo.intro}');
                  $('#link-input').val('${mentorInfo.link}');

                  //은행 채우기
                  $("#account-box select option[value='${mentorInfo.accountBank}']").attr('selected', 'selected');
                  $('#accountNo-input').val('${mentorInfo.accountNo}');
                }
              </script>

            </div>
        </div>
    </div>
    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

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
