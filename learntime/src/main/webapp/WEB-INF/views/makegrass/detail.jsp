<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 에디터 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<style>
    .banner{
        height: 61px;
        background-color: #5ECC80;
    }
    .leftside{
        width: 190px;
        height: 395px;
        border-radius: 10px;
        border: 1px solid #9D9D9D;
        background-color: white;
        margin-left: 30px;
        margin-top: 200px;
    }
    .leftsidebox{
        width: 200px;
        float: left;
    }
    .leftsidetitle{
        margin-left: 15px;
        margin-top: 15px;
        margin-bottom: 17px;
    }
    .crown{
        font-size: 16px;
        font-weight: 550;
    }
    .crownimg{
        width: 25px;
        margin-right: 10px;
    }
    .profile{
        width: 25px;
        margin-left: 17px;
        margin-top: 15px;
        margin-right: 10px;
        float: left;
    }
    .user{
        width: 2.5vw;
        font-size: 16px;
        margin-right: 5px;
    }
    .usernick{
        margin-top: 20px;
        margin-right: 50px;
        float: left;
    }
    .usernum{
        width: 2vw;
        margin-left: 155px;
        padding-top: 20px;
        margin-bottom: 10px;
    }
    .mainbox{
        margin-left: 70px;
        width: 1002px;
        float: left;
    }
    .main{
        width: 1002px;
        margin-top: 70px;
        margin-bottom: 50px;
    }
    .maintitle{
        margin-left: 13px;
        font-size: 25px;
        font-weight: 550;
    }
    .title-end{
        padding: 20px;
        line-height: 35px;
    }
    .profile{
        width: 30px;
        margin-right: 5px;
    }
    .profile3{
        width: 25px;
        margin-right: 5px;
    }
    .nick{
        font-size: 18px;
        color: #989898;
        vertical-align: middle;
        padding-right: 20px;
    }
    .enrollDate{
        font-size: 18px;
        color: #989898;
        vertical-align: middle;
        padding-right: 20px;
    }
    .heart{
        font-size: 18px;
        color: #5ECC80;
        vertical-align: middle;
        padding-right: 500px;
    }
    .thumbsup{
        font-size: 20px;
        padding-top: 10px;
        vertical-align: middle;
        cursor: pointer;
    }
    .thumbsdown{
        font-size: 20px;
        padding-top: 10px;
        vertical-align: middle;
        cursor: pointer;
    }
    .bookmark{
        font-size: 20px;
        padding-top: 10px;
        vertical-align: middle;
        cursor: pointer;
    }
    .edit{
        vertical-align: middle;
    }
    .edit-btn{
        border: none;
        font-size: 18px;
        background-color: white;
        font-weight: 300;
        cursor: pointer;
        margin-top: 8px;
    }
    .edit-btn:hover{
        color: #5ECC80;
        font-weight: 550;
    }
    .slash{
        font-size: 18px;
        padding-top: 10px;
        vertical-align: middle;
        font-weight: 300;
    }
    .delete-btn{
        border: none;
        font-size: 18px;
        vertical-align: middle;
        cursor: pointer;
        font-weight: 300;
        background-color: white;
        padding-bottom: 16px;
    }
    .delete-btn:hover{
        color: #5ECC80;
        font-weight: 550;
    }

    /* 삭제 모달창 */
    .modal{
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .modal .bg{
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.6);
    }
    .modalBox {
        position: absolute;
        background-color: #fff;
        width: 400px;
        height: 200px;
        padding: 15px;
        border-radius: 10px;
    }
    .hidden{
        display: none;
    }
    .modalTitle{
        font-size: 16px;
        text-align: center;
    }
    .closeBtn{
        display: block;
        border: none;
        color: #444444;
        background-color: white;
        font-size: 18px;
        text-align: right;
        cursor: pointer;
        margin-left: 370px;
        margin-bottom: 30px;
    }
    .closeBtn:hover{
        color: #5ECC80;
    }
    .modalBtn{
        display: grid;
        grid-template-columns: 150px 150px;
        column-gap: 30px;
        justify-content: center;
        margin-top: 55px;
    }
    .cancleBtn{
        margin: 0 auto;
        width: 90px;
        border: 1px solid #5ECC80;
        color: #5ECC80;
        background-color: white;
        font-size: 18px;
        cursor: pointer;
    }
    .cancleBtn:hover{
        background-color: #5ECC80;
        color: white;
        font-weight: 550;
    }
    .saveBtn{
        margin: 0 auto;
        width: 90px;
        border: 1px solid #5ECC80;
        color: #5ECC80;
        background-color: white;
        font-size: 18px;
        cursor: pointer;
    }
    .saveBtn:hover{
        background-color: #5ECC80;
        color: white;
        font-weight: 550;
    }

    .edit-btn-null{
        border: none;
        font-size: 18px;
        background-color: white;
        font-weight: 300;
    }
    .delete-btn-null{
        border: none;
        font-size: 18px;
        vertical-align: middle;
        font-weight: 300;
        background-color: white;
        padding-bottom: 19px;
    }

    /* 상단 라인 */
    .line1{
        border-top: 1px solid #C0C0C0;
        margin-bottom: 30px;
    }
    .content{
        font-size: 16px;
        color: #434343;
        line-height: 28px;
    }
    .two{
        margin-bottom: 130px;
    }
    .three{
        padding-bottom: 30px;
    }
    .ha{
        text-align: center;
        background-color: #AAAAAA;
        color: white;
        border-radius: 20px;
        padding: 10px;
        float: left;
        margin-right: 10px;
    }
    .hash2{
        background-color:  #AAAAAA;
        color: white;
    }
    .hash3{
        background-color:  #AAAAAA;
        color: white;
    }
    .middle{
        background-color: #F4FBF6;
        padding-top: 70px;
    }
    .middlemain{
        width: 1002px;
        height: 355px;
        background-color: white;
        border: 1px solid #5ECC80;
        margin: 0 auto;
        border-radius: 10px;
    }
    .replyplz{
        color: black;
        padding-top: 30px;
        font-size: 18px;
        margin-top: 10px;
        margin-left: 20px;
        padding-bottom: 15px;
    }
    .profile2{
        width: 2vw;
        float: left;
        margin-left: 30px;
        margin-top: 30px;
        margin-right: 10px;
    }
    .replyplz-1{
        color: #989898;
        margin-left: 35px;
    }
    .input{
        width: 925px;
        margin: 0 auto;
        margin-top: 15px;
    }
    .replybtn{
        width: 5vw;
        height: 3.5vh;
        margin-top: 10px;
        background-color: #5ECC80;
        color: white;
        border-radius: 20px;
        margin-left: 860px;
        text-decoration: none;
        border-style: none;
        font-size: 15px;
    }
    .replybtn:hover{
        font-weight: 550;
    }
    .end{
        width: 1002px;
        font-size: 20px;
        margin: 0 auto;
        color: #444444;
        padding-top: 50px;
        padding-bottom: 10px;
    }
    .fa-regular{
        float: left;
        margin-right: 15px;
    }
    .jjinend{
        width: 1002px;
        border: 1px solid #5ECC80;
        background-color: white;
        border-radius: 10px;
        margin: 0 auto;
        padding-top: 20px;
        padding-left: 20px;
    }
    .profile3{
        width: 2vw;
        float: left;
        margin-left: 30px;
        margin-top: 20px;
        margin-right: 10px;
    }
    .endnick{
        font-size: 18px;
        color: black;
        padding: 30px;
    }
    .endenrollDate{
        font-size: 15px;
        color: #989898;
        margin-left: 35px;
        float: left;
        margin-right: 15px;
    }
    .endheart{
        font-size: 15px;
        color: #5ECC80;
        float: left;
        margin-right: 675px;
    }
    .edit1{
        float: left;
        margin-right: 5px;
    }
    #edit1{
        color: #989898;
        background-color: white;
        text-decoration: none;
        border: none;
        font-size: 15px;
    }
    .edit2{
        float: left;
        color: #989898;
        margin-right: 5px;
    }
    #edit3{
        color: #989898;
        background-color: white;
        text-decoration: none;
        border: none;
        font-size: 15px;
    }
    .endline1{
        width: 950px;
        margin: 0 auto;
        border-top: 1px solid #D8D7D7;
        margin-top: 10px;
    }
    .endreply{
        width: 950px;
        margin: 0 auto;
        margin-top: 20px;
        color: #444444;
        line-height: 30px;
        margin-bottom: 30px;
        margin-left: 35px;
    }
    .endup{
        font-size: 20px;
        margin-left: 915px;
        color: #444444;
    }
    .enddown{
        font-size: 20px;
        color: #444444;
    }
    .endline2{
        width: 950px;
        margin: 0 auto;
        margin-top: 60px;
        border-top: 1px solid #D8D7D7;
    }
    .chat{
        font-size: 20px;
        color: #5ECC80;
        margin-left: 40px;
        margin-top: 30px;
        margin-bottom: 20px;
        font-weight: 550;
    }
    .profile4{
        width: 2vw;
        float: left;
        margin-left: 85px;
        margin-right: 10px;
        float: left;
    }
    .endend{
        color: #444444;
        float: left;
        font-size: 18px;
        margin-top: 7px;
    }
    .endendenrollDate{
        padding-top: 11px;
        font-size: 15px;
        color: #989898;
        margin-left: 20px;
        float: left;
        margin-right: 20px;
    }
    .endline3{
        width: 825px;
        margin: 0 auto;
        margin-top: 10px;
        padding-top: 15px;
        border-top: 1px solid #D8D7D7;
    }
    .endendcontent{
        width: 825px;
        margin: 0 auto;
        line-height: 30px;
    }
    .endup2{
        font-size: 20px;
        margin-top: 30px;
        margin-left: 845px;
        color: #444444;
    }
    .enddown2{
        font-size: 20px;
        color: #444444;
    }
    .endline4{
        width: 825px;
        margin: 0 auto;
        margin-top: 60px;
        padding-top: 15px;
        border-top: 1px solid #D8D7D7;
    }
    .endheart2{
        padding-top: 10px;
        font-size: 15px;
        color: #5ECC80;
        float: left;
        margin-right: 435px;
    }
    .edit4{
        float: left;
        margin-right: 5px;
    }
    #edit4{
        color: #989898;
        background-color: white;
        text-decoration: none;
        border: none;
        font-size: 15px;
        margin-top: 15px;
    }
    .edit5{
        float: left;
        color: #989898;
        margin-right: 5px;
        margin-top: 15px;
    }
    #edit6{
        color: #989898;
        background-color: white;
        text-decoration: none;
        border: none;
        font-size: 15px;
        margin-top: 15px;
    }
    .siderank{
        border: 1px solid #9D9D9D;
        width: 258px;
        height: 371px;
        float: left;
    }
    .sidebox{
        width: 7vw;
        float: left;
        margin-top: 200px;
        margin-left: 200px;
        position: fixed;
    }
    .side{
        width: 5vw;
        margin: 0 auto;
    }
    .si{
        background-color: #5ECC80;
        color: white;
        font-size: 20px;
        border-radius: 10px;
        text-align: center;
        padding: 10px;
        margin-bottom: 20px;
        box-shadow: 3px 3px 2px 2px #b1ebc3;
    }
    .pluschat{
        font-size: 18px;
        color: #444444;
    }
    .replybox{
        padding-top: 130px;
        height: 100%;
    }
    .rightsidebox{
        height: 70vh;
        display: flex;
    }
    .sidebarbox{
        margin-top: 200px;
        margin-left: 50px;
    }
    .side{
        width: 5vw;
        margin: 0 auto;
    }
    .si{
        background-color: #5ECC80;
        color: white;
        font-size: 20px;
        border-radius: 10px;
        box-shadow: 3px 3px 2px 2px #b1ebc3;

    }
    .input2{
        width: 820px;
        margin: 0 auto;
        margin-top: 15px;
    }
    .replybtn2{
        width: 5vw;
        height: 3.5vh;
        margin-top: 10px;
        background-color: #5ECC80;
        color: white;
        border-radius: 20px;
        margin-left: 810px;
        text-decoration: none;
        border-style: none;
        font-size: 15px;
        cursor: pointer;
    }
    .replybtn2:hover{
        font-weight: 550;
    }
    .endline5{
        width: 950px;
        margin: 0 auto;
        margin-top: 25px;
        margin-bottom: 30px;
        padding-top: 15px;
        border-top: 1px solid #D8D7D7;
    }
    .endsection{
        width: 100%;
        height: 150px;
        background-color: #F4FBF6;
        margin-bottom: -30px;
    }
    #reply{
        display: none;
    }
