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



/* 셀렉트 박스 */

.container-list {
  margin-left: 10px;
  display: grid;
  grid-template-columns: 1fr 1fr;
}

.container-title {
  font-weight: 700;
  font-size: 15px;
  margin-bottom: 15px;
}



.container1 {
  margin-bottom: 15px;
}

.select-box {
  display: flex;
  flex-direction: column;
}

.selected:not(.selected-people):after {
  content: "";
  background: url("${pageContext.request.contextPath}/resources/img/study/arrow_down.png");

  background-size: contain;
  background-repeat: no-repeat;

  position: absolute;
  height: 100%;
  width: 32px;
  right: 10px;
  top: 5px;

  transition: all 0.4s;
}



.select-box .options-container {
  background: #ffffff;
  color: #505050;
  max-height: 0;
  width: 100%;
  opacity: 0;
  transition: all 0.4s;
  border-radius: 4px;
  overflow: hidden;
  border: 1px solid #D9D9D9;
  font-weight: 700;
  order: 1;
  position: absolute;
  top: 55px;
  z-index: 10;
  box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px,
    rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
}

.selected {
  background: #ffffff;
  border-radius: 5px;
  margin-bottom: 8px;
  color: #727272;
  font-weight: 700;
  position: relative;
  border: 1px solid #D9D9D9;
  height: 45px;

  order: 0;
}

.options-container > label {
  width: 100%;
}


.box input {
  height: 25px;
  width: 300px;
  border: none;
  outline: #D9D9D9;
  font-size: 15px;
  color: #767676;
  font-weight: 700;
  cursor: pointer;
  padding-bottom: 9px;
}

.select-box .options-container.active {
  max-height: 240px;
  opacity: 1;
  overflow-y: scroll;
}

.select-box .option .radio {
    display: none;
}

.select-box .options-container.active + .selected::after {
  transform: rotateX(180deg);
  top: -6px;
}

.select-box .option,
.selected {
  padding: 12px 17px 12px 17px;
  cursor: pointer;
}

.selected-tech {
  padding: 0px 0px 2px 11px !important;
}



/* 기술스택 여러개 선택하는 부분 */

.selected-tech {
  
  display: flex;
  /* align-items: center; */
  overflow-y: scroll;
}

.tech-btn-list {
  width: 272px;

  display: flex;
  align-items: center;
  flex-wrap: wrap;

  overflow-y: scroll;

  color:#929292;
  font-size: 14px;
  font-weight: 400;
  padding: 9px 5px ;

}

.selected-tech::-webkit-scrollbar {
  display: none;
}

.tech-btn-list::-webkit-scrollbar {
  display: none;
}

.tech-btn-div {
  position: relative;
  margin-bottom: 5px;
}

.tech-btn {
  padding: 5px 17px 7px 9px;
  background-color: rgb(228, 247, 255);
  border: none;
  border-radius: 3px;
  margin-right: 5px;
  font-size: 11px;
  font-weight: 500;
  color: rgb(35, 35, 35);
}

.tech-btn-div i {
  position: absolute;
  right: 12px;
  top: 6px;
  font-size: 5px;
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

                    <div class="select-box relative">
                      <div class="options-container options-container-tech">
                        <c:forEach items="${techStackList}" var="map">
                          <label>
                            <div
                              id="option-${map.NAME}"
                              class="option option-tech"
                              onclick="hiddenTag(event)"
                            >
                              <input
                                id="${map.NAME}"
                                type="checkbox"
                                class="radio"
                                name="techStackNo"
                                value="${map.NO}"
                                onclick="stop(event)"
                              />
                              <label
                                onclick="hiddenTag2(event)"
                                for="${map.NAME}"
                                >${map.NAME}</label
                              >
                            </div>
                          </label>
                        </c:forEach>
                      </div>

                      <div class="selected selected-tech">
                        <div class="tech-btn-list">프로젝트 사용 스택</div>
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

			const idInput= $("input[name=id]").eq(1);
                idInput.blur(function() {
                    const id=$("input[name=id]").eq(1).val();
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
                                $("input[name=id]").eq(1).focus();
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
                            $("#emailCheck").text("이메일 중복 확인 불가");
                                
                        }
                                
                                            
                    });
                  
        
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
								$("#nickResult").attr("disabled", true);
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
	<script defer>

		const selectedTech = document.querySelector(".tech-btn-list");
		const selectedTech2 = document.querySelector(
		".selected-tech:not(.tech-btn-list .tech-btn )"
		);

		const optionsListTech = document.querySelectorAll(".option-tech");
		const optionsListTechLabel = document.querySelectorAll(".option-tech label");

		const optionsContainerTech = document.querySelector(".options-container-tech");

		selectedTech2.addEventListener("click", () => {
		optionsContainerTech.classList.toggle("active");
		});

		

		optionsListTech.forEach((o) => {
		o.addEventListener("click", (event) => {
			if (selectedTech.innerHTML.trim() == "프로젝트 사용 스택") {
			selectedTech.innerHTML = "";
			}

			selectedTech.innerHTML +=
			"<div class='tech-btn-div' onclick='deleteTech(event)'>" +
			"<input onclick='deleteTech2(event)' class='tech-btn' type='button' value='" +
			o.querySelector("label").innerHTML +
			"'>" +
			"<i class='fa-solid fa-xmark' onclick='deleteTech2(event)'></i>" +
			"</div>";
		});
		});

		optionsListTechLabel.forEach((o) => {
		o.addEventListener("click", (event) => {
			event.stopPropagation();
			if (selectedTech.innerHTML.trim() == "프로젝트 사용 스택") {
			selectedTech.innerHTML = "";
			}

			selectedTech.innerHTML +=
			"<div class='tech-btn-div' onclick='deleteTech(event)'>" +
			"<input onclick='deleteTech2(event)' class='tech-btn' type='button' value='" +
			o.innerHTML +
			"'>" +
			"<i class='fa-solid fa-xmark' onclick='deleteTech2(event)'></i>" +
			"</div>";
		});
		});

		//기술스택 삭제1
		function deleteTech(e) {
		e.stopPropagation();
		e.target.remove();
		const value = e.target.querySelector("input").value;

		const option = document.querySelector("#option-" + value);
		option.parentNode.classList.toggle("hidden");
		const selectedTech = document.querySelector(".tech-btn-list");
		if (selectedTech.innerHTML.trim() == "") {
			selectedTech.innerHTML = "프로젝트 사용 스택";
		}
		const input = optionsContainerTech.querySelector("#" + value);
		console.log("1:" + input);
		input.checked = false;
		}

		//기술스택 삭제2
		function deleteTech2(e) {
		e.stopPropagation();
		e.target.parentNode.remove();
		const value = e.target.parentNode.querySelector("input").value;

		const option = document.querySelector("#option-" + value);
		option.parentNode.classList.toggle("hidden");
		const selectedTech = document.querySelector(".tech-btn-list");
		if (selectedTech.innerHTML.trim() == "") {
			selectedTech.innerHTML = "프로젝트 사용 스택";
		}
		const input = optionsContainerTech.querySelector("#" + value);
		input.checked = false;
		console.log("2:" + input);
		}

		function hiddenTag(e) {
		e.target.parentNode.classList.add("hidden");
		}

		function hiddenTag2(e) {
		e.stopPropagation();
		e.target.parentNode.parentNode.classList.add("hidden");
		}

		function stop(e) {
		e.stopPropagation();
		}
	</script>
</body>
</html>