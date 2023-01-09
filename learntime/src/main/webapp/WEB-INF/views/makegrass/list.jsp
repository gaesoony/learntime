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
        margin-top: 13px;
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

    
        <div class="listtitle">공부인증 게시판</div>
        <div class="writebtn">
            <c:if test="${loginMember == null}">
                <button class="wbtn" onclick="login();">글쓰기✏️</button>
            </c:if>
            <c:if test="${loginMember != null}">
                <button class="wbtn" onclick="location.href='${path}/makegrass/write'">글쓰기✏️</button>
            </c:if>
        </div>
    
    <form action="${path}/makegrass/list" method="post">
        <!-- 왼쪽 사이드바 -->
        <div class="leftsidebox">
            <div class="leftside">

                <!-- 랭킹 타이틀 -->
                <ul class="leftsidetitle">
                    <li class="crown"><img class="crownimg" src="/app/resources/img/qna/crown.png" alt="왕관">공부 인증 랭킹</li>
                </ul>

                <!-- user 랭킹 순위 -->
                <c:forEach items="${makegrassLankList}" var="lank">
                    <div class="userbox">
                        <ul class="leftsidecontent">
                            <li class="user"><img class="profile" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                            <li class="usernick">${lank.NICK}</li>
                            <li class="usernum">${lank.CNT}</li>
                        </ul>
                    </div>
                </c:forEach>
                
            </div> 
        </div>

        <!-- 메인 리스트 부분 -->
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
                                <li class="userprofile2"><img class="profile2" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
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

        <!-- 오른쪽 사이드바 -->
        <div class="rightsidebox">
            <div class="rightsidelist">
                <ul class="rightsidetitle">
                    <li class="righttitle">FOLLOWING LIST</li>
                </ul>

                <!-- 팔로잉 리스트 유저 -->
                <c:if test="${loginMember != null}">
                    <c:forEach items="${followingList}" var="following">
                        <div>
                            <ul class="rightsidecontent">
                                <li class="rightuser"><img class="profile2" src="/app/resources/img/qna/profile.png" alt="프로필사진"></li>
                                <li class="rightnick">${following.FOLLOWING_NO}</li>
                            </ul>
                        </div>
                    </c:forEach>
                </c:if>

                <c:if test="${loginMember == null && followingList == null}">
                    <div class="followingNull">팔로잉한 사람이 없습니다.</div>
                </c:if>
                <!-- <c:if test="${followingList == null}">
                    <div class="followingNull">팔로잉한 사람이 없습니다.</div>
                </c:if> -->
                
                    
            </div>
        </div>

        <div class="bottom"></div>
    </form>
    

    <script>

        //글쓰기 버튼 클릭 시, 로그인창
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