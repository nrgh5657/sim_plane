<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!--프레임워크 태그라이브러리 선언 "sec"-->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>simplane</title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <title>Document</title>
    <style>

        body{margin: 0; padding: 0; font-family: "맑은 고딕";}
        ul,ol,li {list-style: none; margin: 0; padding: 0;}

        header{width: 1300px; height: 150px; margin: 0 auto; }
        #logo {float: left; width: 130px; height: 70px; margin: 30px 0 0 10px;}
        #logo > img {width: 140px; height: 90px; margin: 30px 0 0 100px;}

        #login {width:250px; height:30px; float:right;  margin:20px 0 0 0px;}
        #login ul {font-size:12px; color:#666;}
        #login li {float:left; margin:0 5px; }
        #login li a {text-decoration:none; color:#666;}

        input{align-items: center; width: 300px; padding: 10px; font-size: 16px; border: 1px solid #ccc; border-radius: 5px;}
        button {padding: 5px 10px; font-size: 16px; cursor: pointer;}

        .seach{display: flex; align-items: center; width: 400px;
            border: 2px solid lightslategray; border-radius: 20px; padding: 10px 15px 0 0;}

        nav{float:right; width: 740px; height: 30px; margin: 70px 0 0 0; text-align: right}
        nav ul{font-family: "Arial"; font-weight: bold; display: inline-block;}
        nav ul li{float: left; padding: 0 20px; display: inline-block;}
        nav ul li a{text-decoration: none; color: #333;}
        nav ul li a:hover{color: green;}

        #slider{width: 1100px; height: 450px; margin: 0 auto;}
        #slider img{width: 1100px; height: 450px; margin: 0 auto;}
        h4{font-size: 20px; text-align:center; margin: 50px 70px 0 0;}

        section{width: 1100px; height: 280px; margin: 0 auto;}
        article{width: 255px; height: 145px; float: left; margin: 30px 10px;}
        article h3{margin: 0; font-size: 16px; height: 40px; width: 100%;}
        article > a > img{width: 200px; height: 150px}
        article h4{margin: 0; font-size: 14px; height: 30px;}
        article p{font-family: "돋움"; font-size: 12px; color: #666;}


        article .icon img{width: 70px; height: 50px; float: left;margin: 30px 0 0 5px;}
        article .icon span{width: 200%; text-align: left; float: left; font-size: 12px; margin: 10px 0 0 0;}
        article .icon h4{margin: 68px; font-size: 14px; height: 35px;}

        footer{width: 1100px; height: 100px; margin: 0 auto;}

        footer span{font-family: "돋움"; font-size: 12px; color: #666; margin: 20px 100px 0 0; float: left;}

        .board{margin : 0 auto}

        .row{width: 1100px; margin: 0 auto;}
    </style>
</head>
<body>
<header>

    <div id="logo"></div>

    <div id="login">

        <ul>
            <!--로그인 하면 로그인, 회원가입 버튼 사라지고 로그아웃 버튼이 나오게-->
            <sec:authorize access="!isAuthenticated()">
                <li><a href="<c:url value='/login' />">로그인</a></li>
                <li>|</li>
                <li><a href="<c:url value='/signup' />">회원가입</a></li>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                <li>
                    <a href="#" onclick="document.getElementById('logoutForm').submit(); return false;">로그아웃</a>

                    <form id="logoutForm" action="<c:url value='/logout' />" method="post" style="display:none;">
                    </form>
                </li>
            </sec:authorize>
        </ul>
    </div>

    <nav>
        <ul>
            <li><a href="/test/list">심리테스트</a></li>
            <li><a href="/fortune/list">운세</a></li>
            <li><a href="#">궁합</a></li>
            <li><a href="#">포춘쿠키</a></li>
            <li><a href="/board/list">문의게시판</a></li>
        </ul>
    </nav>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</header>