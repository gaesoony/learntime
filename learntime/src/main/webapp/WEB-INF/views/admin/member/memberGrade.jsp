<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | 관리자 페이지 - 회원 등급 관리</title>

    <!-- 구글아이콘 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>


  </head>
  <style>
  /* 삭제 모달 시작 */
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
            width: 400px;
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
            display:flex;
            justify-content: flex-end;
        }
        
      .grade-insert-area{
	    display:grid;
	        grid-template-rows: repeat(7,50px);
   		
   		align-items: center;
	    }
	    
	    .grade-insert-area input{
        width: 380px;
        height: 30px;
        border: 1px solid #D9D9D9;
        border-radius: 4px;
        padding:10px;
        text-align:center;
        
    	}
    
	    .list-text{
	    display:flex;
	    font-size:14px;
	     height: 70%;
	     align-items: flex-end;
    	justify-content: center;
    	color:#5ECC80;
    	font-weight: 500;
	    
	    }
	    
	    .grade-img2{
        width: 50px;
        height: 50px;
        border-radius: 50px;
       	border:1px solid #efefef;
        
        margin: auto;
    }
    
    .list-btn2 .plus2{
        color: #FFFFFF;
        background-color: #5ECC80;
        width: 400px;
        height: 50px;
        border-radius: 4px;
    }
    
    .list-btn2 {
    display: flex;
    justify-content: center;
    margin-top:50px;
    
	}
	    


    /* 삭제 모달 끗 */
  
  
  
  
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
      padding: 10px 50px;
    }

    .content-section{
        width: 1265px;
        height: 500px;
        background-color: white;
        border: 1px solid rgb(221, 221, 221);
        margin: 30px auto ;
        display: grid;
        grid-template-columns: 200px 1015px;
        
    }

    .grade-title{
        padding: 40px;
        color: #5ECC80;
        font-size: 16px;
        font-weight: 600;
    }

    form .grade-list,form .grade-list1{
        display: grid;
        grid-template-columns: 1fr 1fr 3fr 1fr;
        grid-auto-rows: 40px;
        margin-top: 40px;
        border-bottom: 1px solid #000000; 
        
    }

    
    .list-title{
        font-size: 16px;
        font-weight: 600;
        display: flex;
        align-items: center;
        justify-content: center;
       
        
    }
    .list-info{
        grid-column: span 4;
        border-bottom: 1px solid #000000;
        color: #535353;
        padding-bottom:10px;
    	justify-content: space-between;
    }

    .list-content{
        display: flex;
        align-items: center;
        justify-content: center;
        
       
    }
    
    .list-btn{
     	display: flex;
    	justify-content: space-between;
    }

    .list-btn button,.list-btn2 button{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 60px;
        height: 30px;
        border-radius: 30px;

    }

    .list-btn .plus{
        color: #FFFFFF;
        background-color: #5ECC80;
    }

    .list-btn .delete{
        color: #D60000;
        border: 1px solid #D60000;
       
    }

    .grade-btn{
        grid-column: span 2;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
    .grade-btn button{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 160px;
        height: 44px;
        border-radius: 4px;

        color:#FFFFFF;
        margin: 10px;
        
    
    }
    .grade-img{
        width: 30px;
        height: 30px;
        border-radius: 30px;
       	border:1px solid #efefef;
        
        margin: auto;
    }
    .grade-btn .save{
        background-color:#5ECC80
    }

    .grade-btn .cancel{
        background-color:#535353;
    }
    
    .list-content span{
    margin:0 10px;
    }
    
     input[type="file"]{
        display: none;
    }
    
     #preview{
    width:100%;
    
    }
    
   
 
  </style>
  <body>
  <!-- 탈퇴 모달 -->
<div class="blackBG2">
    <div class="whiteBG2">
        <button type="button" id="modal-closed2">
            <span class="material-symbols-outlined">close</span>
        </button>
        <form action="${pageContext.request.contextPath}/admin/member/grade/infoEdit" method="post" enctype="multipart/form-data">
        <div class="grade-insert-area">
	            	<div class="list-content grade-img2">
	            	 <label for="file">
                            <img id="preview"  src="${pageContext.request.contextPath}/resources/img/mystudy/image-plus.png"/>
                            <input id="file" type="file" class="hidden" name="imgPath" onchange="readURL(this);"/>
                        </label>                   
                        <input id="file" type="file" name="imgPath">
	            	</div>
	            	  <script>
	                    $("#file").on("change", function(event) {
	
	                        var file = event.target.files[0];
	
	                        var reader = new FileReader(); 
	                        reader.onload = function(e) {
	
	                            $("#preview").attr("src", e.target.result);
	                          
	                        }
	
	                        reader.readAsDataURL(file);
	                    });
	                    
                    </script>
	            	 <div class="list-text">등급 이름</div>
	                <div class="list-content">
	                
	                	<input type="text" name="name">
	                </div>
	                <div class="list-text">등급 조건</div>
	                <div class="list-content">
	                 
	                   <input type="text" name="accumToken" placeholder="토큰 갯수">
	                </div>
	                <div class="list-btn2">
	                   <button class="plus2">추가</button>
	                </div>
	
	
	</div>
        
        
        </form>
	
    
    </div>
