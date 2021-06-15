<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
 *{
      list-style: none;
      text-decoration: none;
      margin: 0px;
      padding: 0px;
      color: black;
      font-family: 'Noto Sans KR', sans-serif;
    }
    .clear{
    	clear: both;
    }
    #headercontainer{
		margin: 0 auto;
	}
	header{
		height: 200px;
		background-color: #ede5dd;
	}
	#top{
		height: 55px;
	}
	#box{
		width: 1300px;
		margin: 0 auto;
	}
	#search{
		float: left;
		background-image: url("img/search.png");
		width:244px;
		height: 54px;
	}
	#search input{
		margin: 19px 0 0 25px;
		border: 0;
	}
	#topnav li{
		float: right;
		display: inline;
		font-size: 12px;
		margin: 16px 15px 0 25px;
	}
	#logo02{
		float: left;
		margin: 10px 0 0 280px;
	}
	#mainnav{
		border-top: solid 1px #bcbcbc;
		border-bottom: solid 1px #bcbcbc;
		padding: 20px 20px;
	}	
	#mainnav li{
		display: inline;
		font-size: 15px;
		margin-left: 50px;
	}
</style>
<body>
  <div id="headercontainer">
   <header>  
      <div id="top">
        <div id="box">
          <div id="search">
            <input type="text">
        </div>
     <nav id="topnav">
     <div id="box"> 
      <ul>
        <li><a href="logIn.jsp">로그인</a></li>
        <li><a href="join.jsp">회원가입</a></li>
        <li><a href="/rimibakery/result/logoutResult.jsp">로그아웃</a></li>
        <li><a href="cartList.do">장바구니</a></li>
        </ul>
      </div>
    </nav>
        </div>

      <div id="logo"> 
        <div id="box">
          <div id="logo02">
            <a href="http://localhost:8080/rimibakery/">
            <img src="img/logo02.png" height="150px"></a>
          </div>
        </div>
      </div>
  </header>

    <nav id="mainnav">
     <div id="box"> 
      <ul>
        <li><a href="Market.jsp">온라인 주문</a></li>
        <li><a href="#a">본사안내</a></li>
        <li><a href="#a">매장</a></li>
        <li><a href="orderList.do">주문목록</a></li>
        <li><a href="orderList.do">마이페이지</a></li>
        <li><a href="logIn.jsp">로그인</a></li>
        </ul>
      </div>
    </nav>
   </div>
</body>
</html>