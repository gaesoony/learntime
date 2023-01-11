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
                <div id="intro">소개글</div>
                <div id="intro-btn">
                <c:if test="${userNo.no eq loginMember.no}">
                   <button id="edit" class="btn btn-primary" onclick="edit()" type="button">편집</button>
                    <button id="save" class="btn btn-primary" onclick="save()" type="button">저장</button> 
                </c:if>
                    
                </div>
                <div id="intro-editor">
                     <div class="click2edit">${userNo.intro}</div>
                </div>
                
           </div>

           <div id="badge-area">
                <div id="badge">보유한 뱃지</div>
                <div class="more">
                    <a href="${pageContext.request.contextPath}/member/mypage/badge?no=${userNo.no}">전체보기<span class="material-symbols-outlined">chevron_right</span></a>
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
                <a href="/app/member/mypage/makegrassList?no=${userNo.no}">전체보기<span class="material-symbols-outlined">chevron_right</span></a>
            </div>
            <div id="makegrass">
                <div class="bannerbox">
                    <div class="banner">
                        <ul class="monthbox">
                            <li class="month">1월</li>
                            <li class="month">2월</li>
                            <li class="month">3월</li>
                            <li class="month">4월</li>
                            <li class="month">5월</li>
                            <li class="month">6월</li>
                            <li class="month">7월</li>
                            <li class="month">8월</li>
                            <li class="month">9월</li>
                            <li class="month">10월</li>
                            <li class="month">11월</li>
                            <li class="month">12월</li>
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
            
                        <!-- 잔디 -->
                        <div class="grassbox">
                            <ul class="grassbox1">
                                <li class="grass1" title="23년 1월 1일"></li>
                                <li class="grass1" title="23년 1월 8일"></li>
                                <li class="grass1" title="23년 1월 15일"></li>
                                <li class="grass1" title="23년 1월 22일"></li>
                                <li class="grass1" title="23년 1월 29일"></li>
                                <li class="grass1" title="23년 2월 5일"></li>
                                <li class="grass1" title="23년 2월 12일"></li>
                                <li class="grass1" title="23년 2월 19일"></li>
                                <li class="grass1" title="23년 2월 26일"></li>
                                <li class="grass1" title="23년 3월 5일"></li>
                                <li class="grass1" title="23년 3월 12일"></li>
                                <li class="grass1" title="23년 3월 19일"></li>
                                <li class="grass1" title="23년 3월 26일"></li>
                                <li class="grass1" title="23년 4월 2일"></li>
                                <li class="grass1" title="23년 4월 9일"></li>
                                <li class="grass1" title="23년 4월 16일"></li>
                                <li class="grass1" title="23년 4월 23일"></li>
                                <li class="grass1" title="23년 4월 30일"></li>
                                <li class="grass1" title="23년 5월 7일"></li>
                                <li class="grass1" title="23년 5월 14일"></li>
                                <li class="grass1" title="23년 5월 21일"></li>
                                <li class="grass1" title="23년 5월 28일"></li>
                                <li class="grass1" title="23년 6월 4일"></li>
                                <li class="grass1" title="23년 6월 11일"></li>
                                <li class="grass1" title="23년 6월 18일"></li>
                                <li class="grass1" title="23년 6월 25일"></li>
                                <li class="grass1" title="23년 7월 2일"></li>
                                <li class="grass1" title="23년 7월 9일"></li>
                                <li class="grass1" title="23년 7월 16일"></li>
                                <li class="grass1" title="23년 7월 23일"></li>
                                <li class="grass1" title="23년 7월 30일"></li>
                                <li class="grass1" title="23년 8월 6일"></li>
                                <li class="grass1" title="23년 8월 13일"></li>
                                <li class="grass1" title="23년 8월 20일"></li>
                                <li class="grass1" title="23년 8월 27일"></li>
                                <li class="grass1" title="23년 9월 3일"></li>
                                <li class="grass1" title="23년 9월 10일"></li>
                                <li class="grass1" title="23년 9월 17일"></li>
                                <li class="grass1" title="23년 9월 24일"></li>
                                <li class="grass1" title="23년 10월 1일"></li>
                                <li class="grass1" title="23년 10월 8일"></li>
                                <li class="grass1" title="23년 10월 15일"></li>
                                <li class="grass1" title="23년 10월 22일"></li>
                                <li class="grass1" title="23년 10월 29일"></li>
                                <li class="grass1" title="23년 11월 5일"></li>
                                <li class="grass1" title="23년 11월 12일"></li>
                                <li class="grass1" title="23년 11월 19일"></li>
                                <li class="grass1" title="23년 11월 26일"></li>
                                <li class="grass1" title="23년 12월 3일"></li>
                                <li class="grass1" title="23년 12월 10일"></li>
                                <li class="grass1" title="23년 12월 17일"></li>
                                <li class="grass1" title="23년 12월 24일"></li>
                                <li class="grass1" title="23년 12월 31일"></li>
                            </ul>
                            <ul class="grassbox2">
                                <li class="grass2" title="23년 1월 2일"></li>
                                <li class="grass2" title="23년 1월 9일"></li>
                                <li class="grass2" title="23년 1월 16일"></li>
                                <li class="grass2" title="23년 1월 23일"></li>
                                <li class="grass2" title="23년 1월 30일"></li>
                                <li class="grass2" title="23년 2월 6일"></li>
                                <li class="grass2" title="23년 2월 13일"></li>
                                <li class="grass2" title="23년 2월 20일"></li>
                                <li class="grass2" title="23년 2월 27일"></li>
                                <li class="grass2" title="23년 3월 6일"></li>
                                <li class="grass2" title="23년 3월 13일"></li>
                                <li class="grass2" title="23년 3월 20일"></li>
                                <li class="grass2" title="23년 3월 27일"></li>
                                <li class="grass2" title="23년 4월 3일"></li>
                                <li class="grass2" title="23년 4월 10일"></li>
                                <li class="grass2" title="23년 4월 17일"></li>
                                <li class="grass2" title="23년 4월 24일"></li>
                                <li class="grass2" title="23년 5월 1일"></li>
                                <li class="grass2" title="23년 5월 8일"></li>
                                <li class="grass2" title="23년 5월 15일"></li>
                                <li class="grass2" title="23년 5월 22일"></li>
                                <li class="grass2" title="23년 5월 29일"></li>
                                <li class="grass2" title="23년 6월 5일"></li>
                                <li class="grass2" title="23년 6월 12일"></li>
                                <li class="grass2" title="23년 6월 19일"></li>
                                <li class="grass2" title="23년 6월 26일"></li>
                                <li class="grass2" title="23년 7월 3일"></li>
                                <li class="grass2" title="23년 7월 10일"></li>
                                <li class="grass2" title="23년 7월 17일"></li>
                                <li class="grass2" title="23년 7월 24일"></li>
                                <li class="grass2" title="23년 7월 31일"></li>
                                <li class="grass2" title="23년 8월 7일"></li>
                                <li class="grass2" title="23년 8월 14일"></li>
                                <li class="grass2" title="23년 8월 21일"></li>
                                <li class="grass2" title="23년 8월 28일"></li>
                                <li class="grass2" title="23년 9월 4일"></li>
                                <li class="grass2" title="23년 9월 11일"></li>
                                <li class="grass2" title="23년 9월 18일"></li>
                                <li class="grass2" title="23년 9월 25일"></li>
                                <li class="grass2" title="23년 10월 2일"></li>
                                <li class="grass2" title="23년 10월 9일"></li>
                                <li class="grass2" title="23년 10월 16일"></li>
                                <li class="grass2" title="23년 10월 23일"></li>
                                <li class="grass2" title="23년 10월 30일"></li>
                                <li class="grass2" title="23년 11월 6일"></li>
                                <li class="grass2" title="23년 11월 13일"></li>
                                <li class="grass2" title="23년 11월 20일"></li>
                                <li class="grass2" title="23년 11월 27일"></li>
                                <li class="grass2" title="23년 12월 4일"></li>
                                <li class="grass2" title="23년 12월 11일"></li>
                                <li class="grass2" title="23년 12월 18일"></li>
                                <li class="grass2" title="23년 12월 25일"></li>
                            </ul>
                            <ul class="grassbox3">
                                <li class="grass3" title="23년 1월 3일"></li>
                                <li class="grass3" title="23년 1월 10일"></li>
                                <li class="grass3" title="23년 1월 17일"></li>
                                <li class="grass3" title="23년 1월 24일"></li>
                                <li class="grass3" title="23년 1월 31일"></li>
                                <li class="grass3" title="23년 2월 7일"></li>
                                <li class="grass3" title="23년 2월 14일"></li>
                                <li class="grass3" title="23년 2월 21일"></li>
                                <li class="grass3" title="23년 2월 28일"></li>
                                <li class="grass3" title="23년 3월 7일"></li>
                                <li class="grass3" title="23년 3월 14일"></li>
                                <li class="grass3" title="23년 3월 21일"></li>
                                <li class="grass3" title="23년 3월 28일"></li>
                                <li class="grass3" title="23년 4월 4일"></li>
                                <li class="grass3" title="23년 4월 11일"></li>
                                <li class="grass3" title="23년 4월 18일"></li>
                                <li class="grass3" title="23년 4월 25일"></li>
                                <li class="grass3" title="23년 5월 2일"></li>
                                <li class="grass3" title="23년 5월 9일"></li>
                                <li class="grass3" title="23년 5월 16일"></li>
                                <li class="grass3" title="23년 5월 23일"></li>
                                <li class="grass3" title="23년 5월 30일"></li>
                                <li class="grass3" title="23년 6월 6일"></li>
                                <li class="grass3" title="23년 6월 13일"></li>
                                <li class="grass3" title="23년 6월 20일"></li>
                                <li class="grass3" title="23년 6월 27일"></li>
                                <li class="grass3" title="23년 7월 4일"></li>
                                <li class="grass3" title="23년 7월 11일"></li>
                                <li class="grass3" title="23년 7월 18일"></li>
                                <li class="grass3" title="23년 7월 25일"></li>
                                <li class="grass3" title="23년 8월 1일"></li>
                                <li class="grass3" title="23년 8월 8일"></li>
                                <li class="grass3" title="23년 8월 15일"></li>
                                <li class="grass3" title="23년 8월 22일"></li>
                                <li class="grass3" title="23년 8월 29일"></li>
                                <li class="grass3" title="23년 9월 5일"></li>
                                <li class="grass3" title="23년 9월 12일"></li>
                                <li class="grass3" title="23년 9월 19일"></li>
                                <li class="grass3" title="23년 9월 26일"></li>
                                <li class="grass3" title="23년 10월 3일"></li>
                                <li class="grass3" title="23년 10월 10일"></li>
                                <li class="grass3" title="23년 10월 17일"></li>
                                <li class="grass3" title="23년 10월 24일"></li>
                                <li class="grass3" title="23년 10월 31일"></li>
                                <li class="grass3" title="23년 11월 7일"></li>
                                <li class="grass3" title="23년 11월 14일"></li>
                                <li class="grass3" title="23년 11월 21일"></li>
                                <li class="grass3" title="23년 11월 28일"></li>
                                <li class="grass3" title="23년 12월 5일"></li>
                                <li class="grass3" title="23년 12월 12일"></li>
                                <li class="grass3" title="23년 12월 19일"></li>
                                <li class="grass3" title="23년 12월 26일"></li>
                            </ul>
                            <ul class="grassbox4">
                                <li class="grass4" title="23년 1월 4일"></li>
                                <li class="grass4" title="23년 1월 11일"></li>
                                <li class="grass4" title="23년 1월 18일"></li>
                                <li class="grass4" title="23년 1월 25일"></li>
                                <li class="grass4" title="23년 2월 1일"></li>
                                <li class="grass4" title="23년 2월 8일"></li>
                                <li class="grass4" title="23년 2월 15일"></li>
                                <li class="grass4" title="23년 2월 22일"></li>
                                <li class="grass4" title="23년 3월 1일"></li>
                                <li class="grass4" title="23년 3월 8일"></li>
                                <li class="grass4" title="23년 3월 15일"></li>
                                <li class="grass4" title="23년 3월 22일"></li>
                                <li class="grass4" title="23년 3월 29일"></li>
                                <li class="grass4" title="23년 4월 5일"></li>
                                <li class="grass4" title="23년 4월 12일"></li>
                                <li class="grass4" title="23년 4월 19일"></li>
                                <li class="grass4" title="23년 4월 26일"></li>
                                <li class="grass4" title="23년 5월 3일"></li>
                                <li class="grass4" title="23년 5월 10일"></li>
                                <li class="grass4" title="23년 5월 17일"></li>
                                <li class="grass4" title="23년 5월 24일"></li>
                                <li class="grass4" title="23년 5월 31일"></li>
                                <li class="grass4" title="23년 6월 7일"></li>
                                <li class="grass4" title="23년 6월 14일"></li>
                                <li class="grass4" title="23년 6월 21일"></li>
                                <li class="grass4" title="23년 6월 28일"></li>
                                <li class="grass4" title="23년 7월 5일"></li>
                                <li class="grass4" title="23년 7월 12일"></li>
                                <li class="grass4" title="23년 7월 19일"></li>
                                <li class="grass4" title="23년 7월 26일"></li>
                                <li class="grass4" title="23년 8월 2일"></li>
                                <li class="grass4" title="23년 8월 9일"></li>
                                <li class="grass4" title="23년 8월 16일"></li>
                                <li class="grass4" title="23년 8월 23일"></li>
                                <li class="grass4" title="23년 8월 30일"></li>
                                <li class="grass4" title="23년 9월 6일"></li>
                                <li class="grass4" title="23년 9월 13일"></li>
                                <li class="grass4" title="23년 9월 20일"></li>
                                <li class="grass4" title="23년 9월 27일"></li>
                                <li class="grass4" title="23년 10월 4일"></li>
                                <li class="grass4" title="23년 10월 11일"></li>
                                <li class="grass4" title="23년 10월 18일"></li>
                                <li class="grass4" title="23년 10월 25일"></li>
                                <li class="grass4" title="23년 11월 1일"></li>
                                <li class="grass4" title="23년 11월 8일"></li>
                                <li class="grass4" title="23년 11월 15일"></li>
                                <li class="grass4" title="23년 11월 22일"></li>
                                <li class="grass4" title="23년 11월 29일"></li>
                                <li class="grass4" title="23년 12월 6일"></li>
                                <li class="grass4" title="23년 12월 13일"></li>
                                <li class="grass4" title="23년 12월 20일"></li>
                                <li class="grass4" title="23년 12월 27일"></li>
                            </ul>
                            <ul class="grassbox5">
                                <li class="grass5" title="23년 1월 5일"></li>
                                <li class="grass5" title="23년 1월 12일"></li>
                                <li class="grass5" title="23년 1월 19일"></li>
                                <li class="grass5" title="23년 1월 26일"></li>
                                <li class="grass5" title="23년 2월 2일"></li>
                                <li class="grass5" title="23년 2월 9일"></li>
                                <li class="grass5" title="23년 2월 16일"></li>
                                <li class="grass5" title="23년 2월 23일"></li>
                                <li class="grass5" title="23년 3월 2일"></li>
                                <li class="grass5" title="23년 3월 9일"></li>
                                <li class="grass5" title="23년 3월 16일"></li>
                                <li class="grass5" title="23년 3월 23일"></li>
                                <li class="grass5" title="23년 3월 30일"></li>
                                <li class="grass5" title="23년 4월 6일"></li>
                                <li class="grass5" title="23년 4월 13일"></li>
                                <li class="grass5" title="23년 4월 20일"></li>
                                <li class="grass5" title="23년 4월 27일"></li>
                                <li class="grass5" title="23년 5월 4일"></li>
                                <li class="grass5" title="23년 5월 11일"></li>
                                <li class="grass5" title="23년 5월 18일"></li>
                                <li class="grass5" title="23년 5월 25일"></li>
                                <li class="grass5" title="23년 6월 1일"></li>
                                <li class="grass5" title="23년 6월 8일"></li>
                                <li class="grass5" title="23년 6월 15일"></li>
                                <li class="grass5" title="23년 6월 22일"></li>
                                <li class="grass5" title="23년 6월 29일"></li>
                                <li class="grass5" title="23년 7월 6일"></li>
                                <li class="grass5" title="23년 7월 13일"></li>
                                <li class="grass5" title="23년 7월 20일"></li>
                                <li class="grass5" title="23년 7월 27일"></li>
                                <li class="grass5" title="23년 8월 3일"></li>
                                <li class="grass5" title="23년 8월 10일"></li>
                                <li class="grass5" title="23년 8월 17일"></li>
                                <li class="grass5" title="23년 8월 24일"></li>
                                <li class="grass5" title="23년 8월 31일"></li>
                                <li class="grass5" title="23년 9월 7일"></li>
                                <li class="grass5" title="23년 9월 14일"></li>
                                <li class="grass5" title="23년 9월 21일"></li>
                                <li class="grass5" title="23년 9월 28일"></li>
                                <li class="grass5" title="23년 10월 5일"></li>
                                <li class="grass5" title="23년 10월 12일"></li>
                                <li class="grass5" title="23년 10월 19일"></li>
                                <li class="grass5" title="23년 10월 26일"></li>
                                <li class="grass5" title="23년 11월 2일"></li>
                                <li class="grass5" title="23년 11월 9일"></li>
                                <li class="grass5" title="23년 11월 16일"></li>
                                <li class="grass5" title="23년 11월 23일"></li>
                                <li class="grass5" title="23년 11월 30일"></li>
                                <li class="grass5" title="23년 12월 7일"></li>
                                <li class="grass5" title="23년 12월 14일"></li>
                                <li class="grass5" title="23년 12월 21일"></li>
                                <li class="grass5" title="23년 12월 28일"></li>
                            </ul>
                            <ul class="grassbox6">
                                <li class="grass6" title="23년 1월 6일"></li>
                                <li class="grass6" title="23년 1월 13일"></li>
                                <li class="grass6" title="23년 1월 20일"></li>
                                <li class="grass6" title="23년 1월 27일"></li>
                                <li class="grass6" title="23년 2월 3일"></li>
                                <li class="grass6" title="23년 2월 10일"></li>
                                <li class="grass6" title="23년 2월 17일"></li>
                                <li class="grass6" title="23년 2월 24일"></li>
                                <li class="grass6" title="23년 3월 3일"></li>
                                <li class="grass6" title="23년 3월 10일"></li>
                                <li class="grass6" title="23년 3월 17일"></li>
                                <li class="grass6" title="23년 3월 24일"></li>
                                <li class="grass6" title="23년 3월 31일"></li>
                                <li class="grass6" title="23년 4월 7일"></li>
                                <li class="grass6" title="23년 4월 14일"></li>
                                <li class="grass6" title="23년 4월 21일"></li>
                                <li class="grass6" title="23년 4월 29일"></li>
                                <li class="grass6" title="23년 5월 5일"></li>
                                <li class="grass6" title="23년 5월 12일"></li>
                                <li class="grass6" title="23년 5월 19일"></li>
                                <li class="grass6" title="23년 5월 26일"></li>
                                <li class="grass6" title="23년 6월 2일"></li>
                                <li class="grass6" title="23년 6월 9일"></li>
                                <li class="grass6" title="23년 6월 16일"></li>
                                <li class="grass6" title="23년 6월 23일"></li>
                                <li class="grass6" title="23년 6월 30일"></li>
                                <li class="grass6" title="23년 7월 7일"></li>
                                <li class="grass6" title="23년 7월 14일"></li>
                                <li class="grass6" title="23년 7월 21일"></li>
                                <li class="grass6" title="23년 7월 28일"></li>
                                <li class="grass6" title="23년 8월 4일"></li>
                                <li class="grass6" title="23년 8월 11일"></li>
                                <li class="grass6" title="23년 8월 18일"></li>
                                <li class="grass6" title="23년 8월 25일"></li>
                                <li class="grass6" title="23년 9월 1일"></li>
                                <li class="grass6" title="23년 9월 8일"></li>
                                <li class="grass6" title="23년 9월 15일"></li>
                                <li class="grass6" title="23년 9월 22일"></li>
                                <li class="grass6" title="23년 9월 29일"></li>
                                <li class="grass6" title="23년 10월 6일"></li>
                                <li class="grass6" title="23년 10월 13일"></li>
                                <li class="grass6" title="23년 10월 20일"></li>
                                <li class="grass6" title="23년 10월 27일"></li>
                                <li class="grass6" title="23년 11월 3일"></li>
                                <li class="grass6" title="23년 11월 10일"></li>
                                <li class="grass6" title="23년 11월 17일"></li>
                                <li class="grass6" title="23년 11월 24일"></li>
                                <li class="grass6" title="23년 12월 1일"></li>
                                <li class="grass6" title="23년 12월 8일"></li>
                                <li class="grass6" title="23년 12월 15일"></li>
                                <li class="grass6" title="23년 12월 22일"></li>
                                <li class="grass6" title="23년 12월 29일"></li>
                            </ul>
                            <ul class="grassbox7">
                                <li class="grass7" title="23년 1월 7일"></li>
                                <li class="grass7" title="23년 1월 14일"></li>
                                <li class="grass7" title="23년 1월 21일"></li>
                                <li class="grass7" title="23년 1월 28일"></li>
                                <li class="grass7" title="23년 2월 4일"></li>
                                <li class="grass7" title="23년 2월 11일"></li>
                                <li class="grass7" title="23년 2월 18일"></li>
                                <li class="grass7" title="23년 2월 25일"></li>
                                <li class="grass7" title="23년 3월 4일"></li>
                                <li class="grass7" title="23년 3월 11일"></li>
                                <li class="grass7" title="23년 3월 18일"></li>
                                <li class="grass7" title="23년 3월 25일"></li>
                                <li class="grass7" title="23년 4월 1일"></li>
                                <li class="grass7" title="23년 4월 8일"></li>
                                <li class="grass7" title="23년 4월 15일"></li>
                                <li class="grass7" title="23년 4월 22일"></li>
                                <li class="grass7" title="23년 4월 29일"></li>
                                <li class="grass7" title="23년 5월 6일"></li>
                                <li class="grass7" title="23년 5월 13일"></li>
                                <li class="grass7" title="23년 5월 20일"></li>
                                <li class="grass7" title="23년 5월 27일"></li>
                                <li class="grass7" title="23년 6월 3일"></li>
                                <li class="grass7" title="23년 6월 10일"></li>
                                <li class="grass7" title="23년 6월 17일"></li>
                                <li class="grass7" title="23년 6월 24일"></li>
                                <li class="grass7" title="23년 7월 1일"></li>
                                <li class="grass7" title="23년 7월 8일"></li>
                                <li class="grass7" title="23년 7월 15일"></li>
                                <li class="grass7" title="23년 7월 22일"></li>
                                <li class="grass7" title="23년 7월 29일"></li>
                                <li class="grass7" title="23년 8월 5일"></li>
                                <li class="grass7" title="23년 8월 12일"></li>
                                <li class="grass7" title="23년 8월 19일"></li>
                                <li class="grass7" title="23년 8월 26일"></li>
                                <li class="grass7" title="23년 9월 2일"></li>
                                <li class="grass7" title="23년 9월 9일"></li>
                                <li class="grass7" title="23년 9월 16일"></li>
                                <li class="grass7" title="23년 9월 23일"></li>
                                <li class="grass7" title="23년 9월 30일"></li>
                                <li class="grass7" title="23년 10월 7일"></li>
                                <li class="grass7" title="23년 10월 14일"></li>
                                <li class="grass7" title="23년 10월 21일"></li>
                                <li class="grass7" title="23년 10월 28일"></li>
                                <li class="grass7" title="23년 11월 4일"></li>
                                <li class="grass7" title="23년 11월 11일"></li>
                                <li class="grass7" title="23년 11월 18일"></li>
                                <li class="grass7" title="23년 11월 25일"></li>
                                <li class="grass7" title="23년 12월 2일"></li>
                                <li class="grass7" title="23년 12월 9일"></li>
                                <li class="grass7" title="23년 12월 16일"></li>
                                <li class="grass7" title="23년 12월 23일"></li>
                                <li class="grass7" title="23년 12월 30일"></li>
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

<!-- 서머노트 로딩-->
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
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],

            width:820,
            height: 100,                 // 에디터 높이
            minHeight: 100,             // 최소 높이
            maxHeight: 100,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",					// 한글 설정
            placeholder: '자기소개를 작성해 보세요.'	//placeholder 설정
    
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
                alert("수정실패");
                    
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