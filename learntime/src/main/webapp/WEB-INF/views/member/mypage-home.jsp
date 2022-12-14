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
        grid-template-rows: 230px 210px;
    }

    #intro-area,#badge-area,#grass-area{
        display: grid;
        grid-template-columns: 4fr 1fr;
        grid-template-rows:45px;
       
    }

    #intro-editor,#makegrass{
        grid-column: span 2;
        display: flex;
        margin-top: 10px;
    }

    #intro, #intro-btn{
        display: flex;
        align-items: center;
        border-bottom: 1px solid #000000;
    }

    #intro,#badge,#grass{
        font-size: 18px;
        font-weight: 700;
        color: #5ECC80;
    }

    #intro-btn{
        justify-content: flex-end;
    }

    #edit, #save{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 58px;
        height: 30px;
        border: 1px solid #5ECC80;
        color: #5ECC80;
        border-radius: 4px;
        margin-left: 10px;
    }

   

    #badge{
        height: 45px;
        font-size: 18px;
        font-weight: 700;
        color: #5ECC80;
        display: flex;
        align-items: center;
        border-bottom: 1px solid #000000;
    }

   #have-badge{
        grid-column: span 2;
        display: flex;
        justify-content: space-between;
        width: 100%;
        overflow: hidden;
    }

    
