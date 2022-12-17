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


.listed-q{
    width: 100%;
    height: 675px;
    display: flex;
    flex-direction: column;
   

}
.faqlistAd{
    width: 1200px;
    height: 45px;
    border-bottom: 2px solid lightgray;
    display: grid;
    grid-template-columns:1fr, 1fr, 3fr,10fr,1fr,3fr,3fr,2fr ;
    justify-items: center;

    
 
}

.gathering-divs-ad{
    display: flex;
    align-items: center;
    border-bottom: 2px solid lightgray;

}

.mark-ad{
    width: 50px;
    height: 45px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.checkBox-Btn{
    width: 40px;
    height: 40px;
    text-align: center;
    line-height: 40px;


}
.no-faq-ad{
    width: 50px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}
.category-faq-ad{
    width: 100px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}
.title-faq-ad{
    width: 250px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}
.comment-faq-ad{
    width: 410px;
    height: 10px;
    font-weight: 600;
    padding-bottom: 5px;
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

.green-circle{
    width: 30px;
    height: 30px;
    border-radius: 50%;
    background-color: #5ECC80;
    color: white;
    text-align: center;
    line-height: 30px;
}
/* 검색창 */

.search-delete-section{
    width: 1200px;
    height: 50px;
    display: flex;
    margin-right: 5px;
    margin-bottom: 30px;

   
}
.cate-search-ad{
    width: 100px;
    height: 50px;
    border: 2px solid lightgray;
    margin-right: 5px;
    
}
.search-box-ad{
    width: 890px;
    height: 50px;
    border: 2px solid lightgray;
    margin-right: 5px;

}
.search-btn-ad{
    width: 100px;
    height: 50px;
    border: 2px solid lightgray;
    margin-right: 5px;
    

}
.deleteBtn{
    width: 100px;
    height: 50px;
    border: 2px solid lightgray;
    margin-right: 5px;
    

}
#erase{
    
    width: 100px;
    height: 50px;
    
    font-size: larger;
    font-weight: 600;
    background-color: white;
    color: #5ECC80;
    
}
.search-green-box{
    width: 100px;
    height: 50px;
    border: none;
    font-size: larger;
    font-weight: 600;
    background-color: #5ECC80;
    color: white;

}
select{
    border: none;
    width: 100px;
    height: 50px;
    font-size: larger;
    font-weight: 600;
    text-align: center;

}
/* 글 카테고리 */
.list-faq-ad{
    border-bottom: 2px  solid lightgray;
    width: 1200px;
    height: 50px;
    display: flex;
    flex-direction: row;

}
.no-faq-admin{
   
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left: 60px;
    font-weight: 800;
    color: gray;
}
.cate-faq-admin{
  
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left:45px ;
    font-weight: 800;
    color: gray;
}
.title-faq-admin{
   
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left:110px ;
    font-weight: 800;
    color: gray;
}
.comment-faq-admin{
   
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left: 100px;
    font-weight: 800;
    color: gray;
}
.nick-faq-admin{
  
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left: 350px;
    font-weight: 800;
    color: gray;
}
.enrollDate-faq-admin{
   
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left: 55px;
    font-weight: 800;
    color: gray;
}
.delete-yn{
    
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left: 85px;
    font-weight: 800;
    color: gray;
}



</style>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            FAQ
        </div>
        <div class="main-admin-q">
            <div class="line-on-the-top">
                <div class="box-for-line-a">
                    <div class="half-box-a"></div>
                </div>
                <div class="title-box">FAQ</div>
                <div class="box-for-line-b">
                    <div class="half-box-b"></div>
                </div>
            </div>
            <div class="search-delete-section">
                <div class="cate-search-ad">
                    <select name="select-title" >
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                </div>
                <div class="search-box-ad"></div>
                <div class="search-btn-ad">
                    <input type="submit" value="검색" class="search-green-box">
                </div>
                <div class="deleteBtn">
                    <input type="button" value="삭제" id="erase">
                </div>
            </div>
            <div class="listed-q">
                <div class="list-faq-ad">
                    <div class="no-faq-admin">글번호</div>
                    <div class="cate-faq-admin">카테고리</div>
                    <div class="title-faq-admin">제목</div>
                    <div class="comment-faq-admin">댓글수</div>
                    <div class="nick-faq-admin">닉네임</div>
                    <div class="enrollDate-faq-admin">작성일시</div>
                    <div class="delete-yn">삭제</div>
                </div>
                <c:forEach var="faqListAd" begin="1" end="15" >
                    <div class="faqListAd">
                        <div class="gathering-divs-ad">
                            <div class="checkBox-Btn"><input type="checkbox" name="faq-ad" id="checkBoxBtn"></div>
                            <div class="mark-ad">
                                <div class="green-circle">Q</div>
                            </div>
                            <div class="no-faq-ad">1</div>
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