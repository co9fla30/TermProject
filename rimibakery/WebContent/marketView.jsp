<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="rimibakery.vo.ItemVO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="rimtstyle.css">
<title>Insert title here</title>
    <style>
      #container {
        width:1300px;
        margin:0 auto;
      }
      #container h1{
        margin-left: 550px;
         margin-top: 70px;
        color:#D0C1B2;
      }
      fieldset {
        margin-bottom: 20px;
        border-color: transparent;
      }
      legend{
        margin-left: 5px;
      }
     label{
     margin-left:20px;
     }
      
      input[type="text"]{
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
	#img{
     float: left;
     margin-left:350px;
     padding-top:50px;
     }
     #info{
     float: left;
     margin-left:50px;
     padding-top:100px;
     }
    </style>
</head>

<body>
<% ArrayList<ItemVO> List = (ArrayList<ItemVO>)request.getAttribute("List"); %>


   <header>  
      <div id="top">
        <div id="box">
          <div id="search">
            <input type="text">
        </div>
     <nav id="topnav">
     <div id="box"> 
      <ul>
        <li><a href="logIn.jsp">?????????</a></li>
        <li><a href="join.jsp">????????????</a></li>
        <li><a href="/rimibakery/result/logoutResult.jsp">????????????</a></li>
        <li><a href="cartList.do">????????????</a></li>
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
       <li><a href="Market.jsp">????????? ??????</a></li>
        <li><a href="#a">????????????</a></li>
        <li><a href="#a">??????</a></li>
        <li><a href="orderList.do">????????????</a></li>
        <li><a href="orderList.do">???????????????</a></li>
        <li><a href="logIn.jsp">?????????</a></li>
        </ul>
      </div>
    </nav>
    
    <div id="marketNav">
    <ul>
    	<li><a href="marketList.do?c=new">NEW</a></li>
    	<li><a href="http://localhost:8080/rimibakery/">|</a></li>
    	<li><a href="marketList.do?c=top">TOP</a></li>
    	<li><a href="http://localhost:8080/rimibakery/">|</a></li>
    	<li><a href="marketList.do?c=macaroon">?????????</a></li>
    	<li><a href="http://localhost:8080/rimibakery/">|</a></li>
    	<li><a href="marketList.do?c=cookie">????????????</a></li>
    </ul>
    </div>
<div id="container">
      <h1>Item view</h1>
      <form id="iteminsert" action="cartAdd.do" method = "post">
        
        <% if(!List.isEmpty()){
  		for(int i = 0; i < List.size(); i++)
  		{
			ItemVO item = List.get(i);
		%>
		<input type="hidden" name="itemNo" value="<%=item.getItemNo() %>">
         <input type="hidden" name="uid" value="${uid }">
        <fieldset>
        
           
          <ul>
          <div id="img">

 				<img src="upload/<%=item.getItemImg()%>">
           </div>
           <div id="info">
            <li>
               <label id="itemName">????????? : </label>
 				<span><%=item.getItemName() %></span>
            </li>
            <li>
               <label id="itemPrice">???????????? : </label>
				<span><%=item.getItemprice() %></span>
            </li>        
            <li>
               <label for="itemAmount">???????????? : </label>
 				<span><%=item.getItemAmount()%></span>
            </li>
           
            <li>
               <label for="itemInfo">???????????? : </label>
 				<span><%=item.getItemInfo() %></span>
            </li>
            <li>
               <label for="cartAmount">?????? ??????</label>
 				<input type="number" name="cartAmount" id="cartAmount" min="1" max="<%=item.getItemAmount()%>" value="1" />
            </li>
            
          </ul>
          </div>      
        </fieldset>
        <div id="buttons">
          <input type="submit" value="???????????? ">
          <input type="reset" value="??????">
        </div>
      </form>
    </div>


     
        <%
			}
	 %>
	  <%
			} else {
		  %>
				<h1>????????? ???????????? ????????????.</h1>
		  <%
				   }
		   %> 
    <footer>
        <%@ include file = "/footer.jsp" %>
    </footer> 
</body>
</html>