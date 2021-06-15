<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style>
      #container {
        padding-top: 100px;
        width:1300px;
        margin:0 auto;
      }
      #container h1{
        margin-left: 480px;
        color:#D0C1B2;

      }#container h4{
        margin-left: 485px;
        color:#bcbcbc;
      }
      #loginbox{
        margin:50px 100px 50px 390px;
        width: 500px;
        height: 300px;
        border: solid 1px #bcbcbc;
      }
      #login{
        margin:50px 100px 50px 100px;
        width: 300px;
        height: 110px;
      }
      #login input[type="text"], input[type="password"]{
        width:180px;
        height:30px;
        margin-top: 7px;
        margin-left: 55px;
      }
      textarea{
        margin-top: 7px;
      }
      #buttons {
        margin:20px auto;
        text-align: center;
        margin-top: 80px;
      }
      #buttons input {
        width:70px;
        height:30px;
        font-size:15px;
        background-color:#ede5dd;
      }
      #buttons input:hover {
        background-color:#ede5dd;
        color:#fff;
      }

      select {
        height:30px;
      } 
    </style>
  </head>
  <body> 
    <header>
            <%@ include file="header.jsp" %>
    </header>
    <div id="container">
    <%
		String result = (String)request.getAttribute("msg");
		if(result != null && result.equals("false")){	
	%>
	<h1>존재하지 않는 아이디입니다.</h1>
	<%} %>
      <h1>Registered Customers</h1>
      <h4>가입하신 아이디와 패스워드를 입력해주세요.</h4>
      <div id="loginbox">
        <div id="login">
      <form action="login.do" method = "post">
        <input type="text" name="uid" autofocus placeholder="ID" required> <br>
        <input type="password" name="upwd" id="upwd" placeholder="PASSWORD" required> 
        </div>
        <div id="buttons">
          <input type="submit" value="login">
        </div>
      </form>
    </div>
    </div>
    <footer>
        <%@ include file = "footer.jsp" %>
    </footer>          
  </body>
</html>