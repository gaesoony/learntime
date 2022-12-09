<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | 비밀번호 찾기</title>
<style>
    /* 아이디 찾기 영역 */
    #resultPwd-area{
        width: 100%;
        height: 100%;
        font-family: 'Noto Sans KR', sans-serif;
    }

    #result{
        width: 500px;
        padding: 50px;
        /* 푸터가 보이게 할 지 안보이게 할지 고민중 */
        padding-bottom: 400px;
        margin: auto;
        display: grid;
        grid-template-rows: 150px 250px 100px;
        align-items: center;
        justify-items: center;
    }

    #result-title div{
        text-align: center;
       
    }

    #title-big{
        font-size: 24px;
        font-weight: 700;
        margin-bottom: 10px;
        color: #5ECC80;
    }

    #title-small{
        font-size: 16px;
        line-height: 120%;
    }

    #resultBox{
        width: 278px;
        height: 200px;
        padding: 20px;
        border:1px solid #D9D9D9;
        border-radius:4px;
        
        display: grid;
        --grid-template-rows: repeat(3, 50px);
        align-items: center;
    }


    #resultBox div{
        padding-left: 10px;
        font-size: 14px;
    }

    #resultBox div span{
        
        font-size: 11px;
    }
    #result-findId{
        font-weight: 700;
        color: #5ECC80;
    }

    #mail-info{
        color: #535353;
    }


    #result-btn{
        display: grid;
        align-items: center;
    }

    #result-btn button{
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
        
    }

    #result-btn #login-btn2{
        background-color: #5ECC80;
        color: #FFFFFF;
    }

    #result-btn #main-btn{
        border: 1px solid #5ECC80;
        color: #5ECC80;
    }
   

    
</style>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<div id="resultPwd-area">
    <div id="result">
        <div id="result-title">
            <div id="title-big">
                비밀번호 재설정 메일 발송
            </div>
            <div id="title-small">
                입력한 이메일로 비밀번호 설정 메일이 <br>
                전송되었습니다 ✉️
            </div>
        </div>
        
        <div id="resultBox">
           <div id="result-findId">메일이 전송된 이메일</div>
           <div id="userId">gaesoony@gmail.com</div>
           <div id="mail-info">
                메일을 확인 해주세요.<br>
                <span>몇 분내로 확인되지 않으면 스팸 폴더를 확인해주세요</span>
        </div>
        </div>

        <div id="result-btn">
            
            <button id="main-btn" onclick="location.href='/app/main'">메인으로</button>
        </div>

        <div id="account_find">
            <a href="/app/member/findId">아이디(이메일) 찾기</a>
            <span>|</span>
            <a href="/app/member/join">회원가입</a>
        </div>
    </div>

    
</div>

<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>