</style>
</head>
<body>

    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <!-- 상단 초록색 바-->
    <div class="banner"></div>

    <!-- 왼쪽 사이드바 -->
    <div class="leftsidebox">
        <div class="leftside">

            <!-- 랭킹 타이틀 -->
            <ul class="leftsidetitle">
                <li class="crown"><img class="crownimg" src="/app/resources/img/qna/crown.png" alt="왕관">공부 인증 랭킹</li>
            </ul>

            <!-- user 랭킹 순위 -->
            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>

            <div class="userbox">
                <ul class="leftsidecontent">
                    <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                    <li class="usernick">nick02</li>
                    <li class="usernum">25</li>
                </ul>
            </div>
            
        </div> 
    </div>

    <!-- 메인 리스트 타이틀 -->
    <form action="${path}/makegrass/detail" method="post">
        <section class="mainbox">
            <article class="main">
                <div class="maintitle">
                    <div class="title">
                        <h2 class="title-end">${mvo.title}</h2>
                    </div>
                </div>
    
                <!-- 메인 리스트 내 본문 -->
                <div class="middletitle">
                    <table>
                        <tr>
                            <td><img class="profile3" src="/app/resources/img/qna/profile.png" alt="프로필"></td>
                            <td class="nick">${mvo.writer}</td>
                            <td class="enrollDate">${mvo.enrollDate}</td>
                            <td class="heart"><i class="fa-solid fa-thumbs-up"></i> 3</td>
                            <td class="thumbsup"><i class="fa-regular fa-thumbs-up"></i></td>
                            <td class="thumbsdown"><i class="fa-regular fa-thumbs-down"></i></td>
                            <td class="bookmark"><i class="fa-regular fa-bookmark"></i></td>
                            <c:if test="${loginMember.nick == mvo.writer}">
                                <td class="edit"><button type="button" class="edit-btn" onclick="location.href='${path}/makegrass/edit?mno=${mvo.no}'">수정</button></td>
                                <td class="slash">/</td>
                                <td class="delete">
                                    <button type="button" class="delete-btn">삭제</button>
                                    <div class="modal hidden">
                                        <div class="bg"></div>
                                        <div class="modalBox">
                                            <input type="button" class="closeBtn" onClick="location.reload();" value="X"></input>
                                            <p class="modalTitle">게시물을 삭제하시겠습니까?</p>
                                            <div class="modalBtn">
                                                <input type="button" class="cancleBtn" value="취소" onClick="location.reload();"></input>
                                                <input type="button" class="saveBtn" onclick="location.href='${path}/makegrass/delete?no=${mvo.no}'" value="삭제"></input>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </c:if>
                            <c:if test="${loginMember.nick != mvo.writer}">
                                <td class="edit"><button type="button" class="edit-btn-null" title="해당 글의 작성자만 가능합니다.">수정</button></td>
                                <td class="slash">/</td>
                                <td class="delete">
                                    <button type="button" class="delete-btn-null" title="해당 글의 작성자만 가능합니다.">삭제</button>
                                </td>
                            </c:if>
                            
                        </tr>
                    </table>
                    <div class="line1"></div>
                    <table class="two">
                        <tr>
                            <td class="content">
                                ${mvo.content}
                            </td>
                        </tr>
                    </table>
                    <div class="three">
                        <ul class="hash">
                            <li class="ha"><i class="fa-light fa-hashtag"></i>JAVA</li>
                            <li class="ha"><i class="fa-light fa-hashtag"></i>자바</li>
                            <li class="ha"><i class="fa-light fa-hashtag"></i>파이썬</li>
                        </ul>
                    </div>
                </div>
            </article>
        </section>
    </form>
    

    <!-- 오른쪽 사이드바 -->
    <aside class="rightsidebox">
        <div class="sidebarbox">
            <div class="side">
                <div class="si">
                    <div><i class="fa-solid fa-thumbs-up"></i>&nbsp 3</div>
                </div>
                <div class="si">
                    <div><i class="fa-solid fa-thumbs-down"></i>&nbsp 2</div>
                </div>
                <div class="si">
                    <i class="fa-solid fa-comment"></i>&nbsp 0
                </div>
            </div>
        </div>
    </aside>

    <section>
        <article class="replybox">
            <!-- 댓글 부분 -->
            <div class="middle">
                <div class="middlemain">
                    <div><img class="profile2" src="/app/resources/img/qna/profile.png" alt="프로필"></div>
                    <div class="replyplz">nick1님, 댓글을 달아보세요!</div>
                    <div class="replyplz-1">서로 예의를 지키는 좋은 말이면 더더욱 좋아요:)</div>
                    <div class="input">
                        <textarea class="summernote" name="editordata"></textarea>
                    </div>
                    <button type="button" class="replybtn" style='cursor:pointer;'>댓글 등록</button>
                </div>
        
                <div class="end">
                    <i class="fa-regular fa-comment"></i>
                    <div class="endword">총 1개의 댓글이 있습니다</div>
                </div>
        
                <div class="jjinend">
                    <div><img class="profile3" src="/app/resources/img/qna/profile.png" alt="프로필"></div>
                    <div class="endnick">nick02</div>
                    <div class="endenrollDate">2022.12.08</div>
                    <div class="endheart"><i class="fa-solid fa-thumbs-up"></i> 12</div>
                    <div class="edit1"><input type="button" id="edit1" style='cursor:pointer;' value="댓글 수정"></div>
                    <div class="edit2"> / </div>
                    <div class="edit3"><input type="button" id="edit3" style='cursor:pointer;' value="삭제"></div>
                    <div class="endline1"></div>
                    <div class="endreply">
                        안녕하세요. nick02입니다.<br>
                        아래 4개의 클래스 차이는 인터페이스인지/ 클래스인지의 차이를 알 수 없습니다.<br>
                        인터페이스는 객체를 생성할 수 없기 때문에 다른 클래서에서와 같이 추가할 수 없고,<br>
                        대신 스프링 데이터 JPA를 사용할 경우 구현 클래스를 자동으로 생성하여 주입 받아
                        사용가능합니다.
                    </div>
                    <div class="endup" style="cursor: pointer;"><i class="fa-regular fa-thumbs-up"></i></div>
                    <div class="enddown" style="cursor: pointer;"><i class="fa-regular fa-thumbs-down"></i></div>
        
                    <div class="endline2"></div>
        
                    <div class="chat" id="chat" style="cursor: pointer;">댓글 <i class="fa-solid fa-chevron-right"></i></div>
        
                    <div id="reply">
                        <div><img class="profile4" src="/app/resources/img/qna/profile.png" alt="프로필"></div>
                        <div class="endend">nick03</div>
                        <div class="endendenrollDate">2202.12.08.</div>
                        <div class="endheart2"><i class="fa-solid fa-thumbs-up"></i> 15</div>
                        <div class="edit4"><input type="button" id="edit4" style='cursor:pointer;' value="댓글 수정"></div>
                        <div class="edit5"> / </div>
                        <div class="edit6"><input type="button" id="edit6" style='cursor:pointer;' value="삭제"></div>
                        <div class="endline3"></div>
                        <div class="endendcontent">
                            말씀하신 내용 바탕으로 정리해보았는데,<br>
                            의존관계 자동주입 시점에 스프링컨테이너에 프로토타입빈을 요청하면 스프링컨테이너는<br>
                            프로토타입빈을 생성해서 반환한다. 반환된 프로토타입빈을 this.prototypeBean =prototypeBean; 에 의해서 내부필드에 주입되어서 보관한다.
                        </div>
                        <div class="endup2" style="cursor: pointer;"><i class="fa-regular fa-thumbs-up"></i></div>
                        <div class="enddown2" style="cursor: pointer;"><i class="fa-regular fa-thumbs-down"></i></div>
            
                        <div class="endline4"></div>

                        <!-- 대댓글 input 부분 -->
                        <div class="pluschat2" id="pluschat2">
                            <div class="input2">
                                <textarea class="summernote2" name="editordata2"></textarea>
                            </div>
                            <button type="button" class="replybtn2">댓글 등록</button>
                            <div class="endline5"></div>
                        </div>
                    </div>
                </div>
                <div class="endsection"></div>
            </div>
        </article>
    </section>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <!-- 썸머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>

        // 삭제 모달
        const open = () => {
            document.querySelector(".modal").classList.remove("hidden");
        }
        const close = () => {
            document.querySelector(".modal").classList.add("hidden");
        }
        document.querySelector(".delete-btn").addEventListener("click", open);
        document.querySelector(".bg").addEventListener("click", close);


        //썸머노트
        $('.summernote').summernote({
            height: 130,
            lang: "ko-KR"
        });

        $('.summernote2').summernote({
            height: 100,
            placeholder: '- 댓글을 작성해주세요:)',
            lang: "ko-KR"
        });

        // 댓글 펼치기
        $('#chat').click(function(){
            $('#reply').slideToggle();
        })

    </script>

</body>
</html>