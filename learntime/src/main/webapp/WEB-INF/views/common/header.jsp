<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<link rel="stylesheet" href="/app/resources/css/reset.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- 구글아이콘 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />


 <style>
    /* 모달 시작 */
	  .blackBG {
        background: rgba(0, 0, 0, 0.5);
        width: 100vw;
        height: 100vh;
        position: fixed;
        visibility: hidden;
        opacity: 0;

        display: flex;
        z-index:10000;
      }
      .show {
        visibility: visible;
        opacity: 1;
      }
      .whiteBG {
        text-align: center;
        width: 320px;
        margin: auto;
        background: white;
        border-radius: 8px;
        padding: 20px;
        display: grid;
        grid-template-rows: 30px 70px 190px 45px 30px 45px;
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
        width: 292px;
        height: 20px;
        padding:14px; 
        border-radius:4px;
        border:1px solid #D9D9D9;
      }

      .modal-login-btn{
        width: 320px;
        height: 48px;
        border-radius:4px;
        background-color: #5ECC80;
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
        font-family: 'Noto Sans KR', sans-serif;
        font-weight: 300;
        --border: 1px solid red;
        margin: auto;
        
    }

    #header{
        width: 1200px;
        height: 75px;
        display: grid;
        grid-template-columns: 140px 140px repeat(8,1.2fr) 50px 50px;
        
    }
    #empty{
        grid-column: span 3;
    }

    #header div{
        width: 100%;
        height: 100%;
        margin: auto;
        display: flex;
        justify-content: center;
    }

    #header div a:hover,#header div #login-btn:hover{
        color: #5ECC80;
        
    }

    #logo img{
        width: 120px;
        margin: auto;
        
    }
    
    #login-btn{
      font-size:16px;
    } 
    /* 헤더 CSS 끗 */



    </style>

    <!-- 로그인 모달 -->
	  <div class="blackBG">
      <div class="whiteBG">
            <button type="button" id="modal-closed">
                <span class="material-symbols-outlined">close</span>
            </button>

            <div id="logo"><a href="#" ><img src="/app/resources/img/logo_green2.png" alt="런타임로고"></a></div>
            
            <form action="" method="POST">
                <div>
                    <input class="inputbox" type="text" name="memberId" placeholder="이메일">
                </div>
                <br>
                <div>
                    <input class="inputbox" type="password" name="memberPwd" autocomplete="off" placeholder="비밀번호">
                </div>
                <br>
                
                <button type="submit" class="modal-login-btn" >로그인</button>
            </form>

            <div id="account_find">
                <a href="/app/member/findId">아이디(이메일) 찾기</a>
                <span>|</span>
                <a href="/app/member/findPwd">비밀번호 찾기</a>
                <span>|</span>
                <a href="/app/member/join">회원가입</a>
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
            <div id="logo"><a href="/app/main"><img src="/app/resources/img/logo_green2.png" alt="런타임로고"></a></div>
            <div id="study-project"><a href="/app/study/list">STUDY / PROJECT</a></div>
            <div id="mentoring"><a href="#">MENTORING</a></div>
            <div id="learning"><a href="#">LEARNING</a></div>
            <div id="make-grass"><a href="#">MAKE GRASS</a></div>
            <div id="skinshop"><a href="/app/skinshop">SKIN SHOP</a></div>
            <div id="community"><a href="#">COMMUNITY</a></div>
            <div id="empty"></div>
            <div id="join"><a href="/app/member/join">JOIN</a></div>
            <div id="login">	
            <button id="login-btn">LOGIN</button>
            </div>
        </div>
    </div>
    
    
    
    
    <script>
    //모달 띄우기
    $('#login-btn').on('click',function(){
    	$('.blackBG').addClass('show');
    })
    
     //모달 닫기
    $('#modal-closed').on('click',function(){
    	$('.blackBG').removeClass('show');
    })
    
   
    $("form").on("submit", function (e) {
    	// 유효성 검사 추가하기
          
         });

    
    </script>
