<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | 회원가입</title>
<style>

    /* 인증 영역 시작*/
    #certification-area{
        width: 100%;
        height: 100%;
        font-family: 'Noto Sans KR', sans-serif;
    }

    #certification{
        width: 500px;
        padding: 50px;
        /* 푸터가 보이게 할 지 안보이게 할지 고민중 */
        padding-bottom: 330px;
        margin: auto;
        display: grid;
        grid-template-rows: 120px 150px 200px ;
        text-align: center;
        align-items: center;
    }

    #title-big{
        font-size: 24px;
        font-weight: 700;
        margin-bottom: 15px;
    }

    #title-small,#certification-content,#certification-btn div{
        font-size: 16px;
    }

    #certification-content{
        line-height:170%;
    }

    #certification-btn button{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 320px;
        height: 48px;
        border-radius:4px;
        margin-top: 20px;
    }

    #certification-btn #login-btn2{
        background-color: #5ECC80;
        color: #FFFFFF;
    }

    #certification-btn #main-btn{
        border: 1px solid #5ECC80;
        color: #5ECC80;
    }

    #title-big span{
        color: #5ECC80;
    }

    #certification-content span{
        font-weight: 700;
    }

    /* 인증 영역 끗 */
    

</style>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>

<!-- 인증 메일 영역 -->
<div id="certification-area">

    <div id="certification">
        <div id="certification-title">
           <div id="title-big">
           <span>인증메일</span>을 보냈어요
           </div>
           <div id="title-small">
            메일을 확인해주세요✉️
           </div>
        </div>
        
        <div id="certification-content">
            아직 한단계가 더 남았어요!<br>
            <span>가입하신 이메일을 인증</span>해주시면,<br>
            인프런의 모든 서비스를 이용하실 수 있어요!
        </div>

        <div id="certification-btn">
            <div>🥰 가입해주셔서 진심으로 감사합니다 🥰</div>
            <button id="login-btn2">로그인</button>
            <button id="main-btn" onclick="location.href='/app/main'">메인으로</button>
        </div>
    </div>

</div>

<script>
    //모달 띄우기
    $('#login-btn2').on('click',function(){
    	$('.blackBG').addClass('show');
    })  
</script>

<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>