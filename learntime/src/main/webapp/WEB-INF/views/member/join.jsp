<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | 회원가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
<script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>

<style>
#join-main{
	width: 350px;
	
	margin: auto;
	
}
form{
margin: auto;
}

#join-area{
	width: 250px;
	height: 900px;
	padding: 50px;
	display: grid;
	grid-template-rows: repeat(9,1fr);
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

input[type="text"]:not(.choices__input),input[type="password"]{
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



#join-area #join-btn{
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

.joinAgree{
	display: flex;
	justify-content: center;
	font-size: 12px;
	color: #929292;
	text-align: center;
}
#joinAgree-check{
	width: 12px;
	display: flex;
	justify-content: center;
}



input[id="joinAgree-check"] {
	position: relative;
	top: 9.5px;
	left: 15px;
}
label[for="joinAgree-check"] {
	position: relative;
	top: -10px;
	left: 5px;
}

#joinApi{
	display: flex;
	justify-content: center;
	align-items: center;
	margin:20px;
}
#joinApi div{
	width: 35px;
	height: 35px;
	background-color: #535353;
	margin: 2px;
}

.choices__inner{
	width: 305px;
	display: flex;
	background-color: #FFFFFF;
}

.choices__input{
	background-color: #FFFFFF;
	display: none;
}

.choices__list--multiple .choices__item{
	background-color: #5ecc80;
	border: 1px solid #5ecc80;
		
}

.choices[data-type*=select-multiple] .choices__button{
	border-left: 1px solid #FFFFFF;
}

.choices__list--dropdown{
	width: 320px;
}

.result{
	margin-top: 5px;
	font-size: 12px;
	letter-spacing: 1px;
	line-height: 14px;
	color: var(--deepGray);
	
}


</style>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>

	<div id="join-main">
    	<form action="/app/member/join" method="post" onsubmit="return check();">
			<div id="join-area">

				<div id="join-title">
					<div class="title">회원가입</div>
					<div class="content">모두가 지식을 나눌수 있도록</div>
				</div>

				<div id="id">
					<div class="text">이메일</div>
					<input type="text" name="id">
					<div id="idResult" class="result"></div>
					
				</div>
				
				
				<div id="pwd">
					<div class="text">비밀번호</div>
					<input type="password" name="pwd" autocomplete="off" >
					<span class="material-symbols-outlined">visibility</span>
					<div id="pwdResult" class="result">영문,숫자,특수문자 2가지 이상 포함, 8자 이상 32자 이하, 연속 3자 이상 동일한 숫자,문자 제외</div>
				</div>
				
				
				<div id="pwd">
					<div class="text">비밀번호 확인</div>
					<input type="password" name="pwd2" autocomplete="off" placeholder="입력했던 비밀번호를 다시 입력해주세요">
					<span class="material-symbols-outlined">visibility</span>
					<div id="pwdCheck" class="result"></div>
				</div>
				
				
				<div id="nick">
					<div class="text">닉네임</div>
					<input type="text" name="nick" placeholder="영문,숫자,한글로 2자 이상 8자 이하">
					<div id="nickResult" class="result"></div>
				</div>
				
				
				<div id="phone">
					<div class="text">전화번호</div>
					<input type="text" name="phone" placeholder="- 제외한 숫자만">
					<div id="phoneResult" class="result"></div>
				</div>
				
				
				<div id="stack">
					<div class="text">관심 기술 스택</div>
					<div class="row d-flex justify-content-center">
						<div class="col-md-6"> 		
							<select id="choices-multiple-remove-button" name="techStackNo" multiple>
								<option value="1">HTML</option>
								<option value="2">Jquery</option>
								<option value="3">CSS</option>
								<option value="4">Java</option>
								<option value="5">Javascript</option>
								<option value="6">Angular</option>
								<option value="7">Python</option>
								<option value="8">Hybris</option>
								<option value="9">SQL</option>
								<option value="10">NOSQL</option>
								<option value="11">NodeJS</option>
							</select> 
						
						</div>					
					</div>
						
				</div>

				
				
				<button id="join-btn">회원가입</button>
				
				<div id="joinAgree-area">
					<div class="joinAgree">
					가입 시, 런타임이 제공하는 서비스를 모두 이용하실 수 있습니다.<br>
					통합 계정 및 서비스 이용약관, 개인정보처리방침에 동의합니다.<br>
					</div>
					<input type="checkbox" id="joinAgree-check"> <label for="joinAgree-check" class="joinAgree" >통합회원 할인 혜택 및 유용한 채용 소식을 받아볼래요.</label>
			
				</div>
				
				<div id="line">간편 회원가입</div>
				<div id="joinApi">
					<div id="google"></div>
					<div id="kakao"></div>
				</div>
			
			</div>
		</form>
		
	</div>



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

			var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
			removeItemButton: true,
			maxItemCount:11,
			searchResultLimit:11,
			renderChoiceLimit:11
			}); 

			
			
			$("input[name=nick]").eq(0).blur(function() {

				
				var nick=$("input[name=nick]").eq(0).val();
				var nickCheck=/^[a-zA-Z0-9가-힣]{2,8}$/;
				var blackCheck=/\s/;
				
				$.ajax({    
						type: "get",
						url: "/app/member/nickCheck?nick="+nick,
						success: function(data) {
							if(data==1){
								$("#nickResult").text("이미 사용 중인 닉네임 입니다.");
								$("#nickResult").css("color", "red");
								$("#ㅊ").attr("disabled", true);
								$("input[name=nick]").eq(0).focus();
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


		});
		
	</script>
	
	<script>
			
		function check(){
			const id=$("input[name=id]").eq(1);
			//이메일 형식이 (알파벳,숫자,-,_,.)@(알파벳,숫자,-,_,.).(알파벳,숫자,-,_,.//1자리 이상)
			var idCheck = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
						

			const pwd=$("input[name=pwd]").eq(1);
			const pwd2=$("input[name=pwd2]");
			//영문/숫자/특수문자 2가지 이상 포함, 8자 이상 32자 이하
			var pwdCheck = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?:[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{8,32}$/;
			//같은 문자 3번 이상 X
			var pwd3WordCheck =/(\w)\1\1/;
		

			
			const nick=$("input[name=nick]").eq(0);
			//닉네임 중복확인 결과 div가 ""일때 인설트 됨
			const nickDuplicationCheck=$("#nickResult");

			const phone=$("input[name=phone]");
			//숫자만
			var phoneCheck=/[0-9]{11}/g;

			const techStackNo=$("input[name=techStackNo]");
		

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

			if($("#joinAgree-check").is(':checked')==false){
				Swal.fire({
					icon: 'error',
					title: '가입 동의 체크를 해주세요.',
					// text: '숫자만 입력해 주세요!',
					confirmButtonColor: '#5ECC80'
				});
				
				return false;
			}

			

			
		}



			
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
	
</body>
</html>