.badge{
        width: 140px;
        --height: 300px;
        text-align: left;
        padding: 10px;
        
    }

    .badge-img{
        width: 140px;
        height: 140px;
        border-radius:4px;
        border:1px solid #D9D9D9;
        
    }
    
    .badge-img img{
        width:100%;
    }

    .badge-title{
        margin: 10px 0;
        font-weight: 600;
        font-size: 16px;
    }
   
    .badge-content{
        margin-bottom: 20px;
        color:#535353;
        font-size: 12px;
    }

    #badge,.more,#grass{
        display: flex;
        align-items: center;
        border-bottom: 1px solid #000000;
    }

    .more{
        justify-content: flex-end;
    }

    .more a{
        display: flex;
        align-items: center;
    }

   

    #makegrass{
        /* background-color: #D9D9D9; */
    }


    .main-color {
        color: #5ecc80;
      }

      
    /* makegrass */
    .banner{
        border: 2px solid #5ecc80;
        width: 800px;
        height: 200px;
        border-radius: 20px;
        margin: 0 auto;
    }
    .monthbox{
        width: 800px;
        margin-top: 10px;
        display: flex;
        margin-left: 73px;
    }
    .month{
        font-size: 10px;
        margin-right: 45px;
    }
    .daybox{
        width: 3vw;
        margin-left: 15px;
        margin-top: 10px;
        float: left;
    }
    .day{
        margin-bottom: 12px;
        font-size: 10px;
    }
    .grassbox1{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass1{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox2{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass2{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox3{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass3{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox4{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass4{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox5{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass5{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox6{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass6{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox7{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass7{
        width: 15px;
        height: 12px;
        background-color: #D9D9D9;
        margin-right: 5px;
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
            <div id="intro-area">
                <div id="intro">?????????</div>
                <div id="intro-btn">
                <c:if test="${userNo.no eq loginMember.no}">
                   <button id="edit" class="btn btn-primary" onclick="edit()" type="button">??????</button>
                    <button id="save" class="btn btn-primary" onclick="save()" type="button">??????</button> 
                </c:if>
                    
                </div>
                <div id="intro-editor">
                     <div class="click2edit">${userNo.intro}</div>
                </div>
                
           </div>

           <div id="badge-area">
                <div id="badge">????????? ??????</div>
                <div class="more">
                    <a href="${pageContext.request.contextPath}/member/mypage/badge?no=${userNo.no}">????????????<span class="material-symbols-outlined">chevron_right</span></a>
                </div>
                <div id="have-badge">
                    <c:forEach items="${list}" var="list">
                        <div class="badge">
                            
                            <div class="badge-img"><img src="${pageContext.request.contextPath}/${list.imgName}"/></div>
                        
                        </div>
                    </c:forEach>
                </div>
           </div>
           <div id="grass-area">
            <div id="grass">MAKE GRASS</div>
            <div class="more">
                <a href="/app/member/mypage/makegrassList?no=${userNo.no}">????????????<span class="material-symbols-outlined">chevron_right</span></a>
            </div>
            <div id="makegrass">
                <div class="bannerbox">
                    <div class="banner">
                        <ul class="monthbox">
                            <li class="month">1???</li>
                            <li class="month">2???</li>
                            <li class="month">3???</li>
                            <li class="month">4???</li>
                            <li class="month">5???</li>
                            <li class="month">6???</li>
                            <li class="month">7???</li>
                            <li class="month">8???</li>
                            <li class="month">9???</li>
                            <li class="month">10???</li>
                            <li class="month">11???</li>
                            <li class="month">12???</li>
                        </ul>
                        <ul class="daybox">
                            <li class="day">SAT</li>
                            <li class="day">SUN</li>
                            <li class="day">MON</li>
                            <li class="day">TUE</li>
                            <li class="day">WED</li>
                            <li class="day">THU</li>
                            <li class="day">FRI</li>
                        </ul>
            
                        <!-- ?????? -->
                        <div class="grassbox">
                            <ul class="grassbox1">
                                <li class="grass1" title="23??? 1??? 1???"></li>
                                <li class="grass1" title="23??? 1??? 8???"></li>
                                <li class="grass1" title="23??? 1??? 15???"></li>
                                <li class="grass1" title="23??? 1??? 22???"></li>
                                <li class="grass1" title="23??? 1??? 29???"></li>
                                <li class="grass1" title="23??? 2??? 5???"></li>
                                <li class="grass1" title="23??? 2??? 12???"></li>
                                <li class="grass1" title="23??? 2??? 19???"></li>
                                <li class="grass1" title="23??? 2??? 26???"></li>
                                <li class="grass1" title="23??? 3??? 5???"></li>
                                <li class="grass1" title="23??? 3??? 12???"></li>
                                <li class="grass1" title="23??? 3??? 19???"></li>
                                <li class="grass1" title="23??? 3??? 26???"></li>
                                <li class="grass1" title="23??? 4??? 2???"></li>
                                <li class="grass1" title="23??? 4??? 9???"></li>
                                <li class="grass1" title="23??? 4??? 16???"></li>
                                <li class="grass1" title="23??? 4??? 23???"></li>
                                <li class="grass1" title="23??? 4??? 30???"></li>
                                <li class="grass1" title="23??? 5??? 7???"></li>
                                <li class="grass1" title="23??? 5??? 14???"></li>
                                <li class="grass1" title="23??? 5??? 21???"></li>
                                <li class="grass1" title="23??? 5??? 28???"></li>
                                <li class="grass1" title="23??? 6??? 4???"></li>
                                <li class="grass1" title="23??? 6??? 11???"></li>
                                <li class="grass1" title="23??? 6??? 18???"></li>
                                <li class="grass1" title="23??? 6??? 25???"></li>
                                <li class="grass1" title="23??? 7??? 2???"></li>
                                <li class="grass1" title="23??? 7??? 9???"></li>
                                <li class="grass1" title="23??? 7??? 16???"></li>
                                <li class="grass1" title="23??? 7??? 23???"></li>
                                <li class="grass1" title="23??? 7??? 30???"></li>
                                <li class="grass1" title="23??? 8??? 6???"></li>
                                <li class="grass1" title="23??? 8??? 13???"></li>
                                <li class="grass1" title="23??? 8??? 20???"></li>
                                <li class="grass1" title="23??? 8??? 27???"></li>
                                <li class="grass1" title="23??? 9??? 3???"></li>
                                <li class="grass1" title="23??? 9??? 10???"></li>
                                <li class="grass1" title="23??? 9??? 17???"></li>
                                <li class="grass1" title="23??? 9??? 24???"></li>
                                <li class="grass1" title="23??? 10??? 1???"></li>
                                <li class="grass1" title="23??? 10??? 8???"></li>
                                <li class="grass1" title="23??? 10??? 15???"></li>
                                <li class="grass1" title="23??? 10??? 22???"></li>
                                <li class="grass1" title="23??? 10??? 29???"></li>
                                <li class="grass1" title="23??? 11??? 5???"></li>
                                <li class="grass1" title="23??? 11??? 12???"></li>
                                <li class="grass1" title="23??? 11??? 19???"></li>
                                <li class="grass1" title="23??? 11??? 26???"></li>
                                <li class="grass1" title="23??? 12??? 3???"></li>
                                <li class="grass1" title="23??? 12??? 10???"></li>
                                <li class="grass1" title="23??? 12??? 17???"></li>
                                <li class="grass1" title="23??? 12??? 24???"></li>
                                <li class="grass1" title="23??? 12??? 31???"></li>
                            </ul>
                            <ul class="grassbox2">
                                <li class="grass2" title="23??? 1??? 2???"></li>
                                <li class="grass2" title="23??? 1??? 9???"></li>
                                <li class="grass2" title="23??? 1??? 16???"></li>
                                <li class="grass2" title="23??? 1??? 23???"></li>
                                <li class="grass2" title="23??? 1??? 30???"></li>
                                <li class="grass2" title="23??? 2??? 6???"></li>
                                <li class="grass2" title="23??? 2??? 13???"></li>
                                <li class="grass2" title="23??? 2??? 20???"></li>
                                <li class="grass2" title="23??? 2??? 27???"></li>
                                <li class="grass2" title="23??? 3??? 6???"></li>
                                <li class="grass2" title="23??? 3??? 13???"></li>
                                <li class="grass2" title="23??? 3??? 20???"></li>
                                <li class="grass2" title="23??? 3??? 27???"></li>
                                <li class="grass2" title="23??? 4??? 3???"></li>
                                <li class="grass2" title="23??? 4??? 10???"></li>
                                <li class="grass2" title="23??? 4??? 17???"></li>
                                <li class="grass2" title="23??? 4??? 24???"></li>
                                <li class="grass2" title="23??? 5??? 1???"></li>
                                <li class="grass2" title="23??? 5??? 8???"></li>
                                <li class="grass2" title="23??? 5??? 15???"></li>
                                <li class="grass2" title="23??? 5??? 22???"></li>
                                <li class="grass2" title="23??? 5??? 29???"></li>
                                <li class="grass2" title="23??? 6??? 5???"></li>
                                <li class="grass2" title="23??? 6??? 12???"></li>
                                <li class="grass2" title="23??? 6??? 19???"></li>
                                <li class="grass2" title="23??? 6??? 26???"></li>
                                <li class="grass2" title="23??? 7??? 3???"></li>
                                <li class="grass2" title="23??? 7??? 10???"></li>
                                <li class="grass2" title="23??? 7??? 17???"></li>
                                <li class="grass2" title="23??? 7??? 24???"></li>
                                <li class="grass2" title="23??? 7??? 31???"></li>
                                <li class="grass2" title="23??? 8??? 7???"></li>
                                <li class="grass2" title="23??? 8??? 14???"></li>
                                <li class="grass2" title="23??? 8??? 21???"></li>
                                <li class="grass2" title="23??? 8??? 28???"></li>
                                <li class="grass2" title="23??? 9??? 4???"></li>
                                <li class="grass2" title="23??? 9??? 11???"></li>
                                <li class="grass2" title="23??? 9??? 18???"></li>
                                <li class="grass2" title="23??? 9??? 25???"></li>
                                <li class="grass2" title="23??? 10??? 2???"></li>
                                <li class="grass2" title="23??? 10??? 9???"></li>
                                <li class="grass2" title="23??? 10??? 16???"></li>
                                <li class="grass2" title="23??? 10??? 23???"></li>
                                <li class="grass2" title="23??? 10??? 30???"></li>
                                <li class="grass2" title="23??? 11??? 6???"></li>
                                <li class="grass2" title="23??? 11??? 13???"></li>
                                <li class="grass2" title="23??? 11??? 20???"></li>
                                <li class="grass2" title="23??? 11??? 27???"></li>
                                <li class="grass2" title="23??? 12??? 4???"></li>
                                <li class="grass2" title="23??? 12??? 11???"></li>
                                <li class="grass2" title="23??? 12??? 18???"></li>
                                <li class="grass2" title="23??? 12??? 25???"></li>
                            </ul>
                            <ul class="grassbox3">
                                <li class="grass3" title="23??? 1??? 3???"></li>
                                <li class="grass3" title="23??? 1??? 10???"></li>
                                <li class="grass3" title="23??? 1??? 17???"></li>
                                <li class="grass3" title="23??? 1??? 24???"></li>
                                <li class="grass3" title="23??? 1??? 31???"></li>
                                <li class="grass3" title="23??? 2??? 7???"></li>
                                <li class="grass3" title="23??? 2??? 14???"></li>
                                <li class="grass3" title="23??? 2??? 21???"></li>
                                <li class="grass3" title="23??? 2??? 28???"></li>
                                <li class="grass3" title="23??? 3??? 7???"></li>
                                <li class="grass3" title="23??? 3??? 14???"></li>
                                <li class="grass3" title="23??? 3??? 21???"></li>
                                <li class="grass3" title="23??? 3??? 28???"></li>
                                <li class="grass3" title="23??? 4??? 4???"></li>
                                <li class="grass3" title="23??? 4??? 11???"></li>
                                <li class="grass3" title="23??? 4??? 18???"></li>
                                <li class="grass3" title="23??? 4??? 25???"></li>
                                <li class="grass3" title="23??? 5??? 2???"></li>
                                <li class="grass3" title="23??? 5??? 9???"></li>
                                <li class="grass3" title="23??? 5??? 16???"></li>
                                <li class="grass3" title="23??? 5??? 23???"></li>
                                <li class="grass3" title="23??? 5??? 30???"></li>
                                <li class="grass3" title="23??? 6??? 6???"></li>
                                <li class="grass3" title="23??? 6??? 13???"></li>
                                <li class="grass3" title="23??? 6??? 20???"></li>
                                <li class="grass3" title="23??? 6??? 27???"></li>
                                <li class="grass3" title="23??? 7??? 4???"></li>
                                <li class="grass3" title="23??? 7??? 11???"></li>
                                <li class="grass3" title="23??? 7??? 18???"></li>
                                <li class="grass3" title="23??? 7??? 25???"></li>
                                <li class="grass3" title="23??? 8??? 1???"></li>
                                <li class="grass3" title="23??? 8??? 8???"></li>
                                <li class="grass3" title="23??? 8??? 15???"></li>
                                <li class="grass3" title="23??? 8??? 22???"></li>
                                <li class="grass3" title="23??? 8??? 29???"></li>
                                <li class="grass3" title="23??? 9??? 5???"></li>
                                <li class="grass3" title="23??? 9??? 12???"></li>
                                <li class="grass3" title="23??? 9??? 19???"></li>
                                <li class="grass3" title="23??? 9??? 26???"></li>
                                <li class="grass3" title="23??? 10??? 3???"></li>
                                <li class="grass3" title="23??? 10??? 10???"></li>
                                <li class="grass3" title="23??? 10??? 17???"></li>
                                <li class="grass3" title="23??? 10??? 24???"></li>
                                <li class="grass3" title="23??? 10??? 31???"></li>
                                <li class="grass3" title="23??? 11??? 7???"></li>
                                <li class="grass3" title="23??? 11??? 14???"></li>
                                <li class="grass3" title="23??? 11??? 21???"></li>
                                <li class="grass3" title="23??? 11??? 28???"></li>
                                <li class="grass3" title="23??? 12??? 5???"></li>
                                <li class="grass3" title="23??? 12??? 12???"></li>
                                <li class="grass3" title="23??? 12??? 19???"></li>
                                <li class="grass3" title="23??? 12??? 26???"></li>
                            </ul>
                            <ul class="grassbox4">
                                <li class="grass4" title="23??? 1??? 4???"></li>
                                <li class="grass4" title="23??? 1??? 11???"></li>
                                <li class="grass4" title="23??? 1??? 18???"></li>
                                <li class="grass4" title="23??? 1??? 25???"></li>
                                <li class="grass4" title="23??? 2??? 1???"></li>
                                <li class="grass4" title="23??? 2??? 8???"></li>
                                <li class="grass4" title="23??? 2??? 15???"></li>
                                <li class="grass4" title="23??? 2??? 22???"></li>
                                <li class="grass4" title="23??? 3??? 1???"></li>
                                <li class="grass4" title="23??? 3??? 8???"></li>
                                <li class="grass4" title="23??? 3??? 15???"></li>
                                <li class="grass4" title="23??? 3??? 22???"></li>
                                <li class="grass4" title="23??? 3??? 29???"></li>
                                <li class="grass4" title="23??? 4??? 5???"></li>
                                <li class="grass4" title="23??? 4??? 12???"></li>
                                <li class="grass4" title="23??? 4??? 19???"></li>
                                <li class="grass4" title="23??? 4??? 26???"></li>
                                <li class="grass4" title="23??? 5??? 3???"></li>
                                <li class="grass4" title="23??? 5??? 10???"></li>
                                <li class="grass4" title="23??? 5??? 17???"></li>
                                <li class="grass4" title="23??? 5??? 24???"></li>
                                <li class="grass4" title="23??? 5??? 31???"></li>
                                <li class="grass4" title="23??? 6??? 7???"></li>
                                <li class="grass4" title="23??? 6??? 14???"></li>
                                <li class="grass4" title="23??? 6??? 21???"></li>
                                <li class="grass4" title="23??? 6??? 28???"></li>
                                <li class="grass4" title="23??? 7??? 5???"></li>
                                <li class="grass4" title="23??? 7??? 12???"></li>
                                <li class="grass4" title="23??? 7??? 19???"></li>
                                <li class="grass4" title="23??? 7??? 26???"></li>
                                <li class="grass4" title="23??? 8??? 2???"></li>
                                <li class="grass4" title="23??? 8??? 9???"></li>
                                <li class="grass4" title="23??? 8??? 16???"></li>
                                <li class="grass4" title="23??? 8??? 23???"></li>
                                <li class="grass4" title="23??? 8??? 30???"></li>
                                <li class="grass4" title="23??? 9??? 6???"></li>
                                <li class="grass4" title="23??? 9??? 13???"></li>
                                <li class="grass4" title="23??? 9??? 20???"></li>
                                <li class="grass4" title="23??? 9??? 27???"></li>
                                <li class="grass4" title="23??? 10??? 4???"></li>
                                <li class="grass4" title="23??? 10??? 11???"></li>
                                <li class="grass4" title="23??? 10??? 18???"></li>
                                <li class="grass4" title="23??? 10??? 25???"></li>
                                <li class="grass4" title="23??? 11??? 1???"></li>
                                <li class="grass4" title="23??? 11??? 8???"></li>
                                <li class="grass4" title="23??? 11??? 15???"></li>
                                <li class="grass4" title="23??? 11??? 22???"></li>
                                <li class="grass4" title="23??? 11??? 29???"></li>
                                <li class="grass4" title="23??? 12??? 6???"></li>
                                <li class="grass4" title="23??? 12??? 13???"></li>
                                <li class="grass4" title="23??? 12??? 20???"></li>
                                <li class="grass4" title="23??? 12??? 27???"></li>
                            </ul>
                            <ul class="grassbox5">
                                <li class="grass5" title="23??? 1??? 5???"></li>
                                <li class="grass5" title="23??? 1??? 12???"></li>
                                <li class="grass5" title="23??? 1??? 19???"></li>
                                <li class="grass5" title="23??? 1??? 26???"></li>
                                <li class="grass5" title="23??? 2??? 2???"></li>
                                <li class="grass5" title="23??? 2??? 9???"></li>
                                <li class="grass5" title="23??? 2??? 16???"></li>
                                <li class="grass5" title="23??? 2??? 23???"></li>
                                <li class="grass5" title="23??? 3??? 2???"></li>
                                <li class="grass5" title="23??? 3??? 9???"></li>
                                <li class="grass5" title="23??? 3??? 16???"></li>
                                <li class="grass5" title="23??? 3??? 23???"></li>
                                <li class="grass5" title="23??? 3??? 30???"></li>
                                <li class="grass5" title="23??? 4??? 6???"></li>
                                <li class="grass5" title="23??? 4??? 13???"></li>
                                <li class="grass5" title="23??? 4??? 20???"></li>
                                <li class="grass5" title="23??? 4??? 27???"></li>
                                <li class="grass5" title="23??? 5??? 4???"></li>
                                <li class="grass5" title="23??? 5??? 11???"></li>
                                <li class="grass5" title="23??? 5??? 18???"></li>
                                <li class="grass5" title="23??? 5??? 25???"></li>
                                <li class="grass5" title="23??? 6??? 1???"></li>
                                <li class="grass5" title="23??? 6??? 8???"></li>
                                <li class="grass5" title="23??? 6??? 15???"></li>
                                <li class="grass5" title="23??? 6??? 22???"></li>
                                <li class="grass5" title="23??? 6??? 29???"></li>
                                <li class="grass5" title="23??? 7??? 6???"></li>
                                <li class="grass5" title="23??? 7??? 13???"></li>
                                <li class="grass5" title="23??? 7??? 20???"></li>
                                <li class="grass5" title="23??? 7??? 27???"></li>
                                <li class="grass5" title="23??? 8??? 3???"></li>
                                <li class="grass5" title="23??? 8??? 10???"></li>
                                <li class="grass5" title="23??? 8??? 17???"></li>
                                <li class="grass5" title="23??? 8??? 24???"></li>
                                <li class="grass5" title="23??? 8??? 31???"></li>
                                <li class="grass5" title="23??? 9??? 7???"></li>
                                <li class="grass5" title="23??? 9??? 14???"></li>
                                <li class="grass5" title="23??? 9??? 21???"></li>
                                <li class="grass5" title="23??? 9??? 28???"></li>
                                <li class="grass5" title="23??? 10??? 5???"></li>
                                <li class="grass5" title="23??? 10??? 12???"></li>
                                <li class="grass5" title="23??? 10??? 19???"></li>
                                <li class="grass5" title="23??? 10??? 26???"></li>
                                <li class="grass5" title="23??? 11??? 2???"></li>
                                <li class="grass5" title="23??? 11??? 9???"></li>
                                <li class="grass5" title="23??? 11??? 16???"></li>
                                <li class="grass5" title="23??? 11??? 23???"></li>
                                <li class="grass5" title="23??? 11??? 30???"></li>
                                <li class="grass5" title="23??? 12??? 7???"></li>
                                <li class="grass5" title="23??? 12??? 14???"></li>
                                <li class="grass5" title="23??? 12??? 21???"></li>
                                <li class="grass5" title="23??? 12??? 28???"></li>
                            </ul>
                            <ul class="grassbox6">
                                <li class="grass6" title="23??? 1??? 6???"></li>
                                <li class="grass6" title="23??? 1??? 13???"></li>
                                <li class="grass6" title="23??? 1??? 20???"></li>
                                <li class="grass6" title="23??? 1??? 27???"></li>
                                <li class="grass6" title="23??? 2??? 3???"></li>
                                <li class="grass6" title="23??? 2??? 10???"></li>
                                <li class="grass6" title="23??? 2??? 17???"></li>
                                <li class="grass6" title="23??? 2??? 24???"></li>
                                <li class="grass6" title="23??? 3??? 3???"></li>
                                <li class="grass6" title="23??? 3??? 10???"></li>
                                <li class="grass6" title="23??? 3??? 17???"></li>
                                <li class="grass6" title="23??? 3??? 24???"></li>
                                <li class="grass6" title="23??? 3??? 31???"></li>
                                <li class="grass6" title="23??? 4??? 7???"></li>
                                <li class="grass6" title="23??? 4??? 14???"></li>
                                <li class="grass6" title="23??? 4??? 21???"></li>
                                <li class="grass6" title="23??? 4??? 29???"></li>
                                <li class="grass6" title="23??? 5??? 5???"></li>
                                <li class="grass6" title="23??? 5??? 12???"></li>
                                <li class="grass6" title="23??? 5??? 19???"></li>
                                <li class="grass6" title="23??? 5??? 26???"></li>
                                <li class="grass6" title="23??? 6??? 2???"></li>
                                <li class="grass6" title="23??? 6??? 9???"></li>
                                <li class="grass6" title="23??? 6??? 16???"></li>
                                <li class="grass6" title="23??? 6??? 23???"></li>
                                <li class="grass6" title="23??? 6??? 30???"></li>
                                <li class="grass6" title="23??? 7??? 7???"></li>
                                <li class="grass6" title="23??? 7??? 14???"></li>
                                <li class="grass6" title="23??? 7??? 21???"></li>
                                <li class="grass6" title="23??? 7??? 28???"></li>
                                <li class="grass6" title="23??? 8??? 4???"></li>
                                <li class="grass6" title="23??? 8??? 11???"></li>
                                <li class="grass6" title="23??? 8??? 18???"></li>
                                <li class="grass6" title="23??? 8??? 25???"></li>
                                <li class="grass6" title="23??? 9??? 1???"></li>
                                <li class="grass6" title="23??? 9??? 8???"></li>
                                <li class="grass6" title="23??? 9??? 15???"></li>
                                <li class="grass6" title="23??? 9??? 22???"></li>
                                <li class="grass6" title="23??? 9??? 29???"></li>
                                <li class="grass6" title="23??? 10??? 6???"></li>
                                <li class="grass6" title="23??? 10??? 13???"></li>
                                <li class="grass6" title="23??? 10??? 20???"></li>
                                <li class="grass6" title="23??? 10??? 27???"></li>
                                <li class="grass6" title="23??? 11??? 3???"></li>
                                <li class="grass6" title="23??? 11??? 10???"></li>
                                <li class="grass6" title="23??? 11??? 17???"></li>
                                <li class="grass6" title="23??? 11??? 24???"></li>
                                <li class="grass6" title="23??? 12??? 1???"></li>
                                <li class="grass6" title="23??? 12??? 8???"></li>
                                <li class="grass6" title="23??? 12??? 15???"></li>
                                <li class="grass6" title="23??? 12??? 22???"></li>
                                <li class="grass6" title="23??? 12??? 29???"></li>
                            </ul>
                            <ul class="grassbox7">
                                <li class="grass7" title="23??? 1??? 7???"></li>
                                <li class="grass7" title="23??? 1??? 14???"></li>
                                <li class="grass7" title="23??? 1??? 21???"></li>
                                <li class="grass7" title="23??? 1??? 28???"></li>
                                <li class="grass7" title="23??? 2??? 4???"></li>
                                <li class="grass7" title="23??? 2??? 11???"></li>
                                <li class="grass7" title="23??? 2??? 18???"></li>
                                <li class="grass7" title="23??? 2??? 25???"></li>
                                <li class="grass7" title="23??? 3??? 4???"></li>
                                <li class="grass7" title="23??? 3??? 11???"></li>
                                <li class="grass7" title="23??? 3??? 18???"></li>
                                <li class="grass7" title="23??? 3??? 25???"></li>
                                <li class="grass7" title="23??? 4??? 1???"></li>
                                <li class="grass7" title="23??? 4??? 8???"></li>
                                <li class="grass7" title="23??? 4??? 15???"></li>
                                <li class="grass7" title="23??? 4??? 22???"></li>
                                <li class="grass7" title="23??? 4??? 29???"></li>
                                <li class="grass7" title="23??? 5??? 6???"></li>
                                <li class="grass7" title="23??? 5??? 13???"></li>
                                <li class="grass7" title="23??? 5??? 20???"></li>
                                <li class="grass7" title="23??? 5??? 27???"></li>
                                <li class="grass7" title="23??? 6??? 3???"></li>
                                <li class="grass7" title="23??? 6??? 10???"></li>
                                <li class="grass7" title="23??? 6??? 17???"></li>
                                <li class="grass7" title="23??? 6??? 24???"></li>
                                <li class="grass7" title="23??? 7??? 1???"></li>
                                <li class="grass7" title="23??? 7??? 8???"></li>
                                <li class="grass7" title="23??? 7??? 15???"></li>
                                <li class="grass7" title="23??? 7??? 22???"></li>
                                <li class="grass7" title="23??? 7??? 29???"></li>
                                <li class="grass7" title="23??? 8??? 5???"></li>
                                <li class="grass7" title="23??? 8??? 12???"></li>
                                <li class="grass7" title="23??? 8??? 19???"></li>
                                <li class="grass7" title="23??? 8??? 26???"></li>
                                <li class="grass7" title="23??? 9??? 2???"></li>
                                <li class="grass7" title="23??? 9??? 9???"></li>
                                <li class="grass7" title="23??? 9??? 16???"></li>
                                <li class="grass7" title="23??? 9??? 23???"></li>
                                <li class="grass7" title="23??? 9??? 30???"></li>
                                <li class="grass7" title="23??? 10??? 7???"></li>
                                <li class="grass7" title="23??? 10??? 14???"></li>
                                <li class="grass7" title="23??? 10??? 21???"></li>
                                <li class="grass7" title="23??? 10??? 28???"></li>
                                <li class="grass7" title="23??? 11??? 4???"></li>
                                <li class="grass7" title="23??? 11??? 11???"></li>
                                <li class="grass7" title="23??? 11??? 18???"></li>
                                <li class="grass7" title="23??? 11??? 25???"></li>
                                <li class="grass7" title="23??? 12??? 2???"></li>
                                <li class="grass7" title="23??? 12??? 9???"></li>
                                <li class="grass7" title="23??? 12??? 16???"></li>
                                <li class="grass7" title="23??? 12??? 23???"></li>
                                <li class="grass7" title="23??? 12??? 30???"></li>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- ???????????? ??????-->
<script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>

<script>
    var edit = function() {
    $('.click2edit').summernote({
        toolbar: [
			    // [groupName, [list of button]]
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    ['color', ['forecolor','color']],
			    ['table', ['table']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']],
			   
			  ],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','?????? ??????','??????','?????????','??????','?????????','?????????'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],

            width:820,
            height: 100,                 // ????????? ??????
            minHeight: 100,             // ?????? ??????
            maxHeight: 100,             // ?????? ??????
            focus: true,                  // ????????? ????????? ???????????? ????????? ??????
            lang: "ko-KR",					// ?????? ??????
            placeholder: '??????????????? ????????? ?????????.'	//placeholder ??????
    
        });
    };

    var save = function() {
        var markup = $('.click2edit').summernote('code');
        $('.click2edit').summernote('destroy');

        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/member/mypage/home",
            data:{
                intro:markup
            },
            success: function(data) {
                if(data==="O"){
                    $('.click2edit').html("");
                    $('.click2edit').html(markup);
                }
            },
            error: function() {   
                alert("????????????");
                    
            }
						
        });

        

        
    };
    
</script>



<script>
    const category = document.querySelector("#my-cate div:nth-child(1) a");
    category.classList.add("main-color");
</script>

</body>
</html>