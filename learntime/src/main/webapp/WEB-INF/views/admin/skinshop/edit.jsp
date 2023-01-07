<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | 관리자 페이지 - 스킨 추가</title>

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

    label[for="imgPath"] span{
        color: #FFFFFF;
        font-size: 100px;
        cursor: pointer;
    }

     .img-area{
        width: 320px;
        height: 320px;
        border: 1px solid #D9D9D9;
        border-radius:7px;

        
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        
    }

    input[type="file"]{
        display: none;
    }



    #join-area .delete{
        background-color: #FFFFFF;
        border:1px solid #d90000;
        color: #d90000;
    }

    #join-area .before{
        background-color: #FFFFFF;
        color: #5ECC80;
        border: 1px solid #5ECC80;
    }

    #preview{
    width:100%;
    
    }
 
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">스킨 추가</div>
      <div class="wrapper">
          
        <section class="content-section">
          
            
                <div id="join-area">
    			  <form action="${pageContext.request.contextPath}/admin/skinshop/edit" method="post"  enctype="multipart/form-data">
                    <div id="name">
                        <div class="text">스킨 이름</div>
                        <input type="text" name="name" value="${vo.name}">
                        <input type="hidden" name="no" value="${vo.no}">
                    </div>
                    
                    <div id="info">
                        <div class="text">스킨 정보</div>
                        <input type="text" name="info" value="${vo.info}">
                    </div>
                    
                    
                    
                     <div id="">
                        <div class="text">스킨 스타일 이름</div>
                        <input type="text" name="className" value="${vo.className}">
                    </div>
                    
                     <div id="">
                        <div class="text">스킨 스타일 속성</div>
                        <input type="text" name="classStyle" value="${vo.classStyle}">
                    </div>

                    <div id="">
                        <div class="text">스킨 가격</div>
                        <input type="text" name="price" value="${vo.price}">
                    </div>
                    
                    
                     <div id="">
                        <div class="text">스킨 이미지</div>
                        <div class="img-area">
                            
                            <label for="file">
                                <img id="preview"  src="${pageContext.request.contextPath}${vo.imgName}" />
                            </label>
                             <input id="file" type="file" name="imgPath">
                             <input type="hidden" name="imgName" value="${vo.imgName}">
                        </div>
                         <script>
		                    $("#file").on("change", function(event) {
		
		                        var file = event.target.files[0];
		
		                        var reader = new FileReader(); 
		                        reader.onload = function(e) {
		                        	$("#preview").attr("src","");
		                            $("#preview").attr("src", e.target.result);
		                      
		                        }
		
		                        reader.readAsDataURL(file);
		                    });
		                    
                    	</script>
                        
                    </div>
                     <button>수정하기</button>
                   </form> 
                   
                    
                     <c:if test="${vo.deleteYn eq 'N'}">
                 		<form action="${pageContext.request.contextPath}/admin/skinshop/delete" method="post">
	                    <button class="delete">비활성화</button>
	                    <input type="hidden" name="no" value="${vo.no}">
	                    </form>
	             	</c:if>
	             	
	             	 <c:if test="${vo.deleteYn eq 'Y'}">
                 		<form action="${pageContext.request.contextPath}/admin/skinshop/able" method="post">
	                    <button class="before">활성화</button>
	                    <input type="hidden" name="no" value="${vo.no}">
	                    </form>
	             	</c:if>
                    
                    <button  type="button" class="before"onclick="location.href='${pageContext.request.contextPath}/admin/skinshop/list'">이전으로</button>
    
                </div>
            
         
        
        </section>
    </div>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>


  </body>
</html>
