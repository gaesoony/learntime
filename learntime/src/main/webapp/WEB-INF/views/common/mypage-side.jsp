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

#fb,#ufb,#dm-btn{
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
<div id="mypageSide-area">
    <div id="my-info">
    	
         <div id="profile-img">
               <c:if test="${userNo.imgName ==null}">
		    	 <img src="/app/resources/img/profile_default.png" alt="기본프로필이미지">
		    	</c:if>
		    	
		    	 <c:if test="${userNo.imgName!=null}">
		    	 <img src="${pageContext.request.contextPath}${userNo.imgName}" alt="기본프로필이미지">
		    	</c:if>
         </div>

            <div id="profile-nick">${userNo.nick}</div>
            <div id="profile-follow">
                <a id="followCnt" href="${pageContext.request.contextPath}/member/mypage/following?no=${userNo.no}">${followingCnt} 팔로우 중</a>
                <span>|</span>
                <a id="followingCnt" href="${pageContext.request.contextPath}/member/mypage/follow?no=${userNo.no}">${followerCnt} 팔로워</a>
            </div>
    </div>
     
	<div id="my-cate">
		    <c:choose>
		    	<c:when test="${userNo.no eq loginMember.no}">

    			 <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/home?no=${loginMember.getNo()}">홈</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/makegrassList">MAKE GRASS</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/study">STUDY/PROJECT</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/qnaList">LEARNING</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/mentoring">MENTORING</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/community">COMMUNITY</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/skin?no=${loginMember.getNo()}">보유한 스킨</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/badge?no=${loginMember.getNo()}">보유한 뱃지</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/dm/list?no=${loginMember.getNo()}">DM</a></div>
		         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/edit?no=${loginMember.getNo()}">계정정보</a></div>
    	</c:when>
    	<c:otherwise>
    	    <div id="mypage-btn">   
            <c:if test="${followCheck  == 0}">
                <button id="fb"class="follow-btn"></button>
            </c:if>  
            <c:if test="${followCheck != 0}">
                <button id="ufb"class="following-btn"></button>
            </c:if>   
            
	    	<button id="dm-btn"><span class="material-symbols-outlined">mail</span></button>
	   	 	</div>
    	 		<div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/home?no=${userNo.no}">홈</a></div>
    	 		<div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/makegrassList">MAKE GRASS</a></div>
    	 		 <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/badge?no=${userNo.no}">보유한 뱃지</a></div>
    	</c:otherwise>
    	</c:choose>
    	
    	<script>
            $('#fb').on('click',function(){
                follow(true);
            });

            $('#ufb').on('click',function(){
                unfollow(true);
            });


            function follow(check){
                $.ajax({
                        type:"get",
                        url:"${pageContext.request.contextPath}/member/follow?no=${userNo.no}",
                        success:function(result){
                            var obj = JSON.parse(result);
                
                            if(obj.result === "FollowOk"){
                               
                                $('#followCnt').text(obj.followingCnt+" 팔로우 중");
                                $('#followingCnt').text(obj.followerCnt+" 팔로워");

                                location.reload(true);
                               
                            }
                        },
                        error: function(result) {
                            alert("통신실패");
                        }
                    
                    });
            }

            function unfollow(check){
                $.ajax({
                            type:"get",
                            url:"${pageContext.request.contextPath}/member/unfollow?no=${userNo.no}",
                            success:function(result){
                                var obj2 =JSON.parse(result);
                                
                                if(obj2.result === "UnFollowOk"){
                                   
                                    $('#followCnt').text(obj2.followingCnt+" 팔로우 중");
                                    $('#followingCnt').text(obj2.followerCnt+" 팔로워");

                                    location.reload(true);
                                    
                                }
                            },
                            error: function(result) {
                            alert("통신실패");
                        }
                        
                        });
                
            }




            
    	
    	</script>	 	
        
    </div>
 
</div>

