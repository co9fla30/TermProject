<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리미 베이커리</title>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">

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
     #container {
        padding-top: 100px;
        width:1300px;
        margin:0 auto;
      }
      #container h1{
        margin-left: 480px;
        color:#D0C1B2;
        padding-bottom:100px;
      }
</style>
<body>
	<header>
            <%@ include file="/adminHeader.jsp" %>
    </header>
    
    <div id="container">
      <h1>${itemName } 등록완료</h1>
    </div>
    
    
    <footer>
        <%@ include file = "/footer.jsp" %>
    </footer> 
</body>
</html>