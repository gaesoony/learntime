<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
        #footer-area *{
            --border:1px solid red;
            font-family: 'Noto Sans KR', sans-serif;
            font-weight: 300;
            font-size:14px;
        }
        #footer-area{
            width: 100vw;
            height: 200px;
            margin-top:30px;
            
        }

        #footer #top{
            background-color: #5ECC80;
            display: grid;
            grid-template-columns: 70px 20px 40px 20px 100px 950px;
            height: 25px;
            justify-content: center;
        }

        #footer #top a,#footer #top span{
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            

        }

        #footer #bottom{
            color: #D9D9D9;
            background-color: #535353;
            height: 175px;
            display: grid;
            justify-content: center;
            grid-template-columns: 1000px 200px;
            grid-template-rows: 65px 110px;
        }

        #company_info{
            display: grid;
            grid-column: span 2;
            grid-template-columns: 160px 20px 120px 20px 100px 780px;
            align-items: end;
            justify-content: center;
            
        }

        #company_info a {
            color: #D9D9D9;
            display: flex;
            align-items: center;
            justify-content: flex-start;
            
        }

        #company_info #foot-logo{
            color: #5ECC80; 
        }

        #company_info a img{
            margin-right: 10px;
            width:50px;
        }

        #company_text{
            line-height:20px;
            display: flex;
            align-items: center;
           
        }

        #icon{
            display: flex;
            justify-content: flex-end;
        }
        #icon div{
           margin-right: 10px;
            width: 30px;
            height: 30px;
            border-radius: 100px;
            background-color: #D9D9D9;
        }
       
    </style>
</head>
<body>
    <div id="footer-area">
        <div id="footer">
           <div id="top">
            
            <a href="#">공지사항</a>
            <span>|</span>
            <a href="#">FAQ</a>
            <span>|</span>
            <a href="#">1:1 문의하기</a>
               
           </div>

           <div id="bottom">
            <div id="company_info">
                
                <a href="#" id="foot-logo"><img src="/app/resources/img/logo_green2.png" alt="런타임로고">LEARN TIME</a>
                <span>|</span>
                <a href="#">개인정보처리방침</a>
                <span>|</span>
                <a href="#">이용약관</a>
            </div>
            <div id="company_text">
                내손을 JAVA | 한혜원 권혜린 김량우 이도경 조하나 | 작업기간 20221114-20230113<br>
                책임자: ONEDRAGON | 주소: 서울특별시 강남구 테헤란로 130 호산빌딩 5F, 352<br>
                ©내손을 JAVA. ALL RIGHTS RESERVED
            </div>
            <div id="icon">
                <div id="instar-icon"></div>
                <div id="youtube-icon"></div>
                <div id="github-icon"></div>
            </div>
            </div>
        </div>
       
    </div>