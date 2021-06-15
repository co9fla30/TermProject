<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="rimibakery.vo.ItemVO" %>
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
      margin-left:195px;
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
<% ArrayList<ItemVO> List = (ArrayList<ItemVO>)request.getAttribute("List"); %>
<body>
<header>
            <%@ include file="/adminHeader.jsp" %>
</header>
    
<div id="container">
      <h1>ITEM List</h1>
      
  <% if(!List.isEmpty()){ %>
  		<table>
 		<thead>
 			 <tr>
  				 <th>번호</th>
   				 <th>이름</th>
   				 <th>카테고리</th>
 			 	 <th>가격</th>
  				 <th>수량</th>
  				 <th>등록날짜</th>
 			 </tr>
 		</thead>
 		
 		<% 
  		for(int i = 0; i < List.size(); i++)
  		{
			ItemVO item = List.get(i);
		%>
 			 <tbody>
 				<tr>
   					<td><%=item.getItemNo() %></td>
   					<td><a href="adminItemView.do?n=<%=item.getItemNo() %>" ><%=item.getItemName() %></a></td>
   					<td><%=item.getItemCategory()%></td>
   					<td><%=item.getItemprice()%></td>
   					<td><%=item.getItemAmount()%></td>
   					<td><%=item.getItemDate()%></td>
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