<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="rimibakery.vo.CartListVO" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
      #container {
        padding-top: 100px;
        width:1300px;
        margin:0 auto;
      }
      #container h1{
        margin-left: 580px;
        color:#D0C1B2;
      }
      h4{
        margin-left: 530px;
        color:#bcbcbc;
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
      #img{
     float: left;
     margin-left:350px;
     padding-top:50px;
     }
     #info{
     float: left;
     margin-left:50px;
     padding-top:80px;
     }
     fieldset{
     border-bottom: solid 1px #bcbcbc;
     padding-bottom:20px;
     }
     button{
     	width:70px;
        height:30px;
        font-size:15px;
        background-color:#ede5dd;
     }
      #buttons {
        margin:20px auto;
        text-align: center;
        margin-top: 80px;
       
      }
      #desc input[type="text"]{
        width:300px;
        height:25px;
        margin-top: 7px;
      }
      #deleteButton button{
      margin-left:20px;
      margin-top: 10px;
      }
      #buttons input[type="submit"] {
        width:70px;
        height:30px;
        font-size:15px;
        background-color:#ede5dd;
      }
      #buttons input:hover {
        background-color:#ede5dd;
        color:#fff;
      }
		.inputArea{
		margin-top: 10px;
		}
      select {
        height:30px;
      } 
      #desc{
      }
    </style>
  

</head>

<body>
<% ArrayList<CartListVO> List = (ArrayList<CartListVO>)request.getAttribute("List"); %>
<header>
            <%@ include file="/header.jsp" %>
</header>
    
<div id="container">
      <h1>CART LIST</h1>
      <form id="iteminsert" action="order.do" method = "post">
        
        <% 
        int total=0;
        int sum=0;
        
        if(!List.isEmpty()){
  		for(int i = 0; i < List.size(); i++)
  		{
  			CartListVO cart = List.get(i);
		%>
		
		<input type="hidden" name="uid" value="${uid }">
		<input type="hidden" name="cartAmount" value="<%=cart.getCartAmount() %>">
         
 		
        <fieldset>
        
           <div id="img">

 				<img src="upload/<%=cart.getItemImg()%>">
           </div>
           <div id="info">
          <ul>
          <li>
               <label for="cartNo">?????? ??????</label>
 				<span><%=cart.getCartNo() %></span>
            </li>
            <li>
               <label id="itemName">?????????</label>
 				<span><%=cart.getItemName() %></span>
            </li>
            <li>
               <label id="itemPrice">????????????</label>
				<span><%=cart.getItemprice() %></span>
            </li>        
            <li>
               <label for="itemAmount">????????????</label>
 				<span><%=cart.getItemAmount()%> ???</span>
            </li>
     
            
            <li>
            	<label for="itemInfo">????????????</label>
 				<span><%=cart.getItemInfo() %></span>
            </li>
            <li>
               <label for="cartAmount">?????? ??????</label>
 				<span><%=cart.getCartAmount() %></span>
            </li>
            
            
            <%
            
        		total = Integer.parseInt(cart.getItemprice()) *Integer.parseInt(cart.getCartAmount());
        		sum += total;
            	
       	 	%>
       	 	<li>
               <label for="<%=total %>">??? ??????</label>
 				<span><%=total %></span>
            </li>
            
            <li>
            <div id = "deleteButton">
            	<button type="button" value="??????" onClick="location.href='cartDelete.do?cartNo=<%=cart.getCartNo() %>'" >??????</button>
            </div>
            </li>
          </ul> 
          </div>     
        </fieldset>
        

    <%
			}
	 %><div id="buttons">
	 	<input type="hidden" name="sumPrice" value="<%=total %>">
	 	??? ?????? ?????? : <%=sum %>???
          
          

		  <div id="desc" class="desc">
			    
			    
			  <div class="inputArea">
			   <label for="">?????????</label>
			   <input type="text" name="orderRec" id="orderRec" required="required" />
			  </div>
			  
			  <div class="inputArea">
			   <label for="orderTel">????????? ?????????</label>
			   <input type="text" name="orderTel" id="orderTel" required="required" />
			  </div>
			  
			  <div class="inputArea">
			   <label for="userAddr1">????????????</label>
			   <input type="text" name="userAddr1" id="userAddr1" required="required" />
			  </div>
			  
			  <div class="inputArea">
			   <label for="userAddr2">??????</label>
			   <input type="text" name="userAddr2" id="userAddr2" required="required" />
			  </div>
			  
			  <div class="inputArea">
			   <label for="userAddr3">?????? ??????</label>
			   <input type="text" name="userAddr3" id="userAddr3" required="required" />
			  </div>
			  
			  <div class="inputArea">
			  
			   <input type="submit" class="order_btn" value="???????????? ">
         	   <button type="button" class="close" id="close" >??????</button>
         	  
         	   
         	   </div>
			</div>
        
        </div>
      </form>
    </div>
	  <%
			} else {
		  %>
				<h4>??????????????? ?????? ???????????? ????????????.</h4>
		  <%
				   }
		   %> 
    
    <footer>
        <%@ include file = "/footer.jsp" %>
    </footer> 
  
</body>
</html>