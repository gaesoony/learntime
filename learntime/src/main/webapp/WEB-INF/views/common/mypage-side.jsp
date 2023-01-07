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
    font-weight: 400;
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


/* 채팅 모달 시작 */
.blackBG2 {
    background: rgba(0, 0, 0, 0.5);
    width: 100%;
    height: 100%;
    position: fixed;
    top:0;
    left:0;
    display: none;
    z-index:10000;
    visibility: hidden;
}

.show2 {
    visibility: visible;
    padding: 10px;
    display: flex;
    
}



.whiteBG2 {
    width: 400px;
    height: 600px;
    margin: auto;
    background: white;
    border-radius: 8px;
    padding: 20px;
    display: grid;
    grid-template-rows: 30px 30px 500px;
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
#userInfo{
    display: grid;
    grid-template-columns: 30px 370px;
    align-items: center;
    
}

#chat-send{
    display: flex;
    
}

#chat-area{
    width: 100%;
    height: 100%;
    display: grid;

    overflow:scroll;
    
    
}


#chat-area .bubble{
    display: flex;
    min-height: 10px;
    width: auto;
    height: auto;
    max-width: 300px;
    border-radius: 30px;
    align-items: center;
    padding: 10px;
    margin-top: 10px;

}
#you{
    background-color: #d9d9d9; 
    
}

#my{
    background-color: #5ECC80;
   
    color: #FFFFFF;

    
}

    /* 채팅  모달 끗 */



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
         
         		<c:if test="${mySkin.size() eq 0}">
		            <div id="profile-nick">${userNo.nick}
		             <img src="${pageContext.request.contextPath}${userNo.gradeImgPath}">
		            </div>
           		</c:if>
           		
	         <c:if test="${mySkin.size() ne 0}">
	        	<c:forEach items="${mySkin}" var="mySkin">		
		            <div id="profile-nick" class="${mySkin.className}">${userNo.nick}
		             <img src="${pageContext.request.contextPath}${userNo.gradeImgPath}">
	            	</div>
	            	
	           	</c:forEach>
	           </c:if>
           
           
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
                                <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/makegrassList?no=${loginMember.getNo()}">MAKE GRASS</a></div>
                                <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/study?details=apply&pno=1&mno=${loginMember.getNo()}">STUDY/PROJECT</a></div>
                                <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/qnaList?no=${loginMember.getNo()}">LEARNING</a></div>
                                <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/mentoring?no=${loginMember.getNo()}">MENTORING</a></div>
                                <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/community?no=${loginMember.getNo()}">COMMUNITY</a></div>
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
                                    <button id="dm-btn" value="${userNo.no}"><span class="material-symbols-outlined">mail</span></button>
                                    <input id="receNo" type="hidden" value="${loginMember.no}">
                                
                                </div>
                                <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/home?no=${userNo.no}">홈</a></div>
                                <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/makegrassList">MAKE GRASS</a></div>
                                <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/badge?no=${userNo.no}">보유한 뱃지</a></div>

                                <!-- 디엠 모달 -->
                                <div class="blackBG2">
                                    <div class="whiteBG2">
                                        <button type="button" id="modal-closed2">
                                            <span class="material-symbols-outlined">close</span>
                                        </button>
                                        
                                        <div id="userInfo">
                                            <div><img src="${pageContext.request.contextPath}${userNo.gradeImgPath}"></div>
                                            <div>${userNo.nick}<img src="${pageContext.request.contextPath}${userNo.gradeImgPath}"></div> 
                                        </div>

                                        <div id="chat-area">
                                            <div id="you" class="bubble">너가 보냇어</div>
                                            <div id="my" class="bubble">내가 보냇어</div>
                                        </div>

                                        <div id="chat-send">
                                            <input type="text" name="message">
                                            <button>전송</button>
                                        </div>
                                        
                                    
                                </div>
                                
        
                            </c:otherwise>
                        </c:choose>
    </div>             
</div>
    <script>
    	
        //모달 띄우기
        $('#dm-btn').on('click',function(){
            $('.blackBG2').addClass('show2');

            let sendNo=$('#dm-btn').val();
            let receNo=$('#receNo').val();
            // $.ajax({
            //     type:"post",
            //         url:"${pageContext.request.contextPath}/chatRoomMake",
            //         data:{"sendNo":sendNo,
            //             "receNo":receNo
            //         },
            //         success:function(result){
            //             var obj = JSON.parse(result);
            
            //             if(obj.result === "FollowOk"){
                            
            //                 $('#followCnt').text(obj.followingCnt+" 팔로우 중");
            //                 $('#followingCnt').text(obj.followerCnt+" 팔로워");
            //                 location.reload(true);
                            
            //                 const msg = obj.alarmNo+"#팔로우#"+${userNo.no}+"#"+${loginMember.no}+"#팔로우 했어요";
            //                 webSocket.send(msg);
                            
            //             }
            //         },
            //         error: function(result) {
            //             alert("통신실패");
            //         };
            // });
     
        });
     
        //모달 닫기
        $('#modal-closed2').on('click',function(){
            $('.blackBG2').removeClass('show2');
        });
         
        //검은 배경 클릭시 모달 닫기
     	$(document).mouseup(function (e){
            //배경이 클릭 될 경우 리턴 0이 됨
            if($('.blackBG2').has(e.target).length === 0){
                $('.blackBG2').removeClass('show2');
            }
        });
    	
    	
    	
    	
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
                            
                            const msg = obj.alarmNo+"#팔로우#"+${userNo.no}+"#"+${loginMember.no}+"#팔로우 했어요";
                            webSocket.send(msg);
                            
                        }
                    },
                    error: function(result) {
                        alert("통신실패");
                    }
                
                });
        };

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
        
    
 


