<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">

<style>
    #mypage-box{
        width: 1200px;
        height: 100%;
        margin: auto;
        
    }

    #mypage{
        width: 100%;
        display: grid;
        grid-template-columns: 300px 900px;
        
    }

   #home-area{
        padding: 40px;  
        height: auto;
   }

   #badge{
        height: 45px;
        font-size: 18px;
        font-weight: 700;
        color: #5ECC80;
        display: flex;
        align-items: center;
        border-bottom: 1px solid #000000;
    }

   #have-badge{
        display: flex;
        justify-content: space-between;
        width: 100%;
    }

    
.badge{
        width: 140px;
        --height: 300px;
        margin: 10px 0;
        text-align: left;
        padding: 10px;
        
    }

    .badge-img{
        width: 140px;
        height: 140px;
        border-radius:4px;
        border:1px solid #D9D9D9;
        
    }
    
    .badge-img img{
    width:100%;
    }

    .badge-title{
        margin: 10px 0;
        font-weight: 600;
        font-size: 16px;
    }
   
    .badge-content{
        margin-bottom: 20px;
        color:#535353;
        font-size: 12px;
    }

    
   .gray{
    filter:opacity(0.1) drop-shadow(0 0 0 black);
    background-color:gray;
    }


 
   
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>



<div id="mypage-box">
    <div id="mypage">
        <div id="bin">
            <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
        </div>
        <div id="home-area">
            <div id="badge">보유한 뱃지</div>
        
            <div id="have-badge">
           
                 <c:forEach items="${list}" var="list">
                <div class="badge">
                     
                    <div class="badge-img"><img src="${pageContext.request.contextPath}/${list.imgName}"/></div>
                    <div class="badge-title">${list.name}</div>
                    <div class="badge-content">${list.info}</div> 
                
               
                 </div>
                </c:forEach>
               
            </div>

        </div>
    </div>
    
  
</div>
<%@include file="/WEB-INF/views/common/footer2.jsp" %>
<script>
    const category = document.querySelector("#my-cate div:nth-child(8) a");
    category.classList.add("main-color");
</script>

</body>
</html>