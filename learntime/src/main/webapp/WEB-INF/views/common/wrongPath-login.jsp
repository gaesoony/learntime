<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  
<head>
<meta charset="UTF-8">
<title>LEARN TIME | 로그인을 하세요</title>
<style>

    #login-area{
        width: 100%;
        height: 70vh;
        margin: auto;
       
    }
    
    
    #login-main {
        text-align: center;
        width: 320px;
        margin: auto;
        margin-top:50px;
        background: white;
        border-radius: 8px;
        padding: 50px;
        display: grid;
        grid-template-rows: 70px 190px 45px 30px 45px;
        z-index:10001;
      }

      
</style>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<div id="login-area">
    <div id="login-main">

            <div id="logo"><a href="${pageContext.request.contextPath}/main" ><img src="${pageContext.request.contextPath}/resources/img/logo_green2.png" alt="런타임로고"></a></div>
            
            <form action="${pageContext.request.contextPath}/wrong" method="POST">
                <div>
                    <input class="inputbox" type="text" name="id" placeholder="이메일">
                </div>
                <br>
                <div>
                    <input class="inputbox" type="password" name="pwd" autocomplete="off" placeholder="비밀번호">
                </div>
                <br>
                
                <button type="submit" class="modal-login-btn" >로그인</button>
            </form>
            
            <div id="account_find">
                <a href="${pageContext.request.contextPath}/member/findId">아이디(이메일) 찾기</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/member/findPwd">비밀번호 찾기</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/member/join">회원가입</a>
            </div>
            <div id="line">간편 로그인</div>
            <div id="loginApi">
                <div id="google"></div>
                <div id="kakao"></div>
            </div>
     
	    </div>

</div>

<%@include file="/WEB-INF/views/common/footer.jsp" %>

</body>
</html>