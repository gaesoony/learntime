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
        width: 240px;
        height: 470px;
        margin: auto;
        background: white;
        border-radius: 8px;
        padding: 20px;
        display: grid;
        justify-content: center;

        grid-template-rows: 20px;
    }


   #modal-closed2{
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
        border: 1px solid #535353;
        color:#535353;
    }

    

    #pay-info, .have-token, .pay-token{
        color: #5ECC80;
        font-weight: 500;
    }

    .payment{
        display: grid;
        grid-template-columns: 1fr 1fr;
        margin-bottom: 20px;
    }

    .payment div{
        display: flex;
        align-items: center;
        
    }

    .token-cnt{
        justify-content: flex-end;
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
    --height: 300px;
    margin: 10px 0;
    margin-top: 20px;
    text-align: left;
    
}

.skin-img{
    width: 200px;
    height: 200px;
    border-radius:4px;
    border:1px solid #D9D9D9;
}

.skin-title{
    margin: 10px 0;
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
    margin-bottom: 10px;
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


/* 범위 검색 */
#search{
    height: 280px;
    margin-top: 20px;
    background-color: #F4FBF6;
    position: sticky;
    top:75px;
    z-index: 500;
}

.multi-range-slider{
    margin: 10px 0;
}

#search-name, #token{
    padding: 10px;
    margin: 10px 0;
    color: #5ECC80;
    font-weight: 600;
    font-size: 14px;
}
.slider {
  position: relative;
  z-index: 1;
  height: 10px;
  margin: 0 15px;
}
.slider > .track {
  position: absolute;
  z-index: 1;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: #D9D9D9;
}
.slider > .range {
  position: absolute;
  z-index: 2;
  left: 25%;
  right: 25%;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: #5ECC80;
}
.slider > .thumb {
  position: absolute;
  z-index: 3;
  width: 20px;
  height: 20px;
  background-color: #5ECC80;
  border-radius: 50%;
}
.slider > .thumb.left {
  left: 25%;
  transform: translate(-15px, -5px);
}
.slider > .thumb.right {
  right: 25%;
  transform: translate(15px, -5px);
}

input[type="range"] {
  position: absolute;
  /* opacity로 가린 것을 이벤트도 비활성화하기 위해 */
  pointer-events: none;
  -webkit-appearance: none;
  z-index: 2;
  height: 10px;
  width: 100%;
  opacity: 0;
  
}

input[type="range"]::-webkit-slider-thumb {
    /* 겹쳐진 두 thumb를 모두 활성화 */
  pointer-events: all;
  width: 30px;
  height: 30px;
  border-radius: 0;
  border: 0 none;
  background-color: red;
  cursor: pointer;

  /* appearance를 해야 위의 스타일들을 볼 수 있음 */
  -webkit-appearance: none;
}

#token{
    display: grid;
    grid-template-columns: 1fr 1fr;
    
}
#token div{
    display: flex; 
}

.have-token2{
    grid-column: span 2;
    height: 24px;
}
.token-cnt2{
    width: 160px;
    height: 28px;
    padding: 10px;
    border-radius: 8px;
    justify-content: space-between;
    align-items: center;
    background-color: #FFFFFF;
    border: 1px solid #D9D9D9;
}

#search-name, #token,.align-name{
    padding: 10px;
    color: #5ECC80;
    font-weight: 600;
    font-size: 14px;
}

#align-list{
    width: 182px;
    height: 48px;
    padding: 10px;
    margin-left: 10px;
    border-radius: 8px;
    justify-content: space-between;
    align-items: center;
    background-color: #FFFFFF;
    border: 1px solid #D9D9D9;
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
            <div id="pay-info">구매하기</div>
            <div class="skin">
                <div class="skin-img">이미지 영역</div>
                <div class="skin-title">스킨 제목</div>
                <div class="skin-content">스킨 설명</div>

                <div class="payment">
                    <div class="have-token">
                        <span class="material-symbols-outlined">toll</span>
                        보유 토큰
                    </div>
                    <div class="token-cnt">300개</div>
    
                    <div class="pay-token">
                        <span class="material-symbols-outlined">toll</span>
                        결제 토큰
                    </div>
                    <div class="token-cnt">1개</div>
                </div>

                <button class="buy-btn"> N토큰으로 구매하기</button>
                <button type="button" id="modal-closed2">취소하기</button>
            </div>

           

            
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
            <div id="search-name"> 토큰으로 검색</div>

            <div class="multi-range-slider">
                <input type="range" id="input-left" min="0" max="100" value="25" />
                <input type="range" id="input-right" min="0" max="100" value="75" />
                
                <div class="slider">
                  <div class="track"></div>
                  <div class="range"></div>
                  <div class="thumb left"></div>
                  <div class="thumb right"></div>
                </div>
            </div>

            <div id="skin-align">
                <div class="align-name">
                    정렬
                </div>
                <div class="align-list">
                    <select name="align-list" id="align-list" required style="color: #535353">
                        <option value="" disabled selected >선택해주세요</option>
					    <option value="1">최근 등록순</option>
                        <option value="2">높은 토큰순</option>
                        <option value="3">낮은 토큰순</option>
                    </select>
                </div>
            </div>

            <div id="token">
                <div class="have-token2">
                    보유 토큰
                </div>
                <div class="token-cnt2">
                    <span class="material-symbols-outlined">toll</span>
                    300개
                </div>
            </div>
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

    //검은 배경 클릭시 모달 닫기
    $(document).mouseup(function (e){
    //배경이 클릭 될 경우 리턴 0이 됨
	if($('.blackBG2').has(e.target).length === 0){
		$('.blackBG2').removeClass('show');
	}
  });



    const inputLeft = document.getElementById("input-left");
    const inputRight = document.getElementById("input-right");

    const thumbLeft = document.querySelector(".slider > .thumb.left");
    const thumbRight = document.querySelector(".slider > .thumb.right");
    const range = document.querySelector(".slider > .range");

    const setLeftValue = () => {
    const _this = inputLeft;
    const [min, max] = [parseInt(_this.min), parseInt(_this.max)];
    // 교차되지 않게, 1을 빼준 건 완전히 겹치기보다는 어느 정도 간격을 남겨두기 위해.
    _this.value = Math.min(parseInt(_this.value), parseInt(inputRight.value) - 1);
    // input, thumb 같이 움직이도록
    const percent = ((_this.value - min) / (max - min)) * 100;
    thumbLeft.style.left = percent + "%";
    range.style.left = percent + "%";
    };

    const setRightValue = () => {
    const _this = inputRight;
    const [min, max] = [parseInt(_this.min), parseInt(_this.max)];
    // 교차되지 않게, 1을 더해준 건 완전히 겹치기보다는 어느 정도 간격을 남겨두기 위해.
    _this.value = Math.max(parseInt(_this.value), parseInt(inputLeft.value) + 1);
    // input, thumb 같이 움직이도록
    const percent = ((_this.value - min) / (max - min)) * 100;
    thumbRight.style.right = 100 - percent + "%";
    range.style.right = 100 - percent + "%";
    };

    inputLeft.addEventListener("input", setLeftValue);
    inputRight.addEventListener("input", setRightValue);

    
    </script>

<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>