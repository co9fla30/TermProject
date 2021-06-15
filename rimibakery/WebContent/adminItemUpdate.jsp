<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ page import="rimibakery.vo.ItemVO" %>
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
        margin-left: 500px;
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
      #iteminsert{
      padding-top: 50px;
      }
      #iteminsert ul {
        list-style: none;
        padding-left: 0;

      }
      #iteminsert ul li {
        margin:10px;
        border-top: solid 1px #bcbcbc;
      }
     #iteminsert li label {
        width:120px;
        line-height: 36px;
        float:left;
        font-size: 15px;
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
<header>
            <%@ include file="/adminHeader.jsp" %>
</header>
    
<div id="container">
	<%
		ItemVO item = (ItemVO)request.getAttribute("item");
		if(item != null){
	%>
      <h1>${item.itemName } ITEM UPDATE</h1>
      <form id="iteminsert" action="adminItemUpdate.do" method = "post">
        <input type="hidden" name="flag" value="i">
         <label>분류</label>
		 	<select class="category1">
  				<option value="">All</option>
 			</select>

 		<label>2차 분류</label>
 			<select class="category2" name="itemcategory">
 			 <option value="">All</option>
 		</select>
 		
        <fieldset>
        
           
          <ul>
            <li>
               <label id="itemName">상품명</label>
 				<input type="text" id="itemName" value="${item.itemName }" /> 
            </li>
            <li>
               <label id="itemPrice">상품가격</label>
				 <input type="text" id="itemPrice" name="${item.itemPrice }" />
            </li>        
            <li>
               <label for="itemAmount">상품수량</label>
 				<input type="text" id="itemAmount" name="${item.itemAmount }" />
            </li>
             <li>
               <label for="itemImg">상품이미지</label>
 				<input type="file" id="itemImg" name="${item.itemImg }" />
            </li>
           
            <li>
               <label for="itemInfo">상품소개</label>
 				<textarea rows="5" cols="50" id="itemInfo" name="itemInfo" placeholder="${item.itemInfo }"></textarea>
            </li>
            
          </ul>      
        </fieldset>
        <div id="buttons">
          <input type="submit" value="상품 수정하기">
          <input type="reset" value="취소">
        </div>
      </form>
    </div>

    <%} else{ %>
		상품 정보가 없습니다.
	<%} %>
    
    <footer>
        <%@ include file = "/footer.jsp" %>
    </footer> 
</body>
</html>