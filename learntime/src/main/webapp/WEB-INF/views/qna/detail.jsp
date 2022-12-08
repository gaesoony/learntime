<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.banner{
        height: 61px;
        background-color: #5ECC80;
    }
    .main{
        width: 1002px;
        margin: 0 auto;
        margin-top: 30px;
        margin-bottom: 50px;
    }
    .maintitle{
        font-size: 28px;
    }
    h3{
        float: left;
        color: #5ECC80;
        font-size: 30px;
    }
    .middletitle{
        margin-top: 20px;
    }
    .profile{
        width: 30px;
        margin-right: 8px;
    }
    .nick{
        font-size: 20px;
        color: #989898;
        vertical-align: middle;
        padding-right: 20px;
    }
    .enrollDate{
        font-size: 20px;
        color: #989898;
        vertical-align: middle;
        padding-right: 20px;
    }
    .heart{
        font-size: 20px;
        color: #5ECC80;
        vertical-align: middle;
        padding-right: 600px;
    }
    .thumbsup{
        font-size: 20px;
        vertical-align: middle;
    }
    .thumbsdown{
        font-size: 20px;
        vertical-align: middle;
    }
    .bookmark{
        font-size: 20px;
        vertical-align: middle;
    }
    .dots{
        font-size: 20px;
        vertical-align: middle;
    }
    .line1{
        border-bottom: 1px solid #C0C0C0;
        margin-bottom: 30px;
        margin-top: 15px;
    }
    .content{
        font-size: 20px;
        color: #434343;
        line-height: 28px;
    }
    .two{
        margin-bottom: 80px;
    }
    .hash1{
        background-color:  #AAAAAA;
        color: white;
    }
    .hash2{
        background-color:  #AAAAAA;
        color: white;
    }
    .hash3{
        background-color:  #AAAAAA;
        color: white;
    }
    .ha1{
        border-radius: 20px;
        padding: 10px;
    }
    .ha2{
        border-radius: 20px;
        padding: 10px;
    }
    .ha3{
        border-radius: 20px;
        padding: 10px;
    }
    .middle{
        height: 1300px;
        background-color: #F4FBF6;
        padding: 70px;
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
        height: 174px;
        border: 1px solid gray;
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
    }
    .profile3{
        width: 2vw;
        float: left;
        margin-left: 30px;
        margin-top: 30px;
        margin-right: 10px;
    }
    .endnick{
        font-size: 18px;
        color: black;
        padding: 30px;
        margin-top: 10px;
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
        margin-right: 730px;
    }
    .edit1{
        float: left;
        color: #989898;
        margin-right: 5px;
    }
    .edit2{
        float: left;
        color: #989898;
        margin-right: 5px;
    }
    .edit3{
        color: #989898;
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
        color: #5ECC80;
        margin-left: 915px;
    }
    .enddown{
        font-size: 20px;
        color: #5ECC80;
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
        padding-right: 20px;
        margin-top: 7px;
    }
    .endendenrollDate{
        font-size: 18px;
        color: #989898;
        padding-top: 8px;
    }
    .endline3{
        width: 825px;
        margin: 0 auto;
        margin-top: 20px;
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
        color: #5ECC80;
        margin-top: 30px;
        margin-left: 845px;
    }
    .enddown2{
        font-size: 20px;
        color: #5ECC80;
    }
    .endline4{
        width: 825px;
        margin: 0 auto;
        margin-top: 60px;
        padding-top: 15px;
        border-top: 1px solid #D8D7D7;
    }
    .pluschat{
        margin: 0 auto;
        font-size: 17px;
    }
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>

    <!-- 상단 초록색 바-->
    <div class="banner"></div>

    <!-- 상세조회 메인 부분 -->
    <div class="main">
        <div class="maintitle">
            <div class="title"><h3>Q.</h3><h2>Json 형식 데이터 교환과 MVC 구조</h2></div>
        </div>
        <div class="middletitle">
            <table>
                <tr>
                    <td><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필"></td>
                    <td class="nick">nick01</td>
                    <td class="enrollDate">2202.12.07.</td>
                    <td class="heart"><i class="fa-solid fa-thumbs-up"></i>25</td>
                    <td class="thumbsup"><i class="fa-regular fa-thumbs-up"></i></td>
                    <td class="thumbsdown"><i class="fa-regular fa-thumbs-down"></i></td>
                    <td class="bookmark"><i class="fa-regular fa-bookmark"></i></td>
                    <td class="dots"><i class="fa-solid fa-ellipsis-vertical"></i></td>
                </tr>
            </table>
            <div class="line1"></div>
            <table class="two">
                <tr>
                    <td class="content">
                        Json 형식으로 데이터를 교환하는 경우도 MVC 구조라고 할 수 있을까요?<br>
                        안녕하세요. 제로초님<br>
                        제가 현재 제로초님 강의를 듣고 따로 사용자 프로필 사진을 등록하는 기능을 작업 중인데, 여기서 권한을
                        설정할 때 permissions 설정 관련해서 질문을 드리려 합니다<br>
                        우선 저는  앱이 처음 실행될 때 권한을 묻는 게 아니라, 사용자가 프로필 사진을 등록을 할 때 권한 요청을
                        창을 띄우고 싶어서 클릭시에 permissions 을 불러오도록 했습니다.
                    </td>
                </tr>
            </table>
            <table class="three">
                <tr class="hash1">
                    <td class="ha1">#JAVA</td>
                    <td class="ha2">#자바</td>
                    <td class="ha3">#CSS</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="middle">
        <div class="middlemain">
            <div><img class="profile2" src="/app/resources/img/qna/profile.png" alt="프로필"></div>
            <div class="replyplz">nick01님, 답변해주세요!</div>
            <div class="replyplz-1">모두에게 도움이 되는 답변의 주인공이 되어주세요:)</div>
            <div class="input"><input type="text"></div>
            <button class="replybtn">답변 등록</button>
        </div>

        <div class="end">
            <i class="fa-regular fa-comment"></i>
            <div class="endword">총 1개의 답변이 있습니다</div>
        </div>

        <div class="jjinend">
            <div><img class="profile3" src="/app/resources/img/qna/profile.png" alt="프로필"></div>
            <div class="endnick">nick02</div>
            <div class="endenrollDate">2022.12.08</div>
            <div class="endheart"><i class="fa-solid fa-thumbs-up"></i>12</div>
            <div class="edit1">답변</div>
            <div class="edit2"> / </div>
            <div class="edit3">수정</div>
            <div class="endline1"></div>
            <div class="endreply">
                안녕하세요. nick02입니다.<br>
                아래 4개의 클래스 차이는 인터페이스인지/ 클래스인지의 차이를 알 수 없습니다.<br>
                인터페이스는 객체를 생성할 수 없기 때문에 다른 클래서에서와 같이 추가할 수 없고,<br>
                대신 스프링 데이터 JPA를 사용할 경우 구현 클래스를 자동으로 생성하여 주입 받아
                사용가능합니다.
            </div>
            <div class="endup"><i class="fa-regular fa-thumbs-up"></i></div>
            <div class="enddown"><i class="fa-regular fa-thumbs-down"></i></div>

            <div class="endline2"></div>

            <div class="chat">댓글</div>

            <div><img class="profile4" src="/app/resources/img/qna/profile.png" alt="프로필"></div>
            <div class="endend">nick03</div>
            <div class="endendenrollDate">2202.12.08.</div>
            <div class="endline3"></div>
            <div class="endendcontent">
                말씀하신 내용 바탕으로 정리해보았는데,<br>
                의존관계 자동주입 시점에 스프링컨테이너에 프로토타입빈을 요청하면 스프링컨테이너는<br>
                프로토타입빈을 생성해서 반환한다. 반환된 프로토타입빈을 this.prototypeBean =prototypeBean; 에 의해서 내부필드에 주입되어서 보관한다.
            </div>
            <div class="endup2"><i class="fa-regular fa-thumbs-up"></i></div>
            <div class="enddown2"><i class="fa-regular fa-thumbs-down"></i></div>

            <div class="endline4"></div>

            <a class="pluschat" href="#none"></a>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
</body>
</html>