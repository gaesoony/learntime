<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | 회원가입</title>
<style>
#join-main{
	width: 350px;
	height: 100vh;
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

</style>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>

	<div id="join-main">
    	<form action="" method="POST">
			<div id="join-area">

				<div id="join-title">
					<div class="title">회원가입</div>
					<div class="content">모두가 지식을 나눌수 있도록</div>
				</div>

				<div id="id">
					<div class="text">이메일</div>
					<input type="text" name="id">
				</div>
				

				<div id="pwd">
					<div class="text">비밀번호</div>
					<input type="password" name="pwd">
					<span class="material-symbols-outlined">visibility</span>
					<div id="pwdReult"></div>
				</div>
				
				
				<div id="pwd">
					<div class="text">비밀번호 확인</div>
					<input type="password" name="pwd2">
					<span class="material-symbols-outlined">visibility</span>
					<div id="pwdCheck"></div>
				</div>
				
				
				<div id="nick">
					<div class="text">닉네임</div>
					<input type="text" name="nick">
					<div id="nickReult"></div>
				</div>
				
				
				<div id="name">
					<div class="text">전화번호</div>
					<input type="text" name="phone" placeholder="- 제외한 번호만">
				</div>
				
				
				<div id="stack">
					<div class="text">관심 기술 스택</div>
					<select name="techStackNo" required style="color: #535353">
					<option value="" disabled selected >관심 기술 스택을 선택해 주세요.</option>
					<option value="1">JAVA</option>
					</select>
					<div id="stackResult"></div>
				</div>
				
				<button>회원가입</button>
				
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
		});
		
	   
	    $("form").on("submit", function (e) {
	    	// 유효성 검사 추가하기
	          
	         });
	</script>
	
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>