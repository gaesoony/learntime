<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
<script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>
	
<style>
    /* 탈퇴 모달 시작 */
        .blackBG2 {
            background: rgba(0, 0, 0, 0.5);
            width: 100vw;
            height: 100vh;
            position: fixed;
            visibility: hidden;

            display: flex;
            z-index:10000;
        }
        .show {
            visibility: visible;
            opacity: 1;
        }
        .whiteBG2 {
            width: 800px;
            height: auto;
            margin: auto;
            background: white;
            border-radius: 8px;
            padding: 20px;
            display: grid;
            grid-template-rows: 30px;
            align-items: center;
            
        }


        #modal-closed2{
            background: inherit ; 
            border:none; 
            box-shadow:none; 
            border-radius:0; 
            padding:0; 
            overflow:visible; 
            cursor:pointer;
        }

        #logo{
            
            margin: auto;
        }

        #logo img{
            width: 120px;
            margin: auto;
            
        }

        #delete-info{
            text-align: center;
            line-height: 150%;
        }

        #delete-notice{
            background-color: #d9d9d96f;
            width: 760px;
           
            padding: 20px;
            line-height: 160%;
            font-size: 14px;
        }

        #delete-notice span{
            font-weight: 600;
        }

        #pwd2{
            position: relative;
        }

        #pwd2 div+input+span{
            
            position: absolute;
            left: 95%;
            top: 43px;
            color: #D9D9D9;

        }

        #pwd2 input{
            width: 770px;
            height: 20px;
            padding:14px; 
            border-radius:4px;
            border:1px solid #D9D9D9;
        }

   

    /* 탈퇴 모달 끗 */


    #mypage-box{
        width: 1200px;
        --height: 100%;
        margin: auto;
        
    }

    #mypage{
        width: 100%;
        --height: 100%;
        display: grid;
        grid-template-columns: 300px 900px;
        
        
    }

    #edit-area{
        width: 100%;
        display: grid;
        grid-template-rows: 730px repeat(3,224px) auto;
        margin: 20px;
        
    }

    #edit-area>form,#edit-area #delete-area{
        border: 1px solid #D9D9D9;
        padding: 40px;
        margin-bottom: 10px;
    }

    .titleText{
        width: 100%;
        height: 24px;
        font-size: 16px;
        font-weight: 400;
        color: #535353;
        margin-bottom: 5px;
        display: flex;
        align-items: center;
    }

    #profile-area{
        display: grid;
        grid-template-rows: 207px 73px 280px 100px;
        justify-items: center;
        align-items: center;
       
    }

    #profile-area>div{
        --width: 100%;
       
    }

    /* .profile-img{
        display: flex;
        justify-content: center;
    }
    .profile-img img{
        width: 207px;
    } */

    .center {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .hidden {
        display: none;
    }

    .relative {
    position: relative;
    }


    .profile-img {
        background-color: rgb(222, 222, 222);
        border-radius: 50%;
        width: 200px;
        height: 200px;
        margin-right: 50px;
        display: grid;
        /* border: 1px solid rgb(196, 196, 196); */
      }

      .profile-img img {
        width: 130px;
        height: 130px;
        display: flex;
        justify-content: center;
        margin: auto;
      }

      .profile-name div {
        margin-bottom: 10px;
        color: rgb(79, 79, 79);
      }

      .profile-name input {
        width: 300px;
        height: 40px;
        padding: 10px;
        color: rgb(79, 79, 79);
        border: 1px solid rgb(174, 174, 174);
        outline: none;
        font-size: 15px;
      }

      

      .file-btn-area {
        position: absolute;
        top: 12px;
        right: 12px;
      }

      .file-btn {
        width: 40px;
        height: 40px;
        border: none;
        border-radius: 50%;
        background-color: rgb(241, 241, 241);
        cursor: pointer;
      }

      .file-btn img {
        width: 22px;
        height: 22px;
      }

      #preview {
        position: absolute;
        width: 200px;
        height: 200px;
        border-radius: 50%;
      }

    /*  */

    #profile-area> div input{
        width: 792px;
        height: 24px;
        border: 1px solid #D9D9D9;
        border-radius: 8px;
        padding: 14px;

    }
    #profile-editor{
        display: grid;
        grid-template-rows: 1fr;
    }
    
    .area-grid{
        display: grid;
        grid-template-rows:20px auto;
        align-items: center;
        justify-items: center;
    }

    .area-grid input  {
        width: 792px;
        height: 24px;
        border: 1px solid #D9D9D9;
        border-radius: 4px;
        padding: 14px;
    }

    .area-grid select{
        width: 820px;
        height: 48px;
        border: 1px solid #D9D9D9;
        border-radius: 8px;
        padding: 14px;
    }
    


    .edit-btn,.edit-btn2{
        display: flex;
        justify-content: center;
        align-items: center;

        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 160px;
        height: 48px;
        border-radius:4px;
        background-color: #5ECC80;
        color: #FFFFFF;

        margin-top: 20px;
        
    }

    #delete-area{
        display: flex;
        justify-content: space-between;
        align-items: center;
        height: 20px;
    }
    
    #delete-btn{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 160px;
        height: 48px;
        border-radius:4px;
        border: 1px solid #535353;
        color: #535353;

    }

    .edit-btn2{
        margin: 20px auto;
    }

    .main-color {
        color: #5ecc80;
    }


  
   
