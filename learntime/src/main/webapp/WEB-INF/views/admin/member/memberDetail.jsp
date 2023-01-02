<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | 관리자 페이지 - 회원 정보</title>

    <!-- 구글아이콘 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
	<script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>


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
        grid-template-rows: repeat(5,1fr);
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

    select{
        width: 320px;
        height: 42px;
        border-radius:4px;
        padding:5px; 
        border:1px solid #D9D9D9;
    }

    .edit,.delete,#before{
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

    #join-area .delete{
        background-color: #FFFFFF;
        border:1px solid #d90000;
        color: #d90000;
    }

    #join-area #before{
        background-color: #FFFFFF;
        color: #5ECC80;
        border: 1px solid #5ECC80;
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
	
	.choices__list--dropdown{
		width: 320px;
	}


    .choices__list--multiple .choices__item{
	background-color: #5ecc80;
	border: 1px solid #5ecc80;
		
    }

    .choices[data-type*=select-multiple] .choices__button{
        border-left: 1px solid #FFFFFF;
    }

    
 
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">회원 정보</div>
      <div class="wrapper">
          
        <section class="content-section">
          
            <form action="" method="POST">
                <div id="join-area">
    
                    <div id="join-title">
                        <div class="title">회원 정보</div>
                    </div>
    
                    <div id="id">
                        <div class="text">이메일</div>
                        <input type="text" name="id" value="${user.id}">
                    </div>
                    
                    <div id="nick">
                        <div class="text">닉네임</div>
                        <input type="text" name="nick" value="${user.nick}">
                        <div id="nickReult"></div>
                    </div>
                    
                     <div id="pwd">
                        <div class="text">회원 등급(누적 토큰)</div>
                        <input type="text" name="accumToken" value="${user.accumToken}">
                        <div id="pwdReult"></div>
                    </div>
                    
                    
                    <div id="phone">
                        <div class="text">전화번호</div>
                        <input type="text" name="phone" placeholder="- 제외한 번호만" value="${user.phone}">
                    </div>

                    <div id="stack">
					<div class="text">관심 기술 스택</div>
					<div class="row d-flex justify-content-center">
						<div class="col-md-6"> 		
							<select id="choices-multiple-remove-button"multiple>
								<option value="HTML">HTML</option>
								<option value="Jquery">Jquery</option>
								<option value="CSS">CSS</option>
								<option value="Java">Java</option>
								<option value="Javascript">Javascript</option>
								<option value="Angular">Angular</option>
								<option value="Python">Python</option>
								<option value="Hybris">Hybris</option>
								<option value="SQL">SQL</option>
								<option value="NOSQL">NOSQL</option>
								<option value="NodeJS">NodeJS</option>
							</select> 
						
						</div>					
					</div>
						
				</div>
                    
                    <button class="edit">수정하기</button>
                 </form>    
                     <form action="/app/admin/member/manage/delete" method="post">
                      <input type="hidden" name="id" value="${user.id}">
                      <button class="delete">삭제하기</button>
                    </form>
                    <button type="button"id="before"onclick="location.href='${pageContext.request.contextPath}/admin/member/manage'">이전으로</button>
    
                  
                </div>
           
         
        
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
	    
		 $(document).ready(function(){
			    
				var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
				removeItemButton: true,
				maxItemCount:11,
				searchResultLimit:11,
				renderChoiceLimit:11
				}); 
	
	
			});
	</script>
  </body>
</html>
