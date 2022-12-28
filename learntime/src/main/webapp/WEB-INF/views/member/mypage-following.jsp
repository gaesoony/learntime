<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">

<style>
    #all-area{
        width: 100%;
        height: 100%;
        margin: auto;
    }
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
        border: 1px solid #d9d9d9;
        margin-top: 20px;

        display: grid;
        grid-template-rows: 45px;
   }

   #cate{
        width: 100%;
        height: 45px;
        display: grid;
        grid-template-columns: 1fr 1fr auto;
        

   }

   .main-color2 {
    color: #5ecc80;
    }



   #cate div a{
    display: flex;
    justify-content: center;
    align-items: center;

    width: 100%;
    height: 45px;
    border-bottom: 1px solid #d9d9d9;

    font-weight: 600;
    font-size: 16px;
   }

   .list{
    display: grid;
    grid-template-columns: 1fr 5fr 1fr;
    grid-template-rows: repeat(10, 50px);
    margin-top: 10px;
    align-items: center;
   }

   .f-img{
    width: 30px;
    height: 30px;
    border-radius: 30px;
    background-color: #d9d9d9;
   }
   #fb,#ufb{
	background: inherit ; 
    border:none; 
    box-shadow:none; 
    border-radius:0; 
    padding:0; 
    overflow:visible; 
    cursor:pointer;
	
	width:100%;
	height:40px;
	
    border: 1px solid #5ECC80;
    color: #5ECC80;
    border-radius: 4px;
   
}


.follow-btn::before{
    content:"팔로잉 하기"
   }

.following-btn::before{
    content:"팔로잉 중"
   }

.following-btn:hover{
    border: 1px solid #ff0000;
    background-color: #ffcfcf;
}

.following-btn:hover::before{
    
    content:"언팔로잉";
    color:#ff0000;
   }
 
   
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>

<div id="all-area">
    <div id="mypage-box">
        <div id="mypage">
            <div id="bin">
                <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
            </div>
            <div id="home-area">
                <div id="cate">
                    <div id="cate-follow">
                        <a href="${pageContext.request.contextPath}/member/mypage/follow?no=${userNo.no}">팔로워</a>
                    </div>
        
                    <div id="cate-following">
                        <a href="${pageContext.request.contextPath}/member/mypage/following?no=${userNo.no}">팔로잉</a>
                    </div>
                </div>
    
                <div class="list">
	                <c:forEach var="list" items="${list}" >
						<div class="f-img"></div>
						<div class="f-nick"><a href="${pageContext.request.contextPath}/member/mypage/home?no=${list.no}">${list.nick}</a></div>
                        

                        <c:if test="${userNo.no ne loginMember.no}">
                            <div></div>
                        </c:if>

                        <c:if test="${userNo.no eq loginMember.no}">
                            <button id="ufb"class="following-btn"></button>
                        </c:if>
					</c:forEach>
                 
                    </div>
               
            </div>
        </div>
        
        
    </div>
    
</div>

<%@include file="/WEB-INF/views/common/footer2.jsp" %>


<script>
    const cate = document.querySelector("#cate div:nth-child(2) a");
    cate.classList.add("main-color2");
</script>

</body>
</html>