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
        /* border: 1px solid #a2a2a2; */
        margin-top: 10px;
    }

    /* 리스트 본문 */
    .realcontent{
        justify-content: flex-start;
        cursor: pointer;
    }
    .qnalist{
        margin-left: 20px;
        width: 798px;
        margin-top: 20px;
    }
    .title{
        font-size: 15px;
        font-weight: 550;
        width: 600px;
        line-height: 25px;
    }
    .content{
        width: 600px;
        height: 60px;
        margin-top: 10px;
        font-size: 13px;
        line-height: 20px;
        float: left;
        color: #6F6F6F;
    }
    .circle{
        border: 1px solid #5ECC80;
        width: 70px;
        height: 70px;
        border-radius: 50%;
        background-color: #5ECC80;
        margin-left: 660px;
    }
    .replytitle{
        color: white;
        font-size: 20px;
        font-weight: 550;
        display: block;
        margin-left: 30px;
        margin-bottom: 5px;
        padding-top: 10px;
    }
    .replycontent{
        color: white;
        font-size: 14px;
        margin-left: 21px;
        margin-top: 10px;
    }
    .hashtag{
        width: 100%;
        list-style: none;
        display: flex;
        margin-top: -10px;
        font-size: 12px;
    }
    .hash{
        padding: 5px;
        margin-right: 15px;
        background-color: #AAAAAA;
        color: white;
        border-radius: 10px;
    }
    .enrollDate{
        width: 750px;
        color: #6F6F6F;
        margin-top: 10px;
        font-size: 12px;
    }
    .end-line{
        width: 780px;
        margin-top: 20px;
        margin-bottom: 20px;
        border-top: 1px solid #B7B7B7;
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
                            <a href="/app/member/mypage/qnaList">My Learning</a>
                        </div>
                        <div id="cate-list">
                            <a href="/app/member/mypage/qnaScrap">My 스크랩</a>
                        </div>
                        <div>
                            <a href="/app/member/mypage/qnaReply">My 답변</a>
                        </div>
                        <!-- 카테고리 라인 -->
                        <div id="category-line"></div>
                    </div>
                    

                    <div id="title-box">

                        <!-- 본문 -->
                        <div class="realcontent" onclick="navToDetail()">
                            <div class="qnalist">
                                <div class="title">[기술] 연간관계편의 메서드와 카테고리가 이해가 되지 않습니다.이해가 되지 않습니다.이해가 되지 않습니다.</div>
                                <div class="content">학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.꼭 확인해주세요.꼭 확인해주세요.</div>
    
                                <!-- 동그라미 답변 -->
                                <div class="circle">
                                    <div class="replytitle">0</div>
                                    <div class="replycontent">답변</div>
                                </div>

                                <div class="enrollDate">2202.12.12.</div>
                                <div class="end-line"></div>
                            </div>
                        </div>

                        <!-- 본문2 -->
                        <div class="realcontent" onclick="navToDetail()">
                            <div class="qnalist">
                                <div class="title">[기술] 연간관계편의 메서드와 카테고리가 이해가 되지 않습니다.이해가 되지 않습니다.이해가 되지 않습니다.</div>
                                <div class="content">학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.꼭 확인해주세요.꼭 확인해주세요.</div>
    
                                <!-- 동그라미 답변 -->
                                <div class="circle">
                                    <div class="replytitle">0</div>
                                    <div class="replycontent">답변</div>
                                </div>
    
                                <div class="enrollDate">2202.12.12.</div>
                                <div class="end-line"></div>
                            </div>
                        </div>

                        <!-- 본문3 -->
                        <div class="realcontent" onclick="navToDetail()">
                            <div class="qnalist">
                                <div class="title">[기술] 연간관계편의 메서드와 카테고리가 이해가 되지 않습니다.이해가 되지 않습니다.이해가 되지 않습니다.</div>
                                <div class="content">학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.꼭 확인해주세요.꼭 확인해주세요.</div>
    
                                <!-- 동그라미 답변 -->
                                <div class="circle">
                                    <div class="replytitle">0</div>
                                    <div class="replycontent">답변</div>
                                </div>
    
                                <div class="enrollDate">2202.12.12.</div>
                                <div class="end-line"></div>
                            </div>
                        </div>

                        <!-- 본문4 -->
                        <div class="realcontent" onclick="navToDetail()">
                            <div class="qnalist">
                                <div class="title">[기술] 연간관계편의 메서드와 카테고리가 이해가 되지 않습니다.이해가 되지 않습니다.이해가 되지 않습니다.</div>
                                <div class="content">학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.꼭 확인해주세요.꼭 확인해주세요.</div>
    
                                <!-- 동그라미 답변 -->
                                <div class="circle">
                                    <div class="replytitle">0</div>
                                    <div class="replycontent">답변</div>
                                </div>

                                <div class="enrollDate">2202.12.12.</div>
                                <div class="end-line"></div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

    <script>
        const category = document.querySelector("#my-cate div:nth-child(4) a");
        category.classList.add("main-color");

        function navToDetail(){
            window.location.href="/app/qna/detail";
        }
    </script>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
</body>
</html>