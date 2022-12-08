<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | 아이디(이메일) 찾기</title>
<style>
    /* 비밀번호 찾기 영역 */
    #fintPwd-area{
        width: 100%;
        height: 100%;
        font-family: 'Noto Sans KR', sans-serif;
    }

    #find{
        width: 500px;
        padding: 50px;
        /* 푸터가 보이게 할 지 안보이게 할지 고민중 */
        padding-bottom: 400px;
        margin: auto;
        display: grid;
        grid-template-rows: 200px 180px 50px ;
        align-items: center;
        justify-items: center;
    }

    #find-title div{
        text-align: center;
       
    }

    #title-big{
        font-size: 24px;
        font-weight: 700;
        margin-bottom: 15px;
        color: #5ECC80;
    }

    #title-small{
        font-size: 16px;
        line-height: 150%;
    }

    #find-email{
      display: grid;
      grid-template-rows: 15px 70px 65px;
      align-items: center;
     

    }

    #find-email div{
        color:#535353;
        font-size: 14px;
        display: flex;
        align-items: end;
    }

    #find-email input,#find-email button{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;
    }
    #find-email input{
        width: 292px;
        height: 20px;
        padding:14px; 
        border-radius:4px;
        border:1px solid #D9D9D9;
    }

    #find-email button{
        width: 320px;
        height: 48px;
        border-radius:4px;
        background-color: #5ECC80;
        color: #FFFFFF;
    }

    
</style>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
    <div id="findPwd-area">
        <div id="find">
            <div id="find-title">
                <div id="title-big">
                    비밀번호 재설정
                </div>
                <div id="title-small">
                    비밀번호를 잃어버리셨나요?<br>
                    런타임에 가입한 이메일을 정확히 입력해 주세요.<br>
                    이메일을 통해 비밀번호 변경 링크가 전송됩니다.

                </div>
            </div>
            <form action="/app/member/findPwd" method="post">
            <div id="find-email">
                <div class="text">이메일</div>
                
                <input type="text" name="id" placeholder="가입했던 아이디(이메일)을 입력해주세요">

                <button>재설정 메일 전송하기</button>
                
            </div>
            </form>
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