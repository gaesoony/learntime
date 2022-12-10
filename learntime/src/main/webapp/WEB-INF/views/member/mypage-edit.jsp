<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">

<style>
    /* 탈퇴 모달 시작 */
        .blackBG2 {
            background: rgba(0, 0, 0, 0.5);
            width: 100vw;
            height: 100vh;
            position: fixed;
            visibility: hidden;
            opacity: 0;

            display: flex;
            z-index:10000;
        }
        .show2 {
            visibility: visible;
            opacity: 1;
        }
        .whiteBG2 {
            width: 800px;
            height: 560px;
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
            height: 160px;
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
        height: 100%;
        margin: auto;
        
    }

    #mypage{
        width: 100%;
        height: 100%;
        display: grid;
        grid-template-columns: 300px 900px;
        
        
    }

    #edit-area{
        width: 100%;
        display: grid;
        grid-template-rows: 730px repeat(4,224px) 96px;
        margin-top: 20px;
        
    }

    #edit-area>div{
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
        width: 100%;
       
    }

    .profile-img{
        display: flex;
        justify-content: center;
    }
    .profile-img img{
        width: 207px;
    }

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
        grid-template-rows:20px 48px;
        align-items: center;
        justify-items: center;
    }

    .area-grid input  {
        width: 792px;
        height: 24px;
        border: 1px solid #D9D9D9;
        border-radius: 8px;
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

  
   
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>

 <!-- 탈퇴 모달 -->
 <div class="blackBG2">
    <div class="whiteBG2">
        <button type="button" id="modal-closed2">
            <span class="material-symbols-outlined">close</span>
        </button>

        <div id="logo"><a href="/app/main" ><img src="/app/resources/img/logo_green2.png" alt="런타임로고"></a></div>
    
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
            <div class="titleText">비밀번호</div>
            <input type="password" name="pwd" placeholder="현재 비밀번호 입력 시 탈퇴하기가 진행됩니다.">
            <span class="material-symbols-outlined">visibility</span>
            <button class="edit-btn2">탈퇴하기</button>
        </div>
    
    </div>
</div>


<div id="mypage-box">
    <div id="mypage">
        <div id="bin"></div>
        <div id="edit-area">
           <div id="profile-area">
                <div class="profile-img">
                    <img src="/app/resources/img/profile_default.png" alt="기본프로필이미지">
                </div>
                <div id="nick-area">
                    <div class="titleText">닉네임</div>
                    <input type="text" name="nick">
                    <div id="nickReult"></div>
                </div>
               
                <div id="profile-editor">
                    <div class="titleText">자기소개</div>
                    <div class="click2edit"></div>
                    
                </div>

                <button class="edit-btn">저장하기</button>
                
           </div>
           <div id="email-area" class="area-grid">
                <div class="titleText">이메일</div>
                <input type="text" name="email">
                <button class="edit-btn">저장하기</button>
           </div>
           <div id="pwd-area" class="area-grid">
                <div class="titleText">비밀번호</div>
                <div>비밀번호를 새롭게 발급받아보세요!</div>
                <button class="edit-btn">발급받기</button>
           </div>
           <div id="phone-area" class="area-grid">
                <div class="titleText">휴대폰 번호</div>
                <input type="text" name="phone" placeholder="- 제외한 번호만">
                <button class="edit-btn">저장하기</button>
           </div>
           <div id="stack-area" class="area-grid">
                <div class="titleText">관심 기술 스택</div>
                <select name="techStackNo" required style="color: #535353">
					<option value="" disabled selected >관심 기술 스택을 선택해 주세요.</option>
					<option value="1">JAVA</option>
					</select>
				<div id="stackResult"></div>
                <button class="edit-btn">저장하기</button>
           </div>
           <div id="delete-area">
                <div class="titleText">회원 탈퇴</div>
                <button id="delete-btn">탈퇴하기</button>
           </div>
        </div>
    </div>
    
</div>

<%@include file="/WEB-INF/views/common/mypage-side.jsp" %>
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

            
            height: 150,                 // 에디터 높이
            minHeight: 150,             // 최소 높이
            maxHeight: 150,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",					// 한글 설정
            placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
    
    });


    //모달 띄우기
    $('#delete-btn').on('click',function(){
        $('.blackBG2').addClass('show');
    })
    
    //모달 닫기
    $('#modal-closed2').on('click',function(){
        $('.blackBG2').removeClass('show');
    })

       
		

</script>
</body>
</html>