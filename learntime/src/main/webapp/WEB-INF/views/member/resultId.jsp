<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	MemberVo findId = (MemberVo)session.getAttribute("findId");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | 아이디(이메일) 찾기</title>
<style>
    /* 아이디 찾기 영역 */
    #resultId-area{
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
        grid-template-rows: 150px 200px 200px;
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
        line-height: 150%;
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
    #result-findId{
        font-weight: 700;
        color: #5ECC80;
    }

    #userEnrollDate{
        color: #535353;
    }


    #result-btn{
        display: grid;
        grid-template-rows: repeat(2, 60px);
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
<div id="resultId-area">
    <div id="result">
        <div id="result-title">
            <div id="title-big">
                아이디(이메일) 찾기
            </div>
            <div id="title-small">
                입력한 전화번호로 가입된 계정입니다.
            </div>
        </div>
        
        <div id="resultBox">
           <div id="result-findId">아이디(이메일)</div>
           <%if(findId!=null){ %>
           <div id="userId">${findId.id}</div>
           <div id="userEnrollDate">가입일시 ${findId.enrollDate}</div>
           <%}else{ %>
            <div id="userId">조회된 아이디가 없습니다.</div>
           <div id="userEnrollDate"></div>
           <%} %>
           
        </div>

        <div id="result-btn">
            <button id="login-btn2">로그인</button>
            <button id="main-btn" onclick="location.href='${pageContext.request.contextPath}/main'">메인으로</button>
        </div>
       
        <div id="account_find">
            <a href="${pageContext.request.contextPath}/member/findPwd">비밀번호 찾기</a>
            <span>|</span>
            <a href="${pageContext.request.contextPath}/member/join">회원가입</a>
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