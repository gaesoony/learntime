<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* 공통부분 */
    #all-area{
        width: 100%;
        height: 100%;
        margin: auto;
    }

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
        margin-top: 20px;

        display: grid;
        grid-template-rows: 45px;
   }
   .main-color {
        color: #5ecc80;
    }

    /* 카테고리 부분 */
    #category-box{
        display: grid;
        width: 820px;
        height: 45px;
        grid-template-columns: 270px 270px 270px;
        place-items: center;
    }
    #cate-list a{
        color: #5ecc80;
        font-weight: 550;
    }
    #category-line{
        width: 820px;
        height: 2px;
        margin: 0 auto;
        border-top: 1.5px solid #a2a2a2;
    }
    #title-box{
        width: 100%;
        height: auto;
        margin-top: 10px;
    }

    /* 리스트 부분 */
    .mainbox{
        width: 800px;
        margin-top: 20px;
        display: grid;
        grid-template-columns: 270px 270px 270px;
        row-gap: 20px;
        justify-content: center;
    }
    .mainlist{
        width: 220px;
        height: 300px;
        border: 2px solid #5ECC80;
        border-radius: 20px;
        margin: 0 auto;
    }
    .title{
        width: 200px;
        height: 90px;
        margin: 0 auto;
        margin-top: 15px;
        font-size: 14px;
        font-weight: 550;
    }
    .clockimg{
        margin-left: 10px;
        margin-top: 10px;
        font-size: 15px;
    }
    .bookimg{
        font-size: 15px;
        margin-left: 13px;
        margin-top: 10px;
    }
    .content{
        width: 200px;
        height: 100px;
        font-size: 12px;
        margin-left: 13px;
        margin-top: 5px;
        line-height: 17px;
    }
    .contentline{
        width: 90%;
        margin: 0 auto;
        border-top: 2px solid #5ECC80;
    }
    .contentDate{
        margin-left: 15px;
        color: #868686;
        font-size: 12px;
        margin-top: 10px;
    }

</style>
</head>
<body>

    <%@include file="/WEB-INF/views/common/header.jsp" %>

    <div id="all-area">
        <div id="mypage-box">
            <div id="mypage">
                <div id="bin">
                    <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
                </div>
                <div id="home-area">
                    <!-- 카테고리 -->
                    <div id="category-box">
                        <div>
                            <a href="/app/member/mypage/makegrassList">My 잔디심기</a>
                        </div>
                        <div id="cate-list">
                            <a href="/app/member/mypage/makegrassScrap">My 스크랩</a>
                        </div>
                        <div>
                            <a href="/app/member/mypage/makegrassReply">My 댓글</a>
                        </div>
                        <!-- 카테고리 라인 -->
                        <div id="category-line"></div>
                    </div>
                    

                    <div id="title-box">

                        <div class="mainbox">
                            <!-- 리스트1 -->
                            <div class="mainlist" onclick="navToDetail()" style="cursor: pointer;">
                                <div class="title"><i class="fa-solid fa-pencil"></i> Title <br><br>타이틀타이틀</div>
                                <div class="clockimg"><i class="fa-regular fa-clock"></i> 120분</div>
                                <div class="bookimg"><i class="fa-solid fa-book"></i></div>
                                <div class="content">
                                    백앤드로 JAVA Script와 화면
                                    구현을 위한 CSS, 추가로 AJAX에
                                    대한 부분도 함께 공부함.
                                    백앤드로 JAVA Script와 화면.
                                </div>
                                <div class="contentline"></div>
                                <div class="info">
                                    <ul>
                                        <li class="contentDate">2202-12-09</li>
                                    </ul>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

    <script>
        const category = document.querySelector("#my-cate div:nth-child(2) a");
        category.classList.add("main-color");

        function navToDetail(){
            window.location.href="/app/makegrass/detail";
        }

    </script>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
</body>
</html>