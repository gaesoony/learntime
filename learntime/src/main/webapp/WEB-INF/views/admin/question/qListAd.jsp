<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="/app/.css"> -->
<title>Insert title here</title>
</head>
<style>
#content-wrap{
    background-color: #efefef;
}

#admin-category-title{
    padding: 0 20px;
    color: black;
    background-color: white;
    box-shadow: 0px 2px 2px #c5c5c5;

    height: 55px;
    line-height: 55px;
    font-size: 18px;
}

.main-admin-q{
    width: 1200px;
    height: auto;
    margin: 0 auto;
}
.line-on-the-top{
    width: 100%;
    height: 300px;
    display: flex;
}
.box-for-line-a{
    width: 150px;
    height: 100%;
   

}
.half-box-a{
    width: 100%;
    height: 50%;
    border-bottom: 5px solid gray;
}
.half-box-b{
    width: 100%;
    height: 50%;
    border-bottom: 5px solid gray;
}
.title-box{
    width: 150px;
    height: 100%;
    text-align: center;
    line-height:300px ;
    font-size: xx-large;
    font-weight: 900;


}
.box-for-line-b{
    width: 900px;
    height: 100%;
   

}
.deleteBtn{
    width: 100%;
    height: 100px;
    display: flex;
    justify-content: flex-end;
    align-items: center;

}
#erase{
    border: 3px solid lightgray;
    width: 100px;
    height: 50px;
    border-radius: 1rem;
    font-size: larger;
    font-weight: 600;
    background-color: white;
    color: #5ECC80;
    
}
.listed-q{
    width: 100%;
    height: 675px;
    border-top: 3px solid lightgray;;
    display: flex;
    flex-direction: column;
   

}
.faqlistAd{
    width: 1200px;
    height: 45px;
    border-bottom: 3px solid lightgray;
    display: grid;
    grid-template-columns:1fr, 1fr, 3fr,10fr,1fr,3fr,3fr,2fr ;
    justify-items: center;

    
 
}

.gathering-divs-ad{
    display: flex;
    align-items: center;
    border-bottom: 3px solid lightgray;

}



.check-Btn{
    width: 40px;
    height: 40px;
    text-align: center;
    line-height: 40px;


}
.category-faq-ad{
    width: 100px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}
.title-faq-ad{
    width: 200px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}
.comment-faq-ad{
    width: 510px;
    height: 10px;
    font-weight: 600;
    margin-bottom: 5px;
}
.nickname-faq-ad{
    width: 100px;
    height: 100%;
    font-weight: 600;
}
.enrollDate-faq-ad{
    width: 160px;
    height: 100%;
    font-weight: 600;
    
}
.deleteBtn-faq-ad{
    width: 100px;
    height: 100%;
}
#delete-ad{
    border: none;
    font-size: medium;
    font-weight: 600;

}
.page-qList-ad{
    width: 100%;
    height: 200px;
    border: 1px solid red;

}
</style>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            문의
        </div>
        <div class="main-admin-q">
            <div class="line-on-the-top">
                <div class="box-for-line-a">
                    <div class="half-box-a"></div>
                </div>
                <div class="title-box">문의</div>
                <div class="box-for-line-b">
                    <div class="half-box-b"></div>
                </div>
            </div>
            <div class="deleteBtn">
                <input type="button" value="삭제" id="erase">
            </div>
            <div class="listed-q">
                <c:forEach var="faqListAd" begin="1" end="15" >
                    <div class="faqListAd">
                        <div class="gathering-divs-ad">
                            <div class="check-Btn"><input type="checkbox" name="faq-ad" id="checkBtn"></div>
                            <div class="category-faq-ad">[멘토링]</div>
                            <div class="title-faq-ad">멘토링 서비스가 궁금해요</div>
                            <div class="comment-faq-ad">(3)</div>
                            <div class="nickname-faq-ad">김곰돌</div>
                            <div class="enrollDate-faq-ad">2022.12.13</div>
                            <div class="deleteBtn-faq-ad"><input type="button" value="삭제" id="delete-ad"></div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="page-qList-ad"></div>
        </div>
    </div>


        
</body>
</html>