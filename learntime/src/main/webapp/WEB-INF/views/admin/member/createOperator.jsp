<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | 관리자 페이지 - 운영자 생성</title>

    <!-- 구글아이콘 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />


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

    .wrapper {
      padding: 40px 50px;
      
    }

    .content-section{
        width: 445px;
        
        background-color: white;
        border: 1px solid rgb(221, 221, 221);

        margin: auto;
    }



    #join-area{
        padding: 50px;
        display: grid;
        grid-template-rows: repeat(8,1fr);
        align-items: center;
        justify-content: center;

    }

    #join-title{
        display: grid;
        grid-template-rows: 2fr 1fr;
        justify-items: center;
        align-items: center;
        margin-bottom: 10px;
    }

    .title{
        font-size: 24px;
        font-weight: 700;
        color: #5ECC80;
        margin-bottom: 10px;
    }

    .text{
        display: flex;
        width: 100%;
        height: 100%;
        color:#535353;
        font-size: 14px;
        margin-top: 20px;
        margin-bottom: 3px;
    }

    input{
        width: 292px;
        height: 20px;
        padding:14px; 
        border-radius:4px;
        border:1px solid #D9D9D9;
    }

    #pwd{
        position: relative;
    }

    #pwd div+input+span{
        
        position: absolute;
        left: 90%;
        top: 48px;
        color: #D9D9D9;

    }

    select{
        width: 320px;
        height: 42px;
        border-radius:4px;
        padding:5px; 
        border:1px solid #D9D9D9;
    }

    #join-area button{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 320px;
        height: 48px;
        border-radius:4px;
        background-color: #5ECC80;
        color: #FFFFFF;
        margin-top: 20px;
    }

    #join-area #before{
        background-color: #FFFFFF;
        color: #5ECC80;
        border: 1px solid #5ECC80;
    }

    
 
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">운영자 생성</div>
      <div class="wrapper">
          
        <section class="content-section">
          
            <form action="" method="POST">
                <div id="join-area">
    
                    <div id="join-title">
                        <div class="title">운영자 생성</div>
                    </div>
    
                    <div id="id">
                        <div class="text">이메일</div>
                        <input type="text" name="id">
                    </div>
                    
    
                    <div id="pwd">
                        <div class="text">비밀번호</div>
                        <input type="password" name="pwd" autocomplete="off">
                        <span class="material-symbols-outlined">visibility</span>
                        <div id="pwdReult"></div>
                    </div>
                    
                    
                    <div id="pwd">
                        <div class="text">비밀번호 확인</div>
                        <input type="password" name="pwd2" autocomplete="off">
                        <span class="material-symbols-outlined">visibility</span>
                        <div id="pwdCheck"></div>
                    </div>
                    
                    
                    <div id="nick">
                        <div class="text">닉네임</div>
                        <input type="text" name="nick">
                        <div id="nickReult"></div>
                    </div>
                    
                    
                    <div id="phone">
                        <div class="text">전화번호</div>
                        <input type="text" name="phone" placeholder="- 제외한 번호만">
                    </div>

                    <div id="admin">
                        <div class="text">관리자 확인</div>
                        <input type="text" name="adminId" placeholder="생성하시는 관리자 아이디를 입력해 주세요.">
                        <div id="adminId"></div>
                    </div>
                    
                    
                    
                    <button>생성하기</button>
                    <button id="before"onclick="location.href='${pageContext.request.contextPath}/admin/member/manage'">이전으로</button>
    
    
                  
                </div>
            </form>
         
        
        </section>
    </div>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>


    <script>
		//비밀번호 보기,숨기기 
		$(document).ready(function(){
			$('#pwd div+input+span').on('click',function(){
				$('input').toggleClass('active');
				if($('input').hasClass('active')){
					$(this).attr('class',"material-symbols-outlined")
					.prev('input').attr('type',"text");
				}else{
					$(this).attr('class',"material-symbols-outlined")
					.prev('input').attr('type','password');
				}
			});
		});
		
	   
	    $("form").on("submit", function (e) {
	    	// 유효성 검사 추가하기
	          
	         });
	</script>
  </body>
</html>
