<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">

<style>
    #mypage-box{
        width: 1200px;
        height: 100%;
        margin: auto;
    }
    #mypage{
        width: 100%;
        height: 2100px;
        display: grid;
        grid-template-columns: 300px 900px;
    }
    #home-area{
        padding: 40px;
        display: grid;
        grid-template-rows: 230px 210px 210px;
    }

    /* 첫번째 리스트 */
    .qna-list1{
        border: 1px solid #D9D9D9;
        width: 1000px;
        margin-top: 30px;
        position: absolute;
        padding-bottom: 20px;
    }
    .list1-category{
        margin-top: 25px;
        margin-left: 30px;
    }
    .category{
        background-color: white;
        color: #B7B7B7;
        margin-right: 20px;
        font-size: 20px;
        border: none;
    }
    .active2{
        color: black;
        font-weight: 550;
    }
    .line1{
        border-top: 1px solid #B7B7B7;
        width: 940px;
        margin-top: 10px;
    }
    .qnalist{
        margin-left: 30px;
        margin-top: 20px;
        width: 940px;
    }
    .title{
        font-size: 17px;
        font-weight: 550;
        width: 750px;
        line-height: 25px;
    }
    .content{
        width: 750px;
        margin-top: 15px;
        font-size: 15px;
        line-height: 20px;
        float: left;
        color: #6F6F6F;
    }
    .circle{
        border: 1px solid #5ECC80;
        width: 90px;
        height: 90px;
        border-radius: 50%;
        background-color: #5ECC80;
        margin-left: 790px;
    }
    .replytitle{
        color: white;
        font-size: 30px;
        font-weight: 550;
        display: block;
        margin-left: 37px;
        margin-bottom: 10px;
        padding-top: 15px;
    }
    .replycontent{
        color: white;
        font-size: 15px;
        margin-left: 31px;
    }
    .hashtag{
        width: 100%;
        list-style: none;
        display: flex;
        margin-top: -10px;
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
        margin-left: 5px;
    }
    .end-line{
        margin-top: 20px;
        border-top: 1px solid #B7B7B7;
    }

    /* 두번째 리스트 */
    .scrap-list{
        border: 1px solid #D9D9D9;
        width: 1000px;
        margin-top: 690px;
        position: absolute;
        padding-bottom: 20px;
    }
    .scrap-title{
        font-size: 20px;
        margin-top: 25px;
        margin-left: 35px;
    }
    .scrap-title-line{
        width: 940px;
        border-top: 1px solid #B7B7B7;
        margin-left: 30px;
        margin-top: 10px;
    }
    .scrap-list-button{
        background-color: white;
        color: #4D4D4D;
        border: none;
        font-size: 16px;
        margin-left: 750px;
    }

    /* 세번째 리스트 */
    .reply-list{
        border: 1px solid #D9D9D9;
        width: 1000px;
        margin-top: 1370px;
        margin-bottom: 20px;
        position: absolute;
        padding-bottom: 20px;
    }
    .reply-title{
        font-size: 20px;
        margin-top: 25px;
        margin-left: 35px;
    }
    .reply-title-line{
        width: 940px;
        border-top: 1px solid #B7B7B7;
        margin-left: 30px;
        margin-top: 10px;
    }
    .reply-content{
        margin-top: 22px;
        margin-left: 30px;
        width: 750px;
        height: 100%;
        line-height: 25px;
        float: left;
    }
    .reply-circle{
        width: 90px;
        height: 90px;
        border-radius: 50%;
        background-color: #5ECC80;
        margin-top: 20px;
        margin-left: 825px;
    }
    .reply-circle-img{
        padding-top: 22px;
        text-align: center;
        color: white;
        font-size: 40px;
    }
    .reply-end-line{
        width: 940px;
        margin: 0 auto;
        margin-top: 20px;
        border-top: 1px solid #B7B7B7;
    }

    /* paging */
    #paging{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        margin: auto;
        margin-top: 40px;
        margin-bottom: 30px;
        width: 400px;
    }
    
    .paging-btn{
        height: 25px;
        width: 25px;
        border: 1px solid #aeaeae;
        border-radius: 2px;
        text-align: center;
        line-height: 24px;
        color: #535353;
        cursor: pointer;
    }
    .paging-btn:hover{
        background-color: #58c079;
        color: white;
    }
    
    #next-btn{
        width: 40px;
    }
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>

    <div id="mypage-box">
        <div id="mypage">
            <div id="bin">
                <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
            </div>
            <div id="home-area">

                <!-- 첫번째 리스트 -->
                <div class="qna-list1">
                    <!-- 전체, 해결, 미해결 카테고리 -->
                    <div class="list1-category">
                        <button class="category" style="cursor: pointer;">전체</button>
                        <button class="category" style="cursor: pointer;">해결</button>
                        <button class="category" style="cursor: pointer;">미해결</button>
                        <div class="line1"></div>
                    </div>

                    <!-- 리스트 본문1 -->
                    <div class="realcontent" onclick="navToDetail()" style="cursor: pointer;">
                        <div class="qnalist">
                            <div class="title">[미해결] 연간관계편의 메서드와 카테고리가 이해가 되지 않습니다.이해가 되지 않습니다.이해가 되지 않습니다.</div>
                            <div class="content">학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.꼭 확인해주세요.꼭 확인해주세요.</div>

                            <!-- 동그라미 답변 -->
                            <div class="circle">
                                <div class="replytitle">0</div>
                                <div class="replycontent">답변</div>
                            </div>

                            <!-- 해시태그 -->
                            <div class="hashtag">
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>자바</li>
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>JAVA</li>
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>CSS</li>
                            </div>
                            <div class="enrollDate">2202.12.12.</div>
                            <div class="end-line"></div>
                        </div>
                    </div>

                    <!-- 리스트 본문2 -->
                    <div class="realcontent" onclick="navToDetail()" style="cursor: pointer;">
                        <div class="qnalist">
                            <div class="title">[미해결] 연간관계편의 메서드와 카테고리가 이해가 되지 않습니다.이해가 되지 않습니다.이해가 되지 않습니다.</div>
                            <div class="content">학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.꼭 확인해주세요.꼭 확인해주세요.</div>

                            <!-- 동그라미 답변 -->
                            <div class="circle">
                                <div class="replytitle">0</div>
                                <div class="replycontent">답변</div>
                            </div>

                            <!-- 해시태그 -->
                            <div class="hashtag">
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>자바</li>
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>JAVA</li>
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>CSS</li>
                            </div>
                            <div class="enrollDate">2202.12.12.</div>
                            <div class="end-line"></div>
                        </div>
                    </div>

                    <!-- 버튼 -->
                    <div id="paging">
                        <div class="paging-btn">1</div>
                        <div class="paging-btn">2</div>
                        <div class="paging-btn">3</div>
                        <div class="paging-btn">4</div>
                        <div class="paging-btn">5</div>
                        <div class="paging-btn">6</div>
                        <div class="paging-btn">7</div>
                        <div class="paging-btn">8</div>
                        <div class="paging-btn">9</div>
                        <div class="paging-btn">10</div>
                        <div class="paging-btn" id="next-btn">다음</div>
                    </div>
                    <!--  -->
                </div>

                <!-- 두번째 리스트 -->
                <div class="scrap-list">
                    <div class="scrap-title"><i class="fa-regular fa-bookmark"></i> MY Learning 스크랩</div>
                    <input type="button" onclick="location.href='/app/qna/list'" class="scrap-list-button" style="cursor: pointer;" value="더 많은 Learning 보러가기 >>">
                    <div class="scrap-title-line"></div>

                    <!-- 리스트 본문1 -->
                    <div class="realcontent" onclick="navToDetail()" style="cursor: pointer;">
                        <div class="qnalist">
                            <div class="title">[미해결] 연간관계편의 메서드와 카테고리가 이해가 되지 않습니다.이해가 되지 않습니다.이해가 되지 않습니다.</div>
                            <div class="content">학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.꼭 확인해주세요.꼭 확인해주세요.</div>

                            <!-- 동그라미 답변 -->
                            <div class="circle">
                                <div class="replytitle">0</div>
                                <div class="replycontent">답변</div>
                            </div>

                            <!-- 해시태그 -->
                            <div class="hashtag">
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>자바</li>
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>JAVA</li>
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>CSS</li>
                            </div>
                            <div class="enrollDate">2202.12.12.</div>
                            <div class="end-line"></div>
                        </div>
                    </div>

                    <!-- 리스트 본문2 -->
                    <div class="realcontent" onclick="navToDetail()" style="cursor: pointer;">
                        <div class="qnalist">
                            <div class="title">[미해결] 연간관계편의 메서드와 카테고리가 이해가 되지 않습니다.이해가 되지 않습니다.이해가 되지 않습니다.</div>
                            <div class="content">학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.꼭 확인해주세요.꼭 확인해주세요.</div>

                            <!-- 동그라미 답변 -->
                            <div class="circle">
                                <div class="replytitle">0</div>
                                <div class="replycontent">답변</div>
                            </div>

                            <!-- 해시태그 -->
                            <div class="hashtag">
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>자바</li>
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>JAVA</li>
                                <li class="hash"><i class="fa-thin fa-hashtag"></i>CSS</li>
                            </div>
                            <div class="enrollDate">2202.12.12.</div>
                            <div class="end-line"></div>
                        </div>
                    </div>
                    <!--  -->

                    <!-- 버튼 -->
                    <div id="paging">
                        <div class="paging-btn">1</div>
                        <div class="paging-btn">2</div>
                        <div class="paging-btn">3</div>
                        <div class="paging-btn">4</div>
                        <div class="paging-btn">5</div>
                        <div class="paging-btn">6</div>
                        <div class="paging-btn">7</div>
                        <div class="paging-btn">8</div>
                        <div class="paging-btn">9</div>
                        <div class="paging-btn">10</div>
                        <div class="paging-btn" id="next-btn">다음</div>
                    </div>

                </div>

                <!-- 세번째 리스트 -->
                <div class="reply-list">
                    <div class="reply-title"><i class="fa-regular fa-comment"></i> MY 답변 목록</div>
                    <div class="reply-title-line"></div>

                    <!-- 본문1 -->
                    <div class="reply-content-list">
                        <div class="reply-content">
                            연간관계편의 메서드와 카테고리가 이해가 되지 않습니다의 질문에 대한 답변 안내 드립니다.
                            학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.
                        </div>
                        <div class="reply-circle">
                            <div class="reply-circle-img"><i class="fa-solid fa-check"></i></div>
                        </div>
                        <div class="reply-end-line"></div>
                    </div>

                    <!-- 본문2 -->
                    <div class="reply-content-list">
                        <div class="reply-content">
                            연간관계편의 메서드와 카테고리가 이해가 되지 않습니다의 질문에 대한 답변 안내 드립니다.
                            학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.
                        </div>
                        <div class="reply-circle">
                            <div class="reply-circle-img"><i class="fa-solid fa-check"></i></div>
                        </div>
                        <div class="reply-end-line"></div>
                    </div>

                    <!-- 본문2 -->
                    <div class="reply-content-list">
                        <div class="reply-content">
                            연간관계편의 메서드와 카테고리가 이해가 되지 않습니다의 질문에 대한 답변 안내 드립니다.
                            학습하는 분들께 도움이 되고, 더 좋은 답변을 드릴 수 있도록 질문 전에 다음을 꼭 확인해주세요.
                        </div>
                        <div class="reply-circle">
                            <div class="reply-circle-img"><i class="fa-solid fa-check"></i></div>
                        </div>
                        <div class="reply-end-line"></div>
                    </div>
                    <!--  -->

                    <!-- 버튼 -->
                    <div id="paging">
                        <div class="paging-btn">1</div>
                        <div class="paging-btn">2</div>
                        <div class="paging-btn">3</div>
                        <div class="paging-btn">4</div>
                        <div class="paging-btn">5</div>
                        <div class="paging-btn">6</div>
                        <div class="paging-btn">7</div>
                        <div class="paging-btn">8</div>
                        <div class="paging-btn">9</div>
                        <div class="paging-btn">10</div>
                        <div class="paging-btn" id="next-btn">다음</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

    <script>
        function navToDetail(){
            window.location.href="/app/qna/detail";
        }

        // 상단 버튼
        $('.top-btn-box .top-btn').on("click",function(){
            $(".top-btn-box .top-btn.active").removeClass('active');
            $(this).addClass("active");
        });

        // 나의 Learning에 카테고리 선택
        $('.list1-category .category').on("click",function(){
            $(".list1-category .category.active2").removeClass('active2');
            $(this).addClass("active2");
        });

    </script>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
    
</script>
</body>
</html>