</div>
  
  
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">회원 등급 관리</div>
      <div class="wrapper">
          
        <section class="content-section">
          <div class="grade-title">
                등급 조건 관리
          </div>
		<form action="" method="post" enctype="multipart/form-data">
	          <div class="grade-list1">
	            <div class="list-info list-btn">각 등급별 아이콘 이미지와 조건을 수정 및 추가 삭제가 가능합니다 <button name="plus-btn" type="button" class="plus" id="plus-btn">추가</button></div>
	            <div class="list-title ">아이콘</div>
	            <div class="list-title">등급 이름</div>
	            <div class="list-title">등급 조건</div>
	            <div class="list-title"></div>
			
		 		<c:forEach items="${map}" var="map" varStatus="status">		
	            	<input type="hidden" name="no" value="${map.NO}">
	            	<div class="list-content grade-img">
	            	 <label for="file">
                           	  <img id="preview"  src="${pageContext.request.contextPath}${map.IMG_PATH}"/>
                              
                            </label>
                             <input id="file" type="file" name="MemberGradeVoList[${status.index}].imgPath">
                             <input type="hidden" name="MemberGradeVoList[${status.index}].imgName" value="${map.IMG_PATH}">
	            	</div>
	            	<input type="hidden" name="MemberGradeVoList[${status.index}].no" value="${map.NO}">
	                <div class="list-content"><input type="text" name="MemberGradeVoList[${status.index}].name" value="${map.NAME}"></div>
	                <div class="list-content">
	                   <span>토큰 </span><input type="text" name="MemberGradeVoList[${status.index}].accumToken" value="${map.ACCUM_TOKEN}"><span>개</span>
	                </div>
	                <div class="list-btn">
	                   <button type="button" class="delete" id="btnDelete" value="${map.NO}">삭제</button>
	                </div>
	            </c:forEach>
	          </div>
		 
	          <div class="grade-btn">
	            <button class="cancel" type="reset" onclick="location.reload();">취소하기</button>
	            <button class="save" >저장하기</button>
	          </div>
          </form> 
        </section>

        <section class="content-section">
        
            <div class="grade-title">
                토큰 조건 관리
          </div>
		<form action="" method="post">
          <div class="grade-list">
            <div class="list-info">토큰 부여 조건을 변경 가능합니다</div>
            <div class="list-title">토큰</div>
            <div class="list-title">토큰 발급 게시판</div>
            <div class="list-title">토큰 부여 조건</div>
            <div class="list-title"></div>

            <% for(int i=1; i<=5; i++) {%>
                <div class="list-content">1개</div>
                <div class="list-content">게시판이름</div>
                <div class="list-content">
                    조건 내용
                </div>
                <div class="list-btn">
                   <button class="plus">추가</button>
                   <button class="delete">삭제</button>
                </div>
            <%}%>
          </div>

          <div class="grade-btn">
            <button class="cancel">취소하기</button>
            <button class="save">저장하기</button>
          </div>

          
        </form>  
        </section>
    </div>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
	<script>
		//모달 띄우기
		function btn(){
			$('button[name=plus-btn]').on('click',function(){
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
		};
		
		btn();
       
        

        $('button[class=delete]').click(function(){
            var gradeNo=$(this).val();
            $.ajax({
                    type: "post",
                   	url: "${pageContext.request.contextPath}/admin/member/grade/infoDelete",
			        data: {gradeNo : gradeNo}, 
                    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			        success: function(result) {
                        console.log(result);
                        var obj = JSON.parse(result);

                    
                        $('.grade-list1').empty();

                        $('<div class="list-info list-btn">각 등급별 아이콘 이미지와 조건을 수정 및 추가 삭제가 가능합니다 <button name="plus-btn" type="button" class="plus" id="plus-btn">추가</button></div>'
                        +'<div class="list-title ">아이콘</div><div class="list-title">등급 이름</div>'
                        +'<div class="list-title">등급 조건</div><div class="list-title"></div>').appendTo('.grade-list1');

                        for (let i = 0; i < obj.list.length; i++) {
                            $('.grade-list1').append(
                                '<input type="hidden" name="no" value="'+obj.list[i].NO+'">'
                                +'<div class="list-content grade-img">'
                                    +'<label for="file">'
                                        +'<img id="preview"  src="${pageContext.request.contextPath}'+obj.list[i].IMG_PATH+'"/>'
                                    +'</label>'
                                    +'<input id="file" type="file" name="imgPath">'
                                    +'<input type="hidden" name="imgName" value="'+obj.list[i].IMG_IMG_PATH+'">'
                                +'</div>'
                                
                                +'<input type="hidden" name="no" value="'+obj.list[i].NO+'">'
                                +'<div class="list-content"><input type="text" name="name" value="'+obj.list[i].NAME+'"></div>'
                                +'<div class="list-content">'
                                    +'<span>토큰 </span><input type="text" name="accumToken" value="'+obj.list[i].ACCUM_TOKEN+'"><span>개</span>'
                                +'</div>'
                                +'<div class="list-btn">'
                                    +'<button type="button" class="delete" id="btnDelete" value="'+obj.list[i].NO+'">삭제</button>'
                                +'</div>'

                            
                            );
                        };
                        btn();

			        },
			        error: function() {   
			              
			        }


            });
           
        });
		
	</script>

   
  </body>
</html>
