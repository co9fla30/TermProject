<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="rimibakery.vo.ItemVO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="rimtstyle.css">
<style>
 *{
      list-style: none;
      text-decoration: none;
      margin: 0px;
      padding: 0px;
      color: black;
      font-family: 'Noto Sans KR', sans-serif;
    }
#marketNav{
	border-bottom: solid 1px #bcbcbc;
	padding: 20px 20px;
}	
#marketNav ul {
	margin-left: 300px;
}
#marketNav li{
		display: inline;
		font-size: 20px;
		margin-left: 90px;
	}
</style>  
  
  <title>리미 베이커리</title>
</head>
<body>
<% ArrayList<ItemVO> List = (ArrayList<ItemVO>)request.getAttribute("List"); %>  
  <div id="container">
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
    
    <div id="marketNav">
    <ul>
    	<li><a href="marketList.do?c=new">NEW</a></li>
    	<li><a href="http://localhost:8080/rimibakery/">|</a></li>
    	<li><a href="marketList.do?c=top">TOP</a></li>
    	<li><a href="http://localhost:8080/rimibakery/">|</a></li>
    	<li><a href="marketList.do?c=macaroon">마카롱</a></li>
    	<li><a href="http://localhost:8080/rimibakery/">|</a></li>
    	<li><a href="marketList.do?c=cookie">구움과자</a></li>
    </ul>
    </div>

      
    <div id="link">
      <div id="box">
          <h3>RIMI BAKERY</h3>
      </div>
      <div class="clear"></div>

      
       <% if(!List.isEmpty()){
  		for(int i = 0; i < List.size(); i++)
  		{
			ItemVO item = List.get(i);
		%>
		<ul class="topmenus">
        <li><a href="marketView.do?n=<%=item.getItemNo() %>" ><img src="upload/<%=item.getItemImg()%>"></a></li>
        <li class="a"><%=item.getItemName() %></li>
        <li class="b"><%=item.getItemprice() %>원</li>
      </ul>
      
    

      <%
			}
	 %></div>
	  <%
			} else {
		  %>
				<h1>등록된 아이템이 없습니다.</h1>
		  <%
				   }
		   %> 
    
    
    
    
    
    
    
    
    <footer>
      <div class="box">
        <ul id="footer_menu">
          <li>회사 소개</li>
          <li> | </li>
          <li>이용 약관</li>
          <li> | </li>
          <li>전체서비스</li>
          <li> | </li>
          <li>개인정보처리방침</li>
          <li> | </li>
          <li>통합검색</li>
          <li> | </li>
          <li>고객센터</li>
        </ul> 
      <div class="footers">
        <h3>리미베이커리(주)</h3>
        <ul>
          <li>사업자 등록번호 1231231231</li>
          <li>대표이사 김채림 | 경기도 용인시 처인구 용인대학로 134 용인대학교</li>
          <li>TEL: 2020-330-11</li>
          <li>FAX: 2020-330-11</li>
        </ul>


      </div>        


      </div>
    </footer> 
  </div>


</body>
</html>