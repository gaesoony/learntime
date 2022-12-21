<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .container{
        padding-top: 120px;
        margin: 0 auto;
    }
    .img{
        text-align: center;
    }
    h2{
        font-size: 40px;
        text-align: center;
        color: #5ECC80;
    }
    h4{
        font-size: 18px;
        text-align: center;
        font-weight: 500;
        color: gray;
        margin-bottom: 45px;
    }
    .homebtn{
        margin: 0 auto;
        display: block;
        width: 15vw;
        padding: 7px;
        font-size: 22px;
        border: 1px solid #5ECC80;
        border-radius: 30px;
        background-color: #5ECC80;
        color: white;
        font-weight: 550;
    }
    .homebtn:hover{
        background-color: white;
        color: #5ECC80;
    }
</style>
</head>
<body>
	
	<div class="container">
        <div class="img"><img width="320vw" height="auto" src="/app/resources/img/error.png" alt="error"></div>

        <h2>Page Not Found</h2>
        <h4>
           	찾을 수 없는 페이지입니다.
           	<br>
           	요청하신 페이지가 사라졌거나, 잘못된 경로를 이용하셨어요:(
        </h4>
        <button type="button" class="homebtn" onclick="location.href='/app/main';" style='cursor:pointer;'>Home</button>
    </div>
    
</body>
</html>