</style>
</head>
<body>

<!-- 탈퇴 모달 -->
<div class="blackBG2">
    <div class="whiteBG2">
        <button type="button" id="modal-closed2">
            <span class="material-symbols-outlined">close</span>
        </button>

        <div id="logo"><a href="${pageContext.request.contextPath}/main" ><img src="${pageContext.request.contextPath}/resources/img/logo_green2.png" alt="런타임로고"></a></div>
    
        <div id="delete-info">
            서비스에 만족하지 못하셨나요? 탈퇴하기 전에 먼저 개선 요청을 해보시는 건 어떨까요?<br>
            그래도 탈퇴하시겠다면 탈퇴 전에 아래 유의사항을 꼭 읽어주세요!<br>
            🙇🏻‍♂️ 감사합니다 🙇🏻‍♀️
        </div>

        <div id="delete-notice">
            <span>탈퇴 안내 사항</span><br>
            1. 계정 탈퇴 시, 런타임에서 탈퇴됩니다.<br>
            2. 탈퇴 시 계정과 관련된 모든 권한이 사라지며 복구할 수 없습니다.<br>
            3. 직접 작성한 콘텐츠(사진, 게시물, 댓글 등)는 자동으로 삭제되지 않으며, 만일 삭제를 원하시면 탈퇴 이전에 삭제가 필요합니다.<br>
            4. 탈퇴 후 동일한 메일로 재가입이 가능하나, 탈퇴한 계정과 연동되지 않습니다.<br>
            5. 탈퇴 후 연동된 소셜 계정 정보도 사라지며 소셜 로그인으로 기존 계정 이용이 불가능합니다.<br>
            6. 현재 비밀번호를 입력하고 탈퇴하기를 누르시면 위 내용에 동의하는 것으로 간주됩니다.
        </div>

        <div id="pwd2">
            <form action="${pageContext.request.contextPath}/member/delete" method="post">
                <div class="titleText">비밀번호</div>
                <input type="password" name="pwd" placeholder="현재 비밀번호 입력 시 탈퇴하기가 진행됩니다." autoComplete="off">
                <span class="material-symbols-outlined">visibility</span>
                <button class="edit-btn2">탈퇴하기</button>
            </form>
            
        </div>
    
    </div>
</div>

<%@include file="/WEB-INF/views/common/header.jsp" %>



