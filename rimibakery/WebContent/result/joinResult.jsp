<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
</head>
<style>
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
            <%@ include file="/header.jsp" %>
    </header>
    
    <div id="container">
      <h1>WELCOME ${uid }</h1>
    </div>
    
    
    <footer>
        <%@ include file = "/footer.jsp" %>
    </footer> 
</body>
</html>