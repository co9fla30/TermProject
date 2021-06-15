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
     font-size: 17px; 
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
    </style>
</head>

<body>
<% ArrayList<ItemVO> List = (ArrayList<ItemVO>)request.getAttribute("List"); %>
<header>
            <%@ include file="/adminHeader.jsp" %>
</header>
    
<div id="container">
      <h1>ITEM Info</h1>
      <form id="iteminsert" action="adminItemList.do" method = "post">
        
        <% if(!List.isEmpty()){
  		for(int i = 0; i < List.size(); i++)
  		{
			ItemVO item = List.get(i);
		%>
		<input type="hidden" name="n" value="<%=item.getItemNo() %>">
         
 		
        <fieldset>
        
           
          <ul>
          	
           <div id="img">

 				<img src="upload/<%=item.getItemImg()%>">
           </div>
            <div id="info">
            <label>분류</label>
		 	<select class="category1">
  				<option value=""><%=item.getItemCategory() %></option>
 			</select>

            
            <li>
               <label id="itemName">상품명 : </label>
 				<span><%=item.getItemName() %></span>
            </li>
            <li>
               <label id="itemPrice">상품가격 : </label>
				<span><%=item.getItemprice() %>원</span>
            </li>        
            <li>
               <label for="itemAmount">상품수량 : </label>
 				<span><%=item.getItemAmount()%></span>
            </li>
             
           
            <li>
               <label for="itemInfo">상품소개 : </label>
 				<span><%=item.getItemInfo() %></span>
            </li>
            </div>
          </ul>      
        </fieldset>
        <div id="buttons">
          <input type="submit" value="확인 ">
          <input type="reset" value="취소">
        </div>
      </form>
    </div>

    <%
			}
	 %>
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