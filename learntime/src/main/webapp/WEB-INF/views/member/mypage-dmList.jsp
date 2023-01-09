<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>
<style>
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
        margin: 30px;
   }


   .dm{
        width: 100%;
        height: 70px;
        display: grid;
        grid-template-columns: 0.5fr 1.5fr 3fr 2fr 50px;
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

    .send-img img{
        width:100%;
        height:100%;
        object-fit:cover;
        border-radius: 100px;
    }


    .send-nick{
        font-weight: 400;
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



<%@include file="/WEB-INF/views/common/header.jsp" %>



<div id="mypage-box">
    <div id="mypage">
        <div id="bin">
            <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
        </div>
        <div id="home-area">
            
 			<c:forEach items="${chatlist}" var="chatlist">
 			
 			 <div class="dm">
                <div class="send-img"><img src="${pageContext.request.contextPath}${chatlist.imgPath}"></div>
                <div class="send-nick">${chatlist.nick}</div>
                <div class="send-msg" value="${chatlist.sendMno}">${chatlist.content}</div>
                <div class="send-time">${chatlist.enrollDate}</div>

                <div class="dm-delete">
                    <span class="material-symbols-outlined">
                        delete
                    </span>
                </div>
          	</div>

              <script>
                    //모달 띄우기
                    $('#dm-btn').on('click',function(){
                        $('.blackBG2').addClass('show2');
                        let sendNo=${chatlist.sendMno};
                        let receNo=${chatlist.receMno};
                        let message=$('.message').val();

                        
                        statChat(sendNo,receNo);
                        chatHistory(sendNo,receNo);
                        
                        
                    });


                    $('.send-msg').on('click',function(){
                        $('.blackBG2').addClass('show2');
                        let sendNo=${chatlist.sendMno};
                        let receNo=${chatlist.receMno};
                        chatHistory(sendNo,receNo);
                    });
            
                    
          
                </script>
 			
 			
 			</c:forEach>
           
        </div>

        </div>

          
      </div>

      
    </div>
    
  
</div>
<%@include file="/WEB-INF/views/common/footer2.jsp" %>



<script>
    const category = document.querySelector("#my-cate div:nth-child(9) a");
    category.classList.add("main-color");
</script>

</body>
</html>