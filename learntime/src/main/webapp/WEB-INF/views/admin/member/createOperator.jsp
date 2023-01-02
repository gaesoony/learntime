<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | 관리자 페이지 - 운영자 생성</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/variables.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
  
<!-- 구글아이콘 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<!-- 폰트어썸 아이콘 -->
<script src="https://kit.fontawesome.com/939838bb27.js" crossorigin="anonymous"></script>
<!-- 스윗 알람2 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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
    
    .result{
	margin-top: 5px;
	font-size: 12px;
	letter-spacing: 1px;
	line-height: 14px;
	color: var(--deepGray);
	
}

    
 
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">운영자 생성</div>
      <div class="wrapper">
          
        <section class="content-section">
          
            <form action="" method="POST" onsubmit="return check();">
                <div id="join-area">
    
                    <div id="join-title">
                        <div class="title">운영자 생성</div>
                    </div>
    
                    <div id="id">
                        <div class="text">이메일</div>
                        <input type="text" name="id">
                        <div id="idResult" class="result"></div>
                    </div>
                    
    
                    <div id="pwd">
                        <div class="text">비밀번호</div>
                        <input type="password" name="pwd" autocomplete="off">
                        <span class="material-symbols-outlined">visibility</span>
                        <div id="pwdReult" class="result"></div>
                    </div>
                    
                    
                    <div id="pwd">
                        <div class="text">비밀번호 확인</div>
                        <input type="password" name="pwd2" autocomplete="off">
                        <span class="material-symbols-outlined">visibility</span>
                        <div id="pwdCheck" class="result"></div>
                    </div>
                    
                    
                    <div id="nick">
                        <div class="text">닉네임</div>
                        <input type="text" name="nick">
                        <div id="nickResult" class="result"></div>
                    </div>
          
                    
                    <div id="phone">
                        <div class="text">전화번호</div>
                        <input type="text" name="phone" placeholder="- 제외한 번호만">
                    </div>

                    <div id="admin">
                        <div class="text">관리자 확인</div>
                        <input type="text" name="adminId" placeholder="생성하시는 관리자 아이디를 입력해 주세요.">
                        <input type="hidden" name="adminYn" value="Y">
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
		
	   
		 const idInput= $("input[name=id]");
         idInput.blur(function() {
             const id=$("input[name=id]").val();
             console.log(id);
             var idCheck = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
             var blackCheck=/\s/;
             $.ajax({    
                 type: "get",
                 url: "${pageContext.request.contextPath}/member/emailCheck?id="+id,
                 success: function(data) {
                     if(data==1){
                         $("#idResult").text("이미 사용 중인 이메일 입니다.");
                         $("#idResult").css("color", "red");
                         $("#idResult").attr("disabled", true);
                         
                     }else {
                 
                         if(idCheck.test(id)){
                             // 0 : 아이디 길이 / 문자열 검사
                             $("#idResult").text("");
                             $('#idResult').css('color', 'var(--main-color)');
                             $("#idResult").attr("disabled", true);
                 
                         } else if(id == ""){
                             $('#idResult').text('이메일을 입력해주세요');
                             $('#idResult').css('color', 'red');
                             $("#idResult").attr("disabled", true);				
                             
                         } else if(id.search(blackCheck) != -1){
                             $('#idResult').text("공백 없이 작성해 주세요.");
                             $('#idResult').css('color', 'red');
                             $("#idResult").attr("disabled", true);
                         
                         }	else {	
                             $('#idResult').text("이메일 형식이 올바르지 않습니다.");
                             $('#idResult').css('color', 'red');
                             $("#idResult").attr("disabled", true);
                         }
                 
                     }
                         
                 },
                 error: function() {   
                     $("#idResult").text("이메일 중복 확인 불가");
                         
                 }
                         
                                     
             });
           
 
         });
         
     
 
         const nickInput= $("input[name=nick]");
         nickInput.blur(function() {

				
				var nick=$("input[name=nick]").val();
				var nickCheck=/^[a-zA-Z0-9가-힣]{2,8}$/;
				var blackCheck=/\s/;
				
				$.ajax({    
						type: "get",
						url: "/app/member/nickCheck?nick="+nick,
						success: function(data) {
							if(data==1){
								$("#nickResult").text("이미 사용 중인 닉네임 입니다.");
								$("#nickResult").css("color", "red");
								$("#nickResult").attr("disabled", true);
								
							}else {
						
								if(nickCheck.test(nick)){
									// 0 : 아이디 길이 / 문자열 검사
									$("#nickResult").text("");
									$("#nickResult").attr("disabled", false);
						
								} else if(nick == ""){
									$('#nickResult').text('닉네임을 입력해주세요');
									$('#nickResult').css('color', 'red');
									$("#nickResult").attr("disabled", true);				
									
								} else if(nick.search(blackCheck) != -1){
									$('#nickResult').text("공백 없이 작성해 주세요.");
									$('#nickResult').css('color', 'red');
									$("#nickResult").attr("disabled", true);
								
								}	else {	
									$('#nickResult').text("닉네임은 영문,숫자,한글로 2자 이상 8자 이하로 이뤄져야합니다. ");
									$('#nickResult').css('color', 'red');
									$("#nickResult").attr("disabled", true);
								}
						
							}
								
						},
						error: function() {   
							$("#nickResult").text("닉네임 중복 확인 불가");
								
						}
						
									
				});
       

			});

		
		function check(){
			const id=$("input[name=id]");
			//이메일 형식이 (알파벳,숫자,-,_,.)@(알파벳,숫자,-,_,.).(알파벳,숫자,-,_,.//1자리 이상)
			var idCheck = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
						

			const pwd=$("input[name=pwd]");
			const pwd2=$("input[name=pwd2]");
			//영문/숫자/특수문자 2가지 이상 포함, 8자 이상 32자 이하
			var pwdCheck = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?:[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{8,32}$/;
			//같은 문자 3번 이상 X
			var pwd3WordCheck =/(\w)\1\1/;
		

			
			const nick=$("input[name=nick]");
			//닉네임 중복확인 결과 div가 ""일때 인설트 됨
			const nickDuplicationCheck=$("#nickResult");

			const phone=$("input[name=phone]");
			//숫자만
			var phoneCheck=/[0-9]{11}/g;
		

    		if(idCheck.test(id.val())==false){
				Swal.fire({
					icon: 'error',
					title: '이메일을 다시 확인해주세요!',
					text: '이메일 형식이 올바르지 않습니다.',
					confirmButtonColor: '#5ECC80'
				});
				
				id.focus();
				return false;
				
			}

			if($("#idResult").text()!=""){
				Swal.fire({
					icon: 'error',
					title: '이메일을 다시 확인해주세요.',
					text: '이메일 중복 확인이 되지 않았습니다.',
					confirmButtonColor: '#5ECC80'
				});
				id.focus();
				return false;
			}

			if(pwdCheck.test(pwd.val())==false){
				Swal.fire({
					icon: 'error',
					title: '비밀번호를 다시 확인해주세요!',
					text: '영문,숫자,특수문자 2가지 이상 포함, 8자 이상 32자 이하로 이뤄져야합니다.',
					confirmButtonColor: '#5ECC80'
				});

				pwd.focus();
				return false;
				
			}else if(pwd3WordCheck.test(pwd.val())){
				Swal.fire({
					icon: 'error',
					title: '비밀번호를 다시 확인해주세요!',
					text: '같은 문자를 3번 이상 사용하실 수 없습니다.',
					confirmButtonColor: '#5ECC80'
				});
				pwd.focus();
				return false;
	   		}

			if(pwd.val()!==pwd2.val()){
				Swal.fire({
					icon: 'error',
					title: '비밀번호를 다시 확인해주세요!',
					text: '비밀번호가 동일하지 않습니다.',
					confirmButtonColor: '#5ECC80'
				});
				pwd2.focus();
				return false;
			}

			if(nickDuplicationCheck.text()!=""){
				Swal.fire({
					icon: 'error',
					title: '닉네임을 다시 확인해주세요.',
					text: '닉네임 중복 확인이 되지 않았습니다.',
					confirmButtonColor: '#5ECC80'
				});
				nick.focus();
				return false;
			}

			if(!nick.val()){
				Swal.fire({
					icon: 'error',
					title: '닉네임을 다시 확인해주세요.',
					text: '닉네임을 입력해주세요',
					confirmButtonColor: '#5ECC80'
				});
				nick.focus();
				return false;
			}


			if(phoneCheck.test(phone.val())==false){
				Swal.fire({
					icon: 'error',
					title: '전화번호를 다시 확인해주세요!',
					text: '숫자만 입력해 주세요!',
					confirmButtonColor: '#5ECC80'
				});
				phone.focus();
				return false;
			}

			
		}



			
	
	</script>
  </body>
</html>
