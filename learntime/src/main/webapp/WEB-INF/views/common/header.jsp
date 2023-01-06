<%@page import="com.learntime.app.member.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
%>

<% String
alertMsg =(String)session.getAttribute("alertMsg");
session.removeAttribute("alertMsg"); %>


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
      padding: 10px;
      
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

      #login-btn,#modal-closed,.inputbox, .modal-login-btn,#alarm-btn{
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
      max-height: 400px;
      --border: 1px solid #D9D9D9;
      background-color: #FFFFFF;
      position:absolute;
      right: 0;
      top: 75px;
      overflow: scroll; 
      
    
     
      
    }
    
    #alarm-area::-webkit-scrollbar {
    display: none; /* 크롬, 사파리, 오페라, 엣지 */
	}
    
    .oneAlarm-area{
      display: grid;
      grid-template-columns: 30px 340px 30px;
      height:30px;
    }

    #alarm-cate{
      font-size: 10px;
      font-weight: 700;
      color:var(--main-color);
    }

    /* 헤더 CSS 끗 */
   

    .swal2-container.swal2-top, .swal2-container.swal2-center, .swal2-container.swal2-bottom {
    
    z-index: 10000;
    }

</style>

    <!-- 로그인 모달 -->
	  <div class="blackBG">
      <div id="modal-whiteBG">
            <button type="button" id="modal-closed">
                <span class="material-symbols-outlined">close</span>
            </button>

            <div id="logo"><a href="${pageContext.request.contextPath}/main" ><img src="${pageContext.request.contextPath}/resources/img/logo_green2.png" alt="런타임로고"></a></div>
            
            <form action="${pageContext.request.contextPath}/member/login" method="POST" onsubmit="return check2();">
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
      <c:if test="${loginMember eq null}">
      <div id="join"><a href="${pageContext.request.contextPath}/member/join">JOIN</a></div>
      <div id="login"><button id="login-btn">LOGIN</button></div>
      </c:if>
       <c:if test="${loginMember ne null}">
        <div id="alarm"><span class="material-symbols-outlined">notifications</span>
          <div id="alarm-area" class="hidden">

          </div>
        </div>
        
        <div id="mypage"><a href="${pageContext.request.contextPath}/member/mypage/home?no=${loginMember.getNo()}"><span class="material-symbols-outlined">account_circle</span></a></div>
       
        <div id="mypage"><a href="${pageContext.request.contextPath}/member/logout"><span class="material-symbols-outlined">logout</span></a></div>
      </c:if>
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




     //알람창 띄우기
     $('#alarm').on('click',function(){

            
      if($('#alarm-area').hasClass('hidden')){
        $('#alarm-area').removeClass('hidden');
        $('#alarm-area').addClass('show');
        
        $.ajax({
        	type: "get",
			url: "${pageContext.request.contextPath}/alarm",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			success: function(data) {
				 console.log(data);
                 var obj = JSON.parse(data);
                 
                
                 
                 for (let i = 0; i < obj.listMember.length; i++) {
                	 $('#alarm-area').empty();

        		     let oneAlarmArea = $('<div>').prop({className: 'oneAlarm-area'});
        		     $(oneAlarmArea).append(
        		    		  '<div id="alarm-cate">'+obj.listMember[i].alarmTypeNo+'</div>'
        	      	           +'<div id="alarm-content">'+obj.listMember[i].receMno+'님이 '+obj.listMember[i].massage+'</div>'       	 
        		     );
        		     
        		     let deleteBtn=$('<button id="alarm-btn" value="'+obj.listMember[i].no+'">'
        		     +'<span class="material-symbols-outlined">close</span></button>');
        		   
        		     $(oneAlarmArea).append(deleteBtn);

        		     $('#alarm-area').append(oneAlarmArea);
        		     
        		     
        		     $(deleteBtn).on('click',function(){
        		    	 alarmDelete(obj.listMember[i].no, oneAlarmArea);
        		    	
        		     });

                 };
				
			},
			error: function() {   
				$('#alarm-area').append("님 오류남 ");
					
			}
        });
        
      }else{
        $('#alarm-area').removeClass('show');
        $('#alarm-area').addClass('hidden');
      };
      
      
	});
  
  
    //알람삭제
    
    function alarmDelete(no,oneAlarmArea){
    	  $.ajax({
    	      		type: "get",
    				url: "${pageContext.request.contextPath}/alarmDelete",
    				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
    				data:{"no":no},
    				success: function(data) {	
    					oneAlarmArea.remove();
    				},
    				error: function() {   
	
    				}
    	      });

    };
  
  
function check2(){
			const id=$("input[name=id]").eq(0);
		
			const pwd=$("input[name=pwd]").eq(0);
		
		

    		if(!id.val()){
          Swal.fire({
            icon: 'error',
            title: '이메일을 다시 확인해주세요!',
            text: '이메일을 입력하지 않았습니다!',
            confirmButtonColor: '#5ECC80',
            
          });
          
          id.focus();
          return false;
          
        }

        if(!pwd.val()){
          Swal.fire({
            icon: 'error',
            title: '비밀번호를 다시 확인해주세요!',
            text: '비밀번호를 입력하지 않았습니다!',
            confirmButtonColor: '#5ECC80'
          });
        
          pwd.focus();
          return false;
          
        }

        
			
		};
		
		

		//소켓 생성
		const webSocket = new WebSocket("ws://127.0.0.1:8888/app/alarm/server");
		webSocket.onopen = function(){
			
		};
		
		
		
		//수신
		webSocket.onmessage = function(event){		//인자 : 메세지 이벤트
			
			console.log(event.data);
		
			/*  알람번호+"#"+alarmType+"#"+ curLoginMemberNo(session).getNick() +"#"+alarmMsg*/
			
			let msg=event.data;
			
			let msgArr=msg.split("#");

		     let oneAlarmArea = $('<div>').prop({className: 'oneAlarm-area'});
		     
		     $(oneAlarmArea).append(
		    		  '<div id="alarm-cate">'+msgArr[1]+'</div>'
	      	           +'<div id="alarm-content">'+msgArr[2]+'님이 '+msgArr[3]+'</div>'       	 
		     );
		     
		     let deleteBtn=$('<button id="alarm-btn" value="'+msgArr[0]+'">'
		     +'<span class="material-symbols-outlined">close</span></button>');
		   
		     $(oneAlarmArea).append(deleteBtn);

		     $('#alarm-area').append(oneAlarmArea);
		     
		     
		     $(deleteBtn).on('click',function(){
		    	 alarmDelete(msgArr[0], oneAlarmArea);
		    	
		     });
			
			
		
		};
		
		//소켓 닫기
		//webSocket.close();

		





  
  </script>
  
  <script>
  <%if(alertMsg != null) {%>
    Swal.fire('<%= alertMsg%>')
  <%}%>

</script>
