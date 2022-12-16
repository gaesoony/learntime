<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>
<style>
/* 채팅 모달 시작 */
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
            width: 400px;
            height: 600px;
            margin: auto;
            background: white;
            border-radius: 8px;
            padding: 20px;
            display: grid;
            grid-template-rows: 30px;
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


    /* 채팅  모달 끗 */


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
   }


   .dm{
        width: 100%;
        height: 70px;
        display: grid;
        grid-template-columns: 0.5fr 1.5fr 3fr 1fr 50px 50px;
        border-bottom: 1px solid #d9d9d9;

        align-items: center;
        justify-items: center;
    }

    
    .send-img{
        width: 30px;
        height: 30px;
        border-radius: 15px;
        background-color: #d9d9d9;
    }

    .send-nick{
        font-weight: 600;
    }

    .send-msg,.send-time,.material-symbols-outlined{
        color: #535353;
    }

    .main-color {
        color: #5ecc80;
    }


 
   
</style>
</head>
<body>

<!-- 디엠 모달 -->
<div class="blackBG2">
    <div class="whiteBG2">
        <button type="button" id="modal-closed2">
            <span class="material-symbols-outlined">close</span>
        </button>
    
    </div>
</div>

<%@include file="/WEB-INF/views/common/header.jsp" %>



<div id="mypage-box">
    <div id="mypage">
        <div id="bin">
            <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
        </div>
        <div id="home-area">
            

            <div class="dm">
                <div class="send-img"></div>
                <div class="send-nick">닉네임</div>
                <div class="send-msg">팀 프로젝트 같이 해요~</div>
                <div class="send-time">1분전</div>
                <div class="alarm-no">
                    <span class="material-symbols-outlined">
                        notifications_off
                    </span>
                </div>
                <div class="dm-delete">
                    <span class="material-symbols-outlined">
                        delete
                    </span>
                </div>
          </div>

          <div class="dm">
            <div class="send-img"></div>
            <div class="send-nick">닉네임</div>
            <div class="send-msg">팀 프로젝트 같이 해요~</div>
            <div class="send-time">1분전</div>
            <div class="alarm-no">
                <span class="material-symbols-outlined">
                    notifications_off
                </span>
            </div>
            <div class="dm-delete">
                <span class="material-symbols-outlined">
                    delete
                </span>
            </div>
         </div>
        </div>

        </div>

          
      </div>

      
    </div>
    
  
</div>
<%@include file="/WEB-INF/views/common/footer2.jsp" %>
<script>
    //모달 띄우기
    $('.send-msg').on('click',function(){
     $('.blackBG2').addClass('show');
 })
 
     //모달 닫기
     $('#modal-closed2').on('click',function(){
         $('.blackBG2').removeClass('show');
     })
</script>


<script>
    const category = document.querySelector("#my-cate div:nth-child(9) a");
    category.classList.add("main-color");
</script>

</body>
</html>