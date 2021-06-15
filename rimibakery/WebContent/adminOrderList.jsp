<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="rimibakery.vo.UorderVO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">

<meta charset="UTF-8">
<title>리미 베이커리</title>
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
        margin-left: 580px;
        color:#D0C1B2;
        padding-bottom:40px;
      }
      fieldset {
        margin-bottom: 20px;
        border-color: transparent;
      }
      #container table td {
      width:150px;
      border: solid 1px #bcbcbc;
      }
      #container table{
      margin-left:40px;
      margin-bottom:100px;
      }
      table thead{
      background-color:#D0C1B2;
      }
      input[type="text"]{
        width:180px;
        height:25px;
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
    </style>
</head>
<% ArrayList<UorderVO> List = (ArrayList<UorderVO>)request.getAttribute("List"); %>
<body>
<header>
            <%@ include file="/adminHeader.jsp" %>
</header>
    
<div id="container">
      <h1>ORDER List</h1>
      
  <% if(!List.isEmpty()){ %>
  		<table>
 		<thead>
 			 <tr>
  				 <th>주문번호</th>
   				 <th>상품번호</th>
   				 <th>수령인</th>
   				 <th>주소</th>
  				 <th>전화번호</th>
  				 <th>가격</th>
  				 <th>수량</th>
  				 <th>등록날짜</th>
 			 </tr>
 		</thead>
 		
 		<% 
  		for(int i = 0; i < List.size(); i++)
  		{
  			UorderVO order = List.get(i);
		%>
 			 <tbody>
 				<tr>
   					<td><%=order.getOrderId() %></td>
   					<td><%=order.getItemNo() %></td>
   					<td><%=order.getOrderRec() %></td>
   					<td>(<%=order.getUserAddr1()%>)<%=order.getUserAddr2()%> <%=order.getUserAddr3()%></td>
   					<td><%=order.getOrderTel()%></td>
   					<td><%=order.getSumPrice()%></td>
   					<td><%=order.getCartAmount()%></td>
   					<td><%=order.getOrderDate()%></td>
   					
  				</tr>   
		<%
			}
	     %>
 			 </tbody>
		</table>
	</div>
     	 <%
			} else {
		  %>
				<h1>등록된 아이템이 없습니다.</h1>
		  <%
				   }
		   %> 
      

    
    
    <footer>
        <%@ include file = "/footer.jsp" %>
    </footer> 
</body>
</html>