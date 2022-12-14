<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .bannerbox{
        height: 42vh;
        background-color: #5ECC80;
        position: relative;
    }
    .banner{
        position: absolute;
        width: 1200px;
        height: 35vh;
        background-color: white;
        border-radius: 20px;
        margin-left: 165px;
        margin-top: 25px;
    }
    .monthbox{
        width: 1100px;
        margin-top: 10px;
        display: flex;
        margin-left: 105px;
    }
    .month{
        width: 1100px;
        margin-right: 60px;
        font-size: 15px;
    }
    .daybox{
        width: 3vw;
        margin-left: 20px;
        margin-top: 10px;
        float: left;
    }
    .day{
        margin-bottom: 18px;
        font-size: 12px;
    }
    .grassbox1{
        display: flex;
        margin-top: 10px;
        margin-right: 10px;
    }
    .grass1{
        width: 18px;
        height: 15px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox2{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass2{
        width: 18px;
        height: 15px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox3{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass3{
        width: 18px;
        height: 15px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox4{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass4{
        width: 18px;
        height: 15px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox5{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass5{
        width: 18px;
        height: 15px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox6{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass6{
        width: 18px;
        height: 15px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .grassbox7{
        display: flex;
        margin-top: 15px;
        margin-right: 10px;
    }
    .grass7{
        width: 18px;
        height: 15px;
        background-color: #D9D9D9;
        margin-right: 5px;
    }
    .listtitle{
        width: 810px;
        margin: 0 auto;
        font-size: 22px;
        margin-top: 70px;
    }
    .userbox{
        margin-bottom: 5px;
    }
    .leftside{
        width: 230px;
        height: 370px;
        border-radius: 10px;
        border: 1px solid #9D9D9D;
        background-color: white;
        margin-left: 55px;
    }
    .leftsidebox{
        float: left;
    }
    .leftsidetitle{
        margin-left: 15px;
        margin-top: 15px;
        margin-bottom: 17px;
        font-size: 16px;
    }
    .crown{
        font-weight: 550;
    }
    .crownimg{
        width: 28px;
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
        width: 2vw;
        font-size: 16px;
        margin-right: 5px;
    }
    .usernick{
        width: 80px;
        margin-top: 20px;
        margin-right: 50px;
        float: left;
        font-size: 16px;
    }
    .usernum{
        width: 2vw;
        margin-left: 190px;
        padding-top: 20px;
    }
    .mainbox{
        height: 100%;
        padding-left: 50px;
        padding-right: 50px;
        margin-top: 30px;
        display: grid;
        grid-template-columns: 280px 280px 280px;
    }
    .mainlist{
        width: 253px;
        height: 350px;
        border: 2px solid #5ECC80;
        border-radius: 20px;
        background-color: white;
        float: left;
        margin-right: 10px;
        margin-bottom: 25px;
        margin-left: 15px;
    }
    .title-type{
        width: 220px;
        height: 90px;
        margin: 0 auto;
        margin-top: 15px;
        font-size: 15px;
        font-weight: 550;
    }
    .clockimg{
        margin-left: 15px;
        margin-top: 10px;
        font-size: 15px;
    }
    .bookimg{
        font-size: 15px;
        margin-left: 17px;
        margin-top: 10px;
    }
    .content{
        width: 14.5vw;
        height: 120px;
        font-size: 14px;
        margin-left: 15px;
        margin-top: 10px;
        line-height: 23px;
        display: -webkit-box;
        word-wrap: break-word;
        -webkit-line-clamp: 5;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;

    }
    .contentline{
        width: 90%;
        margin: 0 auto;
        border-top: 2px solid #5ECC80;
    }
    .infoetc{
        display: flex;
    }
    .userprofile2{
        margin-left: 17px;
        margin-top: 10px;
    }
    .profile2{
        width: 20px;
    }
    .contentnick{
        width: 110px;
        margin-left: 5px;
        margin-top: 10px;
        font-size: 13px;
    }
    .hit{
        margin-left: 65px;
        display: flex;
        width: 60px;
        height: 30px;
        margin-top: 15px;
        font-size: 13px;
    }
    .comment{
        width: 55px;
        height: 30px;
        margin-top: 15px;
        font-size: 13px;
    }
    .contentDate{
        margin-top: -10px;
        margin-left: 20px;
        color: #868686;
        font-size: 13px;


    }
    .rightsidebox{
        width: 200px;
        height: 280px;
        margin-left: 1230px;
        /* margin-top: -380px; */
        
    }
    .rightsidelist{
        border: 1px solid #9D9D9D;
        border-radius: 10px;
        padding-bottom: 20px;

    }
    .rightsidetitle{
        font-size: 15px;
        margin-top: 20px;
        padding-left: 20px;
        font-weight: 550;
    }
    .rightsidecontent{
        margin-top: 20px;
        padding-left: 20px;
        display: flex;
    }
    .rightnick{
        margin-left: 5px;
    }
    .writebtn{
        width: 6vw;
        height: 3vh;
        margin-left: 1080px;
        margin-top: 40px;
    }
    .wbtn{
        background-color: white;
        color: #5ECC80;
        font-size: 16px;
        font-weight: 550;
        border: none;
        border-bottom: 1px solid #5ECC80;
        cursor: pointer;
    }

    .bottom{
        width: 100%;
        height: 30vh;
    }
    .followingNull{
        font-size: 14px;
        margin-top: 20px;
        margin-left: 20px;
        color: #9D9D9D;
    }
</style>
</head>
<body>

    <%@ include file="/WEB-INF/views/common/header.jsp" %>
	
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

    
        <div class="listtitle">???????????? ?????????</div>
        <div class="writebtn">
            <c:if test="${loginMember == null}">
                <button class="wbtn" onclick="login();">???????????????</button>
            </c:if>
            <c:if test="${loginMember != null}">
                <button class="wbtn" onclick="location.href='${path}/makegrass/write'">???????????????</button>
            </c:if>
        </div>
    
    <form action="${path}/makegrass/list" method="post">
        <!-- ?????? ???????????? -->
        <div class="leftsidebox">
            <div class="leftside">

                <!-- ?????? ????????? -->
                <ul class="leftsidetitle">
                    <li class="crown"><img class="crownimg" src="/app/resources/img/qna/crown.png" alt="??????">?????? ?????? ??????</li>
                </ul>

                <!-- user ?????? ?????? -->
                <c:forEach items="${makegrassLankList}" var="lank">
                    <div class="userbox">
                        <ul class="leftsidecontent">
                            <li class="user"><img src="/app/${loginMember.imgName}" class="profile" alt="" onerror="this.src='/app/resources/img/profile_default.png'"></li>
                            <li class="usernick">${lank.NICK}</li>
                            <li class="usernum">${lank.CNT}</li>
                        </ul>
                    </div>
                </c:forEach>
                
            </div> 
        </div>

        <!-- ?????? ????????? ?????? -->
        <div class="mainbox">

            <c:forEach items="${makegrassList}" var="map">
                <a href="${path}/makegrass/detail?no=${map.NO}">
                    <div class="mainlist">
                        <div class="title-type"><i class="fa-solid fa-pencil"></i> Title <br><br>${map.TITLE}</div>
                        <div class="clockimg"><i class="fa-regular fa-clock"></i> ${map.LEARN_TIME}</div>
                        <div class="bookimg"><i class="fa-solid fa-book"></i></div>
                        <div class="content">
                            ${map.CONTENT}
                        </div>
                        <div class="contentline"></div>
                        <div class="info">
                            <ul class="infoetc">
                                <li class="userprofile2"><img src="/app/${loginMember.imgName}" class="profile2" alt="" onerror="this.src='/app/resources/img/profile_default.png'"></li>
                                <li class="contentnick">${map.WRITER}</li>
                                <li class="hit"><i class="fa-regular fa-eye"></i>&nbsp ${map.HIT}</li>
                                <li class="comment"><i class="fa-regular fa-comment"></i>&nbsp ${map.REPLY_CNT}</li>
                            </ul>
                            <ul>
                                <li class="contentDate">${map.ENROLL_DATE}</li>
                            </ul>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>

        <!-- ????????? ???????????? -->
        <div class="rightsidebox">
            <div class="rightsidelist">
                <ul class="rightsidetitle">
                    <li class="righttitle">FOLLOWING LIST</li>
                </ul>

                <!-- ????????? ????????? ?????? -->
                <c:if test="${loginMember != null}">
                    <div>
                        <c:forEach items="${followingList}" var="follow">
                            <ul class="rightsidecontent">
                                <li class="rightuser"><img src="/app/${loginMember.imgName}" class="profile2" alt="" onerror="this.src='/app/resources/img/profile_default.png'"></li>
                                <li class="rightnick">${follow.FOLLOWING_NO}</li>
                            </ul>
                        </c:forEach>
                    </div>
                </c:if>

                <c:if test="${loginMember == null && followingList == null}">
                    <div class="followingNull">???????????? ????????? ????????????.</div>
                </c:if>
                <!-- <c:if test="${followingList == null}">
                    <div class="followingNull">???????????? ????????? ????????????.</div>
                </c:if> -->
                
                    
            </div>
        </div>

        <div class="bottom"></div>
    </form>
    

    <script>

        //????????? ?????? ?????? ???, ????????????
        function login() {
        $(".blackBG").addClass("show");
        }

        const searchTag = document.querySelector(".study-search-tag");

        searchTag.addEventListener("keydown", function () {
        if (window.event.keyCode == 13) {
            makeTag(event);
        }

        if (window.event.keyCode == 8) {
            deleteBeforeTag();
        }
        });


        function makeTag(event) {
        const value = event.target.value;
        const str =
            '<div class="relative cursor tag-div" onclick="deleteTag(event)">' +
            '<input onclick="deleteTag2(event)" name="tag" type="text" readonly style="width:' +
            (value.length + 2) * 9 +
            "px" +
            ';" value="' +
            value +
            '" class="tag-btn cursor" /> ' +
            '<i class="fa-solid fa-xmark" onclick="deleteTag2(event)"></i>' +
            "</div>";

        const tagList = document.querySelector(".tag-list");
        tagList.innerHTML += str;

        event.target.value = "";
        }

        function resetTag() {
        const tagList = document.querySelector(".tag-list");
        tagList.textContent = "";
        form.submit();
        }

        function deleteTag(e) {
        e.target.remove();
        form.submit();
        }

        function deleteTag2(e) {
        e.target.parentNode.remove();
        form.submit();
        }

        function deleteBeforeTag() {
        const lastTag = document.querySelector(".tag-list div:last-child");
        lastTag.remove();
        form.submit();
        }
    </script>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>