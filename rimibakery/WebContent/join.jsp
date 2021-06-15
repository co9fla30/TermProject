<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <style>
      #container {
        padding-top: 100px;
        width:1300px;
        margin:0 auto;
      }
      #container h1{
        margin-left: 570px;
        color:#D0C1B2;
      }
      fieldset {
        margin-bottom: 20px;
        border-color: transparent;
      }
      legend{
        margin-left: 5px;
      }
      #legendevent{
        margin-left: 5px;
      }
      #join{
      padding-top: 50px;
      }
      #join ul {
        list-style: none;
        padding-left: 0;

      }
      #join ul li {
        margin:10px;
        border-top: solid 1px #bcbcbc;
      }
     #join li label {
        width:120px;
        line-height: 36px;
        float:left;
        font-size: 15px;
      }
      input[type="text"], input[type="password"], input[type="email"],input[type="tel"] {
        width:180px;
        height:25px;
        margin-top: 7px;
      }
      #path{
        margin-top: 7px;
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
      #mailingbox{
        margin-top: 20px;
        border-top: solid 1px #bcbcbc;
      }
    </style>
  </head>
  <body> 
    <header>
            <%@ include file="header.jsp" %>
    </header>
    <div id="container">
      <h1>REGISTER</h1>
      <form id="join" action="join.do" method = "post">
        <fieldset>
          <legend>기본정보</legend>    
          <ul>
            <li>
              <label for="uid">아이디</label>
              <input type="text" name="uid" autofocus placeholder="4자~16자" required> 
            </li>
            <li>
              <label for="pwd">비밀번호</label>
              <input type="password" name="upwd" id="upwd" placeholder="10자~16자
              " required> 
            </li>        
            <li>
              <label for="pwd2">비밀번호 확인</label>
              <input type="password" name="upwd2" id= "upwd2" required> 
              <input type="button" onclick="test()" value="비밀번호 확인">
            </li>
            <script type="text/javascript">
			    function test() {
			      var p1 = document.getElementById('upwd').value;
			      var p2 = document.getElementById('upwd2').value;
			      
			      if(p1.length < 10) {
			              alert('비밀번호를 10글자 이상입력하세요.');
			              return false;
			          }
			          
			          if( p1 != p2 ) {
			            alert("비밀번호불일치");
			            return false;
			          } else{
			            alert("비밀번호가 일치합니다");
			            return true;
			          }
			    }
			  </script>
            <li>
              <label for="uname">이름</label>
              <input type="text" name="uname" required> 
            </li>
            <li>
              <label for="utel">휴대전화</label>
              <input type="tel" name="utel" required> 
            </li>
            <li>
              <label for="umail">이메일</label>
              <input type="email" name="umail" required> 
            </li>
            <li>
              <label for="path">가입 경로</label>
              <select id="path" name= "path">
                <option value="blog">블로그</option>
                <option value="search">검색</option>
                <option value="sns">SNS</option>
                <option value="etc">기타</option>
              </select>
            </li>
            <li>
              <label for="etc">기타경로</label>
              <textarea cols="40" rows="4" name="etcpath" placeholder="기타 경로는 여기에 적어주세요."></textarea>
            </li>
          </ul>      
        </fieldset>
        <fieldset>
          <legend id="legendevent">이벤트와 새로운 소식</legend>
          <div id = "mailingbox">
          <input type="radio" name="mailing" value="mailing_y">
          <label for="mailing_y">메일 수신</label>
          <input type="radio" name="mailing" value="mailing_n" checked>
          <label for="mailing_n">메일 수신 안 함</label> </div>    
        </fieldset>
        <div id="buttons">
          <input type="submit" value="회원가입 ">
          <input type="reset" value="취소">
        </div>
      </form>
    </div>
    <footer>
        <%@ include file = "footer.jsp" %>
    </footer>          
  </body>
</html>