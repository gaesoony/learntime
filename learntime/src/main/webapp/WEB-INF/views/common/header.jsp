<%@page import="com.learntime.app.member.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/variables.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- 구글아이콘 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<!-- 폰트어썸 아이콘 -->
<script src="https://kit.fontawesome.com/939838bb27.js" crossorigin="anonymous"></script>
<!-- 스윗 알람2 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" /> 

<style>
   
 


    /* 모달 시작 */
	  .blackBG {
        background: rgba(0, 0, 0, 0.5);
        width: 100vw;
        height: 100vh;
        position: fixed;
        visibility: hidden;
        --opacity: 0;

        display: flex;
        z-index:10000;
      }

      .hidden{
      visibility: hidden;
    }
    .show {
      visibility: visible;
      
    }
     
      #modal-whiteBG {
        text-align: center;
        width: 320px; 
        margin: auto;
        background: white;
        border-radius: 8px;
        padding: 20px;
        display: grid;
        grid-template-rows: 30px 70px 190px 45px 30px 45px;
        z-index:10001;
      }

      #login-btn,#modal-closed,.inputbox, .modal-login-btn{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;
      }


      .material-symbols-outlined {
        display: flex;
        justify-content: flex-end;
        font-variation-settings:
        'FILL' 0,
        'wght' 200,
        'GRAD' 0,
        'opsz' 48
      }

      .inputbox{
        width: 290px;
        height: 20px;
        padding:14px; 
        border-radius:4px;
        border:1px solid #D9D9D9;
      }

      .modal-login-btn{
        width: 320px;
        height: 48px;
        border-radius:4px;
        background-color: var(--main-color);
        color: #FFFFFF;
      }

      #line {
        display: flex;
        flex-basis: 100%;
        align-items: center;
        color: rgba(0, 0, 0, 0.35);
        font-size: 12px;
        margin: 8px 0px;
      }
      #line::before,
      #line::after {
        content: "";
        flex-grow: 1;
        background: rgba(0, 0, 0, 0.35);
        height: 1px;
        font-size: 0px;
        line-height: 0px;
        margin: 0px 16px;
      }


      #account_find{
        display: flex;
        justify-content: center;
        align-items: center;
      }

      #account_find *{
        margin: 5px;
        font-size: 12px;
        color: #535353;
      }


      #loginApi{
        display: flex;
        justify-content: center;
        align-items: center;
      }
      #loginApi div{
        width: 35px;
        height: 35px;
        background-color: #535353;
        margin: 2px;
      }

 	/* 모달 끗 */
 
 
    /* 헤더 CSS 시작 */
    #header-area{
        width: 100%;
        background-color: #FFFFFF;
        position:sticky;
        top:0px;
        z-index:9999;
        box-shadow:0px 3px 10px rgba(0, 0, 0, 0.1);
    }
    #header-area *{
        --border: 1px solid red;
        margin: auto;
    }

    #header{
        width: 1200px;
        height: 75px;
        display: grid;
        grid-template-columns: 140px 170px repeat(5,120px) 190px 50px 50px 50px;
        
    }
    #empty{
        --grid-column: span 3;
    }

    #header div:not(#alarm-area,#alarm-area div){
        width: 100%;
        height: 100%;
        margin: auto;
        display: flex;
        justify-content: center;
    }

    #header div a{
      font-weight: 300;
    }

    #header div a:hover,#header div #login-btn:hover{
        color: var(--main-color);
        
    }

    #logo img{
        width: 120px;
        margin: auto;
        
    }
    
    #login-btn{
     
      font-weight: 300;
      font-size:16px;
    } 

    #alarm{
      position: relative;
    }

    #alarm #alarm-area{
      width: 400px;
      height: 600px;
      border: 1px solid #D9D9D9;
      background-color: #FFFFFF;
      position:absolute;
      right: 0;
      top: 75px;
      padding: 10px;
    
      display: grid;
      grid-template-columns: 30px 370px;
      grid-template-rows: repeat(20, 30px);
    }

    #alarm-cate{
      font-size: 10px;
      font-weight: 700;
      color:var(--main-color);
    }

    /* 헤더 CSS 끗 */
   

