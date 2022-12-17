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

.main-notice{
    width: 1200px;
    height: auto;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
}

.notice-title-admin{
    width: 1200px;
    height: 300px;
    display: flex;
    align-items: center;
}
.notice-admin-Btns{
    width: 1200px;
    height: 100px;
  
 
}
.notice-list{
    width: 1200px;
    height: 1000px;
   

}
.page-notice{
    width: 1200px;
    height: 200px;
}

/* 타이틀 */
.notice-sign-m{
    width: 1200px;
    height: 100px;
    display: flex;


}
.line1-m{
    width: 150px;
    height: 100px;
   

}
.name-notice-m{
    width: 150px;
    height: 100px;
    font-size: xx-large;
    font-weight: 900;
    text-align: center;
    line-height: 100px;

}
.line2-m{
    width: 900px;
    height: 100px;
   

}
.line-a-m{
    width: 100%;
    height: 50px;
    border-bottom: 5px solid gray;
}
.line-b-m{
    width: 100%;
    height: 50px;
    border-bottom: 5px solid gray;
    
}
/* 버튼 */
.noticeBtn-etc{
    width: 100%;
    height: 100px;
    display: flex;
}
.setting-Btn{
    width: 300px;
    height: 100%;
   
}
.Btns-noticeAd{
    width: 900px;
    height: 100%;
    display: flex;
    justify-content: flex-end;
    align-items: flex-end;
    
}
.activate-Btn{

    width: 100px;
    height: 50px;
    border: 2px solid lightgray;
    border-radius: 1rem;
    color: #5ECC80;
    background-color: white;
    text-align: center;
    line-height: 50px;
    margin-left: 20px;



}
.deactivate-Btn{
    width: 100px;
    height: 50px;
    border: 2px solid lightgray;
    border-radius: 1rem;
    color: #5ECC80;
    background-color: white;
    text-align: center;
    line-height: 50px;
    margin-left: 20px;


}

.delete-notice-Btn{
    width: 100px;
    height: 50px;
    border-radius: 1rem;
    background-color: #5ECC80;
    color: white;
    text-align: center;
    line-height: 50px;
    margin-left: 20px;


}
.activate{
    border:none;
    color: #5ECC80;
    background-color: white;
    font-size: larger;
    font-weight: 600;
    
}
.deactivate{
    border:none;
    color: #5ECC80;
    background-color: white;
    font-size: larger;
    font-weight: 600;
   
}
.delete-lists{
    border:none;
    color: white;
    background-color: #5ECC80;
    font-size: larger;
    font-weight: 600;
   
}

.setting-Btn{
    display: flex;
    align-items: flex-end;
}
/* 리스트 */

.notice-list-twoColored{
    width: 1200px;
    height: 600px;
    display: flex;
    align-items: center;

}
.notice-group{
    width: 100%;
    height: 540px;
    border-top: 3px solid lightgray;

}
.notice-green{
    width: 100%;
    height: 90px;
    border-top:2px solid lightgray;
    border-bottom: 2px solid lightgray;
    display: flex;
    flex-direction: column;
    background-color: #e9fde9;
}
.notice-white{
    width: 100%;
    height: 90px;
    border-bottom: 3px solid lightgray;
    display: flex;
    flex-direction: column;
}

.admin-id-etc{
    width: 100%;
    height: 20px;
    display: flex;
    margin-top: 10px;
    

}
.admin-id{
    width: 100px;
    height: 100%;
    margin-left: 20px;
   
  

}
.enroll-date{
    width: 200px;
    height: 100%;
  

}
.written-notice{
    width:1200px;
    height: 45px;
    display: flex;
    margin-top: 10px;

}
.checkBoxBtn-notice{
    width: 50px;
    height: 45px;
    line-height: 45px;
}
.cate-notice{
    width: 100px;
    height: 100%;
    line-height: 45px;
    font-weight: 600;
    font-size: x-large;
}
.posted-notice{
    width: 1050px;
    height: 100%;
    line-height: 45px;
    font-weight: 600;
    font-size: x-large;

}
.views-etc{
   
    height: 25px;
    display: flex;
    flex-direction: row;
    justify-content: flex-end;
    margin-top: 20px;

}
.views{
    width: 70px;
    height: 100%;
}
.replies{
    width: 70px;
    height: 100%;

}
.checkBoxBtn{
    width: 30px;
    height: 30px;
}

</style>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            공지사항
        </div>
        <div class="main-notice">
            <div class="notice-title-admin">
                <div class="notice-sign-m">
                    <div class="line1-m">
                        <div class="line-a-m"></div>
                    </div>
                    <div class="name-notice-m">공지사항 </div>
                    <div class="line2-m">
                        <div class="line-b-m"></div>
                    </div>
                </div>
            </div>
            <div class="notice-admin-Btns">
                <div class="noticeBtn-etc">
                    <div class="setting-Btn"><img src="/app/resources/img/faq/image 116.png"></div>
                    <div class="Btns-noticeAd">
                        <div class="activate-Btn"><input class="activate" type="button" value="활성화" name="activate"></div>
                        <div class="deactivate-Btn"><input class="deactivate" type="button" value="비활성화" name="deactivate"></div>
                        <div class="delete-notice-Btn"><input class="delete-lists" type="button" value="삭제" name="delete"></div>
                    </div>
                </div>
            </div>
            <div class="notice-list">
                <div class="notice-list-twoColored">
                    <div class="notice-group">
                        <c:forEach var="notice-white" begin="1" end="10" >
                            <div class="notice-white">
                                <div class="admin-id-etc">
                                    <div class="admin-id">관리자</div>
                                    <div class="enroll-date">2022.11.28</div>
                                </div>
                                <div class="written-notice">
                                    <div class="checkBoxBtn-notice"><input type="checkbox" name="faq-ad" id="checkBoxBtn"></div>
                                    <div class="cate-notice">[전체]</div>
                                    <div class="posted-notice">스팸 단어로 인한 글 등록 불가 문제 관련 공지사항</div>
                                    <div class="views-etc">
                                        <div class="views"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">17k</div>
                                        <div class="replies"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">8</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="page-notice"></div>
        </div>
    </div>


        
</body>
</html>