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
        

        display: flex;
        z-index:10000;
    }
    .show2 {
        visibility: visible;
       
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
    grid-template-columns: repeat(5,240px);
    justify-items: center;
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

.skin-img img{
    width: 100%;
}

.skin-title{
    margin: 10px 0;
    font-weight: 600;
    font-size: 16px;
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
    font-size: 13px;
}

.buy-btn:hover{
    background-color: #5ECC80;
    color: #FFFFFF;
}


/* 범위 검색 */
#search{
     display: grid;
    grid-column: span 2;
     grid-template-columns: 9fr 1fr;
    
    
}

    #search1{
        display: grid;
        grid-template-columns: 6fr 1fr;
         margin-top: 20px;
	    background-color: #F4FBF6;
	   
	    grid-column: span 2;
    }
    
    #skin-align{
    margin: auto;
    margin-left:10px;
    }

    .search-box {
      outline: none;
      background-color: rgb(255, 255, 255);
      color: rgb(42, 42, 42);
      width: 98%;
      padding-left:2%;
 
      border: 1px solid rgb(207, 207, 207);
    }

    .fa-magnifying-glass {
      position: absolute;
      top: 16px;
      left: 16px;
      color: gray;
    }

    .select-box {
      width: 90%;
      height: 45px;
      border: 1px solid #5ecc80;
      
      outline: none;
      padding: 0px 5px;
      cursor: pointer;
      color: #5ecc80;

      margin: 0 10px;
    }

    .write-btn {
      width: 100px;
      height: 40px;
      border: none;
      outline: none;
      background-color: #5ecc80;
      color: white;
      cursor: pointer;
    }



#search-name, #token{
    padding: 10px;
    margin: 10px 0;
    color: #5ECC80;
    font-weight: 600;
    font-size: 14px;
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
    height: 23px;
    padding: 10px;
    
    justify-content: space-between;
    align-items: center;
    background-color: #FFFFFF;
    border: 1px solid #5ecc80;
   
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
        <img src="${pageContext.request.contextPath}/resources/img/skinshop/skinshop_banner.png" alt="배너이미지">
    </div>

    <!-- 구매창 모달 -->
    <div class="blackBG2">
        <div class="whiteBG2">
            <div id="pay-info">구매하기</div>
            <div class="skin">
                <div class="skin-img" id="modalSkinImg"></div>
                <div class="skin-title" id="modalSkinTitle"></div>
                <div class="skin-content" id="modalSkinContent"></div>

                <div class="payment">
                    <div class="have-token">
                        <span class="material-symbols-outlined">toll</span>
                        보유 토큰
                    </div>
                    <div class="token-cnt">
	                     <c:if test="${loginMember.holdToken==null}">0</c:if>
	                    ${loginMember.holdToken}개
                    </div>
    
                    <div class="pay-token">
                        <span class="material-symbols-outlined">toll</span>
                        결제 토큰
                    </div>
                    <div class="token-cnt" id="modalTokenCnt"></div>
                </div>
				<form action="${pageContext.request.contextPath}/skinshop/buy" method="post">
				 <button name="completeNo"id="complete" class="buy-btn">구매하기</button>
				 <input type="hidden" name="tokenPrice" id="tokenPrice"/>
				</form>
                <button type="button" id="modal-closed2">취소하기</button>
            </div>

           

            
        </div>
    </div>

 <!-- 스킨 리스트  -->
    <div id="list-area">
        <div id="list-title">
            <span>LEARN TIME</span>에서 인싸가 되는 아이템 😎 
        </div>

	 <div id="search1">

            <div id="skin-align">
               <form action="" method="get">
              <div id="search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input name="keyword" type="text" placeholder="내용을 입력해주세요" class="search-box"/>
                    <select name="category" class="select-box">
                      <option value="name">이름</option>
                      <option value="price">토큰 갯수</option>
                    </select>
                    
               </div>
              </form>
            </div>

            <div id="token">
                <div class="token-cnt2">
                    <span class="material-symbols-outlined">toll</span>
                    <c:if test="${loginMember.holdToken==null}">0</c:if>
                    ${loginMember.holdToken}개
                </div>
            </div>
        </div>
        


        <div id="list">
        
         <c:forEach items="${list}" var="list">
                 
                  <div class="skin">
	                    <div class="skin-img"><img  src="${pageContext.request.contextPath}${list.imgName}"></div>
	                    <div class="skin-title">${list.name}</div>
	                    <div class="skin-content">${list.info}</div>
	                     <button id="skinBuy"class="buy-btn" value="${list.no}" onclick="skinModal(${list.no});"> ${list.price}토큰으로 구매하기</button>
	              </div>

               </c:forEach>
            
        </div>

       
       

        
    
    </div>
</div>


<script>
    //모달 띄우기
    
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
    
    function skinModal(no){
    	 $.ajax({
	      		type: "get",
				url: "${pageContext.request.contextPath}/skinModal",
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				data:{"no":no},
				success: function(data) {	
					 var obj = JSON.parse(data);
					 console.log(obj);
					 $('.blackBG2').addClass('show2');
					 $('#modalSkinImg').empty();
					 $('#modalSkinImg').append(
							'<img src="${pageContext.request.contextPath}'+obj.skinModal.imgName+'">'	 
					 );
					 $('#modalSkinTitle').text();
					 $('#modalSkinTitle').text(obj.skinModal.name);
					 $('#modalSkinContent').text();
					 $('#modalSkinContent').text(obj.skinModal.info);
					 $('#modalTokenCnt').text();
					 $('#modalTokenCnt').text(obj.skinModal.price+'개');
					 
					 $('#complete').val(obj.skinModal.no);
					 $('#tokenPrice').val(obj.skinModal.price);
				},
				error: function() {   

				}
	      });
    };

	

    

    
    </script>

<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>