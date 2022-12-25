<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<style>

body{
    position: relative;
}


#mypageSide-area{
    width: 160px;
    height: 600px;
    padding: 70px;
    background-color: #FFFFFF;

}

#my-info{
    display: grid;
    justify-items: center;
    align-items: center;
   
    
}

#profile-img img{
    width: 96px;
}

#profile-nick{
    font-weight: 600;
    font-size: 20px;
    margin: 10px;
}

#profile-follow a,#profile-follow span{
   color: #535353;
    font-size: 12px;
}

#my-cate{
    display: grid;
    grid-template-rows: repeat(10,45px);
    align-items: center;
    margin-top: 20px;
}

#my-cate .cate{
    width: 100%;
    height: 100%;
}

#my-cate div a:hover{
    color: #5ECC80;
}

#mypage-btn{
	display: grid;
    grid-template-columns: 110px 40px;
    justify-content: space-between;
}

#follow-btn,#dm-btn{
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

#dm-btn span{
 display: flex;
 justify-content: center;
}


#follow-btn::before{
    content:"팔로잉 하기"
   }
   
   
#follow-btn:hover{
    border: 1px solid #ff0000;
    background-color: lightpink;
   }

#follow-btn:hover{
    border: 1px solid #ff0000;
    background-color: #ffcfcf;
   }

#follow-btn:hover::before{
    content:"언팔로잉";
    color:#ff0000;
   }


</style>
<div id="mypageSide-area">
    <div id="my-info">
         <div id="profile-img">
                <img src="/app/resources/img/profile_default.png" alt="기본프로필이미지">
         </div>

            <div id="profile-nick">닉네임</div>
            <div id="profile-follow">
                <a href="${pageContext.request.contextPath}/member/mypage/follow">100 팔로우 중</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/member/mypage/following"> 100 팔로잉</a>
            </div>
    </div>
     
	<div id="my-cate">
		    <c:choose>
		    	<c:when test="${userNo eq loginMember.no}">

    			 <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/home?no=${loginMember.getNo()}">홈</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/makegrassList">MAKE GRASS</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/study">STUDY/PROJECT</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/qnaList">LEARNING</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/mentoring">MENTORING</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/community">COMMUNITY</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/skin">보유한 스킨</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/badge">보유한 뱃지</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/dm/list">DM</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/edit?no=${loginMember.getNo()}">계정정보</a></div>
    	</c:when>
    	<c:otherwise>
    	    <div id="mypage-btn">
	    	<button id="follow-btn"></button>
	    	<button id="dm-btn"><span class="material-symbols-outlined">mail</span></button>
	   	 	</div>
    	 		<div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/home?no=${loginMember.getNo()}">홈</a></div>
    	 		<div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/makegrassList">MAKE GRASS</a></div>
    	 		 <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/badge">보유한 뱃지</a></div>
    	</c:otherwise>
    	</c:choose>
    	
    	<script>
            $('#follow-btn').on('click',function(){
                follow(true);
            });

            function follow(check){
                if(check){
                    $.ajax({
                        type:"POST",
                        url:"/member/follow?no=${no}",
                        success:function(result){
                            console.log("result:"+result)
                            if(result === "FollowOk"){
                                $
                            }
                        },
                        error: function(result) {
                            
                        }
                    
                    });
                }
            }
    	
    	</script>	 	
        
    </div>
 
</div>

