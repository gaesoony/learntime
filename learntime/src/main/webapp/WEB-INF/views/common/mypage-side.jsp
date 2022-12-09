<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

#mypageSide{
    width: 1200px;
    height: 100vh;
    margin: auto;

}

#mypageSide-area{
    width: 160px;
    height: 700px;
    padding: 70px;
    display: grid;
    grid-template-rows: 160px;
    position: fixed;
    top: 95px;
    bottom: 230px;
    background-color: #FFFFFF;
    --box-shadow:0px 3px 10px rgba(0, 0, 0, 0.1);
    z-index: 300; 
   
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
}

#profile-follow{
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
<div id="mypageSide">
    <div id="mypageSide-area">
        <div id="my-info">
             <div id="profile-img">
                <img src="/app/resources/img/profile_default.png" alt="기본프로필이미지">
             </div>

             <div id="profile-nick">닉네임</div>
             <div id="profile-follow">100 팔로우 중 100 팔로잉</div>
        </div>

        <div id="mypage-btn">
            
        </div>
    
        <div id="my-cate">
             <div class=".cate"><a href="#">홈</a></div>
             <div class=".cate"><a href="#">MAKE GRASS</a></div>
             <div class=".cate"><a href="#">STUDY/PROJECT</a></div>
             <div class=".cate"><a href="#">LEARNING</a></div>
             <div class=".cate"><a href="#">MENTORING</a></div>
             <div class=".cate"><a href="#">COMMUNITY</a></div>
             <div class=".cate"><a href="#">보유한 스킨</a></div>
             <div class=".cate"><a href="#">보유한 뱃지</a></div>
             <div class=".cate"><a href="#">DM</a></div>
             <div class=".cate"><a href="#">계정정보</a></div>
        </div>
     
     </div>
</div>

