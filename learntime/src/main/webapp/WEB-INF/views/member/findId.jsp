<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | 아이디(이메일) 찾기</title>
<style>
    /* 아이디 찾기 영역 */
    #fintId-area{
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

    #find-phone{
      display: grid;
      grid-template-rows: 15px 70px 65px;
      align-items: center;
     

    }

    #find-phone div{
        color:#535353;
        font-size: 14px;
        display: flex;
        align-items: end;
    }

    #find-phone input,#find-phone button{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;
    }
    #find-phone input{
        width: 292px;
        height: 20px;
        padding:14px; 
        border-radius:4px;
        border:1px solid #D9D9D9;
    }

    #find-phone button{
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
    <div id="findId-area">
        <div id="find">
            <div id="find-title">
                <div id="title-big">
                    아이디(이메일) 찾기
                </div>
                <div id="title-small">
                    계정에 등록된 전화번호를 인증하시면<br>
                    사용중인 계정의 이메일 주소를 알려드립니다.
                </div>
            </div>
            <form action="${pageContext.request.contextPath}/member/findId" method="post" onsubmit="return phoneCheck();">
            <div id="find-phone">
                <div class="text">전화번호</div>
                
                <input type="text" name="phone" placeholder="- 제외한 번호만">

                <button>아이디 찾기</button>
                
            </div>
            <script>

                function phoneCheck(){
                    const phone=$("input[name=phone]");
                    //숫자만
			        var phoneCheck=/[0-9]{11}/g;

                    if(phoneCheck.test(phone.val())==false){
                            Swal.fire({
                                icon: 'error',
                                title: '전화번호를 다시 확인해주세요!',
                                text: '숫자만 입력해 주세요!',
                                confirmButtonColor: '#5ECC80'
                            });
                        phone.focus();
                        return false;
			        }

                }
            </script>



            </form>
            <div id="account_find">
                <a href="${pageContext.request.contextPath}/member/findPwd">비밀번호 찾기</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/member/join">회원가입</a>
            </div>

        </div>
    </div>
<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>