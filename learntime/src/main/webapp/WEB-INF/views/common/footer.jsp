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
            width: 100%;
            height: 200px;
           
   
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
            
            <a href="${pageContext.request.contextPath}/notice/noticeList?p=1&cateNo=0">????????????</a>
            <span>|</span>
            <a href="${pageContext.request.contextPath}/faq/faqList">FAQ</a>
            <span>|</span>
            <a href="${pageContext.request.contextPath}/question/questionList?p=1&cateNo=0">1:1 ????????????</a>
               
           </div>

           <div id="bottom">
            <div id="company_info">
                
                <a href="${pageContext.request.contextPath}/main" id="foot-logo"><img src="${pageContext.request.contextPath}/resources/img/logo_green2.png" alt="???????????????">LEARN TIME</a>
                <span>|</span>
                <a href="#">????????????????????????</a>
                <span>|</span>
                <a href="#">????????????</a>
            </div>
            <div id="company_text">
                ????????? JAVA | ????????? ????????? ????????? ????????? ????????? | ???????????? 20221114-20230113<br>
                ?????????: ONEDRAGON | ??????: ??????????????? ????????? ???????????? 130 ???????????? 5F, 352<br>
                ??????????? JAVA. ALL RIGHTS RESERVED
            </div>
            <div id="icon">
                <div id="instar-icon"></div>
                <div id="youtube-icon"></div>
                <div id="github-icon"></div>
            </div>
            </div>
        </div>
       
    </div>