<div id="mypage-box">
    <div id="mypage">
        <div id="bin">
            <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
        </div>
        <div id="edit-area">
            <form action="${pageContext.request.contextPath}/member/mypage/edit/profile" method="post" enctype="multipart/form-data">
            <div id="profile-area">
             
		    	
                <div class="profile-img">
                    <div class="profile-img center relative">
                       <c:if test="${userNo.imgName eq null}">
				    	 <img src="/app/resources/img/profile_default.png" alt="기본프로필이미지">
				    	  <img id="preview" src="/app/resources/img/profile_default.png"/>
				    	</c:if>
				    	
				    	<c:if test="${userNo.imgName ne null}">
				    	  <img src="${pageContext.request.contextPath}${userNo.imgName}" alt=""/>
                        	<img id="preview" src="${pageContext.request.contextPath}${userNo.imgName}"/>
				    	</c:if>
                      
                        <div class="file-btn-area">
                            <label for="file" class="file-btn center">
                                    <img src="${pageContext.request.contextPath}/resources/img/mystudy/image-plus.png"alt=""/>
                                </label>
                            <input id="file" type="file" class="hidden" name="imgPath" value="${userNo.imgName}" onchange="readURL(this);"/>
            
                            <script>
                                function readURL(input) {
                                        if (input.files && input.files[0]) {
                                            var reader = new FileReader();
                                            reader.onload = function (e) {
                                            document.getElementById("preview").src =
                                                e.target.result;
                                            };
                                            reader.readAsDataURL(input.files[0]);
                                        } else {
                                            document.getElementById("preview").src = "";
                                        }
                                    }
                            </script>
                        </div>
                    </div>
                </div>
                <div id="nick-area">
                    <div class="titleText">닉네임</div>
                    <input type="text" name="nick" value="${userNo.nick}">
                    <div id="nickReult"></div>
                </div>
                        
                <div id="profile-editor">
                    <div class="titleText">자기소개</div>
                    <textarea class="click2edit" name="intro">${userNo.intro}</textarea>
                    
                </div>
        
                <button class="edit-btn">저장하기</button>
                
            </div>
            </form>

            <form action="${pageContext.request.contextPath}/member/mypage/edit/email" method="post" onsubmit="return emailCheck();">
                <div id="email-area" class="area-grid">
                    <div class="titleText">이메일</div>
                    <input type="text" name="id" value="${userNo.id}">
                    <div id="emailCheck"></div>
                    <button class="edit-btn">저장하기</button>
                </div>
            </form>

            <script>
               
                const idInput= $("input[name=id]").eq(1);
                idInput.blur(function() {
                    const id=$("input[name=id]").eq(1).val();
                    console.log(id);
                    var idCheck = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
                    
                    $.ajax({    
                        type: "get",
                        url: "${pageContext.request.contextPath}/member/emailCheck?id="+id,
                        success: function(data) {
                            if(data==1){
                                $("#emailCheck").text("이미 사용 중인 이메일 입니다.");
                                $("#emailCheck").css("color", "red");
                                $("#emailCheck").attr("disabled", true);
                                $("input[name=id]").eq(1).focus();
                            }else {
                        
                                if(idCheck.test(id)){
                                    // 0 : 아이디 길이 / 문자열 검사
                                    $("#emailCheck").text("");
                                    $('#emailCheck').css('color', 'var(--main-color)');
                                    $("#emailCheck").attr("disabled", true);
                        
                                } else if(id == ""){
                                    $('#emailCheck').text('이메일을 입력해주세요');
                                    $('#emailCheck').css('color', 'red');
                                    $("#emailCheck").attr("disabled", true);				
                                    
                                } else if(id.search(blackCheck) != -1){
                                    $('#emailCheck').text("공백 없이 작성해 주세요.");
                                    $('#emailCheck').css('color', 'red');
                                    $("#emailCheck").attr("disabled", true);
                                
                                }	else {	
                                    $('#emailCheck').text("이메일 형식이 올바르지 않습니다.");
                                    $('#emailCheck').css('color', 'red');
                                    $("#emailCheck").attr("disabled", true);
                                }
                        
                            }
                                
                        },
                        error: function() {   
                            $("#emailCheck").text("이메일 중복 확인 불가");
                                
                        }
                                
                                            
                    });
                  
        
                });
        
                
            
               
                
            </script>

            <form action="${pageContext.request.contextPath}/member/mypage/edit/pwd" method="post">
                <div id="pwd-area" class="area-grid">
                    <div class="titleText">비밀번호</div>
                    <div>비밀번호를 새롭게 발급받아보세요!</div>
                    <button class="edit-btn">발급받기</button>
               </div>
            </form>
            
            <form action="${pageContext.request.contextPath}/member/mypage/edit/phone" method="post">
                 <div id="phone-area" class="area-grid">
                     <div class="titleText">휴대폰 번호</div>
                     <input type="text" name="phone" placeholder="- 제외한 번호만" value="${userNo.phone}">
                     <button class="edit-btn">저장하기</button>
                 </div>

            </form>
           
           
            <div id="delete-area">
                 <div class="titleText">회원 탈퇴</div>
                 <button id="delete-btn">탈퇴하기</button>
            </div>
        </div>
    </div>
    
  
</div>
<%@include file="/WEB-INF/views/common/footer2.jsp" %>


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- 서머노트 로딩-->
<script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>

<script>

    //비밀번호 보기,숨기기 
    $(document).ready(function(){
        $('#pwd2 div+input+span').on('click',function(){
            $('#pwd2 div+input').toggleClass('active');
            if($('#pwd2 div+input').hasClass('active')){
                $(this).attr('class',"material-symbols-outlined")
                .prev('#pwd2 div+input').attr('type',"text");
            }else{
                $(this).attr('class',"material-symbols-outlined")
                .prev('#pwd2 div+input').attr('type',"password");
            }
        });
    });
		

    $('.click2edit').summernote({
        toolbar: [
			    // [groupName, [list of button]]
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    ['color', ['forecolor','color']],
			    ['table', ['table']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']],
			   
			  ],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],

            width:820,
            height: 150,                 // 에디터 높이
            minHeight: 150,             // 최소 높이
            maxHeight: 150,             // 최대 높이
            focus: false,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",					// 한글 설정
            placeholder: '자기소개를 작성해보세요'	//placeholder 설정
    
    });

    $(document).ready(function(){

        var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
            removeItemButton: true,
            maxItemCount:11,
            searchResultLimit:11,
            renderChoiceLimit:11
        }); 


    });


    //모달 띄우기
    $('#delete-btn').on('click',function(){
        $('.blackBG2').addClass('show');
    })
    
    //모달 닫기
    $('#modal-closed2').on('click',function(){
        $('.blackBG2').removeClass('show');
    })

   //검은 배경 클릭시 모달 닫기
  $(document).mouseup(function (e){
    //배경이 클릭 될 경우 리턴 0이 됨
	if($('.blackBG2').has(e.target).length === 0){
		$('.blackBG2').removeClass('show');
	}
  });
</script>


<script>
    const category = document.querySelector("#my-cate div:nth-child(10) a");
    category.classList.add("main-color");
</script>

<script>
			
    function emailCheck(){
        if($("#emailCheck").text()!=""){

            Swal.fire({
					icon: 'error',
					title: '이메일를 다시 확인해주세요.',
					text: '이메일 중복 확인이 되지 않았습니다.',
					confirmButtonColor: '#5ECC80'
				});
                $("input[name=id]").eq(1).focus();

            return false
        }

    }   
</script>


</body>
</html>