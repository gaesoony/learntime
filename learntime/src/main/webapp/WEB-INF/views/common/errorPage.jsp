<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .container{
        margin: 200px;
    }
    .img{
        text-align: center;
    }
    h2{
        font-size: 2rem;
        text-align: center;
        color: #5ECC80;
    }
    h4{
        text-align: center;
        font-weight: 500;
        color: gray;
    }
    .homebtn{
        margin: 0 auto;
        padding: 8px;
        width: 10vw;
        text-align: center;
        border: 1px solid gray;
        border-radius: 30px;
        background-color: #5ECC80;
        border-color: #5ECC80;
    }
    .homebtn:hover{
        background-color: white;
    }
    .home{
        margin: 0 auto;
        text-decoration: none;
        color: white;
        font-weight: 600;
    }
    .home:hover{
        color: #5ECC80;
    }
</style>
</head>
<body>
	
	<div class="container">

        <div class="img"><img width="250wh" height="auto" src="/app/resources/img/error.png" alt="error"></div>

        <h2>Page Not Found</h2>
        <h4>
           	찾을 수 없는 페이지입니다.
           	<br>
           	요청하신 페이지가 사라졌거나, 잘못된 경로를 이용하셨어요:(
        </h4>
        <div class="homebtn"><a class="home" href="#none">Home</a></div>
        
    </div>
    
</body>
</html>