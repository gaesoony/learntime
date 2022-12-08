<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | SKIN SHOP</title>
<Style>

 /* 구매 모달 시작 */
    .blackBG2 {
        background: rgba(0, 0, 0, 0.5);
        width: 100vw;
        height: 100vh;
        position: fixed;
        visibility: hidden;
        opacity: 0;

        display: flex;
        z-index:10000;
    }
    .show2 {
        visibility: visible;
        opacity: 1;
    }
    .whiteBG2 {
        text-align: center;
        width: 320px;
        margin: auto;
        background: white;
        border-radius: 8px;
        padding: 20px;
        display: grid;
        grid-template-rows: 30px 70px 190px 45px 30px 45px;
    }

 /* 구매 모달 끗 */

#skinshop-area{
    width: 100%;
    height: 100%;

    display: grid;
    grid-template-rows: 300px;
}

#banner-area{
    width: 100%;
    background-color: #EFFECE;
    display: flex;
    justify-content: center;

}

#banner-area img{
    width: 1200px;
}

#list-area{
    width: 1200px;
    display: grid;
    grid-template-columns: 1000px 200px;
    grid-template-rows: 40px auto;
    margin: auto;
    margin-top: 20px;
}

#list-title{
    grid-column: span 2;
    border-bottom: 1px solid #000000;
    
    display: flex;
    align-items: center;
    font-size: 24px;
    
}

#list-title span{
    color: #5ECC80;
    font-weight: 600;
}

#list{
    display: grid;
    grid-template-columns: repeat(4,auto);
}


.skin{
    width: 200px;
    height: 300px;
    margin: 10px 0;
    margin-top: 20px;
    
}

.skin-img{
    width: 200px;
    height: 200px;
    border-radius:4px;
    border:1px solid #D9D9D9;
}

.skin-title{
    margin: 5px 0;
    font-weight: 600;
    font-size: 18px;
}
.buy-btn{
    background: inherit ; 
    border:none; 
    box-shadow:none; 
    border-radius:0; 
    padding:0; 
    overflow:visible; 
    cursor:pointer;

    width: 200px;
    height: 32px;
    border-radius:4px;
    border: 1px solid #5ECC80;
    color:#5ECC80;
}
.skin-content{
    margin-bottom: 20px;
    color:#535353;
    font-size: 16px;
}

.buy-btn:hover{
    background-color: #5ECC80;
    color: #FFFFFF;
}

#search{
    height: 300px;
    margin-top: 20px;
    background-color: #EFFECE;
    position: sticky;
    top:75px;
    z-index: 500;
}

</Style>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<div id="skinshop-area">
    <div id="banner-area">
        <img src="/app/resources/img/skinshop/skinshop_banner.png" alt="배너이미지">
    </div>

    <!-- 구매창 모달 -->
    <div class="blackBG2">
        <div class="whiteBG2">
            <button type="button" id="modal-closed2">
                <span class="material-symbols-outlined">close</span>
            </button>

        </div>
    </div>

 <!-- 스킨 리스트  -->
    <div id="list-area">
        <div id="list-title">
            <span>LEARN TIME</span>에서 인싸가 되는 아이템 😎 
        </div>

        <div id="list">
            <div class="skin">
                <div class="skin-img">이미지 영역</div>
                <div class="skin-title">스킨 제목</div>
                <div class="skin-content">스킨 설명</div>
                <button class="buy-btn"> N토큰으로 구매하기</button>
            </div>

            <div class="skin">
                <div class="skin-img">이미지 영역</div>
                <div class="skin-title">스킨 제목</div>
                <div class="skin-content">스킨 설명</div>
                <button class="buy-btn"> N토큰으로 구매하기</button>
            </div>

            <div class="skin">
                <div class="skin-img">이미지 영역</div>
                <div class="skin-title">스킨 제목</div>
                <div class="skin-content">스킨 설명</div>
                <button class="buy-btn"> N토큰으로 구매하기</button>
            </div>

            <div class="skin">
                <div class="skin-img">이미지 영역</div>
                <div class="skin-title">스킨 제목</div>
                <div class="skin-content">스킨 설명</div>
                <button class="buy-btn"> N토큰으로 구매하기</button>
            </div>

            <div class="skin">
                <div class="skin-img">이미지 영역</div>
                <div class="skin-title">스킨 제목</div>
                <div class="skin-content">스킨 설명</div>
                <button class="buy-btn"> N토큰으로 구매하기</button>
            </div>

            <div class="skin">
                <div class="skin-img">이미지 영역</div>
                <div class="skin-title">스킨 제목</div>
                <div class="skin-content">스킨 설명</div>
                <button class="buy-btn"> N토큰으로 구매하기</button>
            </div>

            <div class="skin">
                <div class="skin-img">이미지 영역</div>
                <div class="skin-title">스킨 제목</div>
                <div class="skin-content">스킨 설명</div>
                <button class="buy-btn"> N토큰으로 구매하기</button>
            </div>

            <div class="skin">
                <div class="skin-img">이미지 영역</div>
                <div class="skin-title">스킨 제목</div>
                <div class="skin-content">스킨 설명</div>
                <button class="buy-btn"> N토큰으로 구매하기</button>
            </div>

            <div class="skin">
                <div class="skin-img">이미지 영역</div>
                <div class="skin-title">스킨 제목</div>
                <div class="skin-content">스킨 설명</div>
                <button class="buy-btn"> N토큰으로 구매하기</button>
            </div>
        </div>

        <div id="search">

        </div>
    
    </div>
</div>


<script>
    //모달 띄우기
    $('.buy-btn').on('click',function(){
    	$('.blackBG2').addClass('show');
    })
    
     //모달 닫기
    $('#modal-closed2').on('click',function(){
    	$('.blackBG2').removeClass('show');
    })
    
    </script>

<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>