</style>

    <!-- 로그인 모달 -->
	  <div class="blackBG">
      <div id="modal-whiteBG">
            <button type="button" id="modal-closed">
                <span class="material-symbols-outlined">close</span>
            </button>

            <div id="logo"><a href="${pageContext.request.contextPath}/main" ><img src="${pageContext.request.contextPath}/resources/img/logo_green2.png" alt="런타임로고"></a></div>
            
            <form action="${pageContext.request.contextPath}/member/login" method="POST">
                <div>
                    <input class="inputbox" type="text" name="id" placeholder="이메일">
                </div>
                <br>
                <div>
                    <input class="inputbox" type="password" name="pwd" autocomplete="off" placeholder="비밀번호">
                </div>
                <br>
                
                <button type="submit" class="modal-login-btn" >로그인</button>
            </form>
            
            <div id="account_find">
                <a href="${pageContext.request.contextPath}/member/findId">아이디(이메일) 찾기</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/member/findPwd">비밀번호 찾기</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/member/join">회원가입</a>
            </div>
            <div id="line">간편 로그인</div>
            <div id="loginApi">
                <div id="google"></div>
                <div id="kakao"></div>
            </div>
     
	    </div>
	  </div>

<!-- 헤더 -->
<div id="header-area">
  <div id="header">
      <div id="logo"><a href="${pageContext.request.contextPath}/main"><img src="${pageContext.request.contextPath}/resources/img/logo_green2.png" alt="런타임로고"></a></div>
      <div id="study-project"><a href="${pageContext.request.contextPath}/study/list">STUDY / PROJECT</a></div>
      <div id="mentoring"><a href="${pageContext.request.contextPath}/mentor/list">MENTORING</a></div>
      <div id="learning"><a href="${pageContext.request.contextPath}/qna/list">LEARNING</a></div>
      <div id="make-grass"><a href="${pageContext.request.contextPath}/makegrass/list">MAKE GRASS</a></div>
      <div id="skinshop"><a href="${pageContext.request.contextPath}/skinshop">SKIN SHOP</a></div>
      <div id="community"><a href="${pageContext.request.contextPath}/community/board/list">COMMUNITY</a></div>
      <div id="empty"></div>
      <%if(loginMember==null){%>
      <div id="join"><a href="${pageContext.request.contextPath}/member/join">JOIN</a></div>
      <div id="login"><button id="login-btn">LOGIN</button></div>
      <%}else{%>
        <div id="alarm"><span class="material-symbols-outlined">notifications</span>
          <div id="alarm-area" class="hidden">
            <div id="alarm-cate">[공지]</div>
            <div id="alarm-content">알람내용입니다</div>
          </div>
        </div>
        
        <div id="mypage"><a href="${pageContext.request.contextPath}/member/mypage/home?no=${loginMember.getNo()}"><span class="material-symbols-outlined">account_circle</span></a></div>
       
        <div id="mypage"><a href="${pageContext.request.contextPath}/member/logout"><span class="material-symbols-outlined">logout</span></a></div>
      <%}%>
  </div>
</div>
   
    
    
  <script>

  //모달 띄우기
  $('#login-btn').on('click',function(){
    $('.blackBG').addClass('show');
  })
  
  // X 버튼으로 모달 닫기
  $('#modal-closed').on('click',function(){
    $('.blackBG').removeClass('show');
  })

   //검은 배경 클릭시 모달 닫기
  $(document).mouseup(function (e){
    //배경이 클릭 될 경우 리턴 0이 됨
	if($('.blackBG').has(e.target).length === 0){
		$('.blackBG').removeClass('show');
	}
  });


     //알람창 띄우기
     $('#alarm').on('click',function(){

            
      if($('#alarm-area').hasClass('hidden')){
        $('#alarm-area').removeClass('hidden');
        $('#alarm-area').addClass('show');
      }else{
        $('#alarm-area').removeClass('show');
        $('#alarm-area').addClass('hidden');
      }





});
  
  
  $("form").on("submit", function (e) {
    // 유효성 검사 추가하기
        
  });

  
  </script>
