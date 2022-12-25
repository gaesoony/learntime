<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | 비밀번호 재설정</title>
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

    #pwd{
      display: grid;
      width: 320px;
      grid-template-rows: 25px 50px 40px 80px;
      align-items: center;
      position: relative;

    }

    #pwd div{
        color:#535353;
        font-size: 14px;
        display: flex;
        align-items: end;
    }

    #pwd input,#pwd button{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;
    }
    #pwd input{
        width: 292px;
        height: 20px;
        padding:14px; 
        border-radius:4px;
        border:1px solid #D9D9D9;
    }

    #pwd button{
        width: 320px;
        height: 48px;
        border-radius:4px;
        background-color: #5ECC80;
        color: #FFFFFF;
    }
    #pwd div+input+span{
        
        position: absolute;
        left: 90%;
        top: 39px;
        color: #D9D9D9;

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
                    변경할 비밀번호를 입력해주세요<br>
                    런타임에 가입한 이메일을 정확히 입력해 주세요.<br>
                    이메일을 통해 비밀번호 변경 링크가 전송됩니다.

                </div>
            </div>
            <form action="${pageContext.request.contextPath}/member/editPwd" method="post" onsubmit="return check();">
            <div id="pwd">
                <div class="text">비밀번호</div>
                
                <input type="password" name="pwd" autocomplete="off" >
                <span class="material-symbols-outlined">visibility</span>
                <div id="pwdResult" class="result">영문,숫자,특수문자 2가지 이상 포함, 8자 이상 32자 이하, 연속 3자 이상 동일한 숫자,문자 제외</div>
            

                <button>재설정하기</button>
                
            </div>

            <script>
                    
                //비밀번호 보기,숨기기 
                $(document).ready(function(){
                    $('#pwd div+input+span').on('click',function(){
                        $('input').toggleClass('active');
                        if($('input').hasClass('active')){
                            $(this).attr('class',"material-symbols-outlined")
                            .prev('input').attr('type',"text");
                        }else{
                            $(this).attr('class',"material-symbols-outlined")
                            .prev('input').attr('type','password');
                        }
                    });

                });
                
            </script>
            

            </form>
            <div id="account_find">
                <a href="${pageContext.request.contextPath}/member/findId">아이디(이메일) 찾기</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/member/join">회원가입</a>
            </div>

        </div>
    </div>


    <script>
			
		function check(){
			const pwd=$("input[name=pwd]").eq(1);
			const pwd2=$("input[name=pwd2]");
			//영문/숫자/특수문자 2가지 이상 포함, 8자 이상 32자 이하
			var pwdCheck = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?:[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{8,32}$/;
			//같은 문자 3번 이상 X
			var pwd3WordCheck =/(\w)\1\1/;

			if(pwdCheck.test(pwd.val())==false){
				Swal.fire({
					icon: 'error',
					title: '비밀번호를 다시 확인해주세요!',
					text: '영문,숫자,특수문자 2가지 이상 포함, 8자 이상 32자 이하로 이뤄져야합니다.',
					confirmButtonColor: '#5ECC80'
				});

				pwd.focus();
				return false;
				
			}else if(pwd3WordCheck.test(pwd.val())){
				Swal.fire({
					icon: 'error',
					title: '비밀번호를 다시 확인해주세요!',
					text: '같은 문자를 3번 이상 사용하실 수 없습니다.',
					confirmButtonColor: '#5ECC80'
				});
				pwd.focus();
				return false;
	   		}

		}



			
	</script>
<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>