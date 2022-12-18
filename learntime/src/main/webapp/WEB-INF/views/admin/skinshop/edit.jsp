<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
        height:1010px;
        background-color: white;
        border: 1px solid rgb(221, 221, 221);

        margin: auto;
    }



    #join-area{
        padding: 50px;
        display: grid;
        grid-template-rows: repeat(4,1fr);
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
        background: #D9D9D9;
        
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

    #join-area #before{
        background-color: #FFFFFF;
        color: #5ECC80;
        border: 1px solid #5ECC80;
    }

    
 
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">스킨 추가</div>
      <div class="wrapper">
          
        <section class="content-section">
          
            <form action="" method="">
                <div id="join-area">
    
                    <div id="name">
                        <div class="text">스킨 이름</div>
                        <input type="text" name="name">
                    </div>
                    
                    <div id="info">
                        <div class="text">스킨 정보</div>
                        <input type="text" name="info">
                    </div>
                    
                    
                    
                    <div id="">
                        <div class="text">스킨 스타일</div>
                        <input type="text" name="">
                    </div>

                    <div id="">
                        <div class="text">스킨 가격</div>
                        <input type="text" name="">
                    </div>
                    
                    
                    <div id="">
                        <div class="text">스킨 이미지</div>
                        <div class="img-area">
                            <label for="imgPath">
                                <span class="material-symbols-outlined">
                                    add_photo_alternate
                                    </span>
                            </label>
                        </div>
                        
                        <input type="file" name="imgPath" id="imgPath">
                    </div>
                    
                    <button>수정하기</button>
                    <button class="delete">비활성화</button>
                    <button  type="button" id="before"onclick="location.href='${pageContext.request.contextPath}/admin/skinshop/list'">이전으로</button>
    
                </div>
            </form>
         
        
        </section>
    </div>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>


  </body>
</html>
