<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    font-size: 14px;
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

    <div id="mypage-btn">
        
    </div>

    <div id="my-cate">
         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/home">홈</a></div>
         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/makegrass">MAKE GRASS</a></div>
         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/study">STUDY/PROJECT</a></div>
         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/qna">LEARNING</a></div>
         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mentoring">MENTORING</a></div>
         <div class=".cate"><a href="${pageContext.request.contextPath}/member/community">COMMUNITY</a></div>
         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/skin">보유한 스킨</a></div>
         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/badge">보유한 뱃지</a></div>
         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/dm/list">DM</a></div>
         <div class=".cate"><a href="${pageContext.request.contextPath}/member/mypage/edit">계정정보</a></div>
    </div>
 
</div>

