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
        height: 100%;
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
        height: 580px;
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
        border-bottom: 1px solid #5ECC80;
    }
    .category:checked{
        color: black;
    }
    .line1{
        border-top: 1px solid #B7B7B7;
        width: 940px;
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
    .reply-list{
        border: 1px solid #D9D9D9;
        width: 1000px;
        height: 550px;
        margin-top: 380px;
    }
    .scrap-title{
        font-size: 18px;
        margin-top: 25px;
        margin-left: 30px;
    }
    .scrap-title-line{
        width: 940px;
        border-top: 1px solid #B7B7B7;
        margin-left: 30px;
        margin-top: 10px;
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

                <!-- 전체, 해결, 미해결 카테고리 -->
                <div class="qna-list1">
                    <div class="list1-category">
                        <input type="button" class="category" value="전체" style="cursor: pointer;">
                        <input type="button" class="category" value="해결" style="cursor: pointer;">
                        <input type="button" class="category" value="미해결" style="cursor: pointer;">
                        <div class="line1"></div>
                    </div>

                    <!-- 첫번째 리스트 본문 -->
                    <div class="realcontent">
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

                    <!-- 두번째 리스트 본문 -->
                    <div class="realcontent">
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
                </div>

                <!-- 두번째 리스트 -->
                <div class="reply-list">
                    <div class="scrap-title"><i class="fa-regular fa-bookmark"></i> Q&A 스크랩</div>
                    <div class="scrap-title-line"></div>

                    <!-- 리스트 본문1 -->
                    <div class="realcontent">
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
                    <div class="realcontent">
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
                </div>
            </div>
        </div>
    </div>

    <!-- <%@include file="/WEB-INF/views/common/footer2.jsp" %> -->

<script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
    
</script>
</body>
</html>