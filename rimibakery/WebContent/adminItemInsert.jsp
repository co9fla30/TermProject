<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        margin-left: 550px;
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
        <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#image_upload_preview').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $(document).ready(function () {
            $("#inputFile").change(function () {
                readURL(this);
            });
        });
    </script>
</head>

<body>
<header>
            <%@ include file="/adminHeader.jsp" %>
</header>
    
<div id="container">
      <h1>ITEM INSERT</h1>
      <form id="iteminsert" action="adminItemInsert.do" method = "post"  enctype="multipart/form-data" >
        <input type="hidden" name="flag" value="i">
         <label>분류</label>
		 	<select id = "itemCategory" name="itemCategory">
  				<option value="macaroon">마카롱</option>
  				<option value="cookie">구움과자</option>
  				
 			</select>

 		<label>2차 분류</label>
 			<select  id="itemCateRef" name="itemCateRef">
 			 <option value="null">none</option>
 			 <option value="new">new</option>
 			 <option value="top">top</option>
 		</select>
 		 
        <fieldset>
        
    
           
          <ul>
            <li>
               <label for="itemName">상품명</label>
 				<input type="text" name="itemName" required> 
            </li>
            <li>
               <label for="itemPrice">상품가격</label>
				 <input type="text" name="itemPrice" required>
            </li>        
            <li>
               <label for="itemAmount">상품수량</label>
 				<input type="text" name="itemAmount" required>
            </li>
             <li>
               <label for="itemImg">상품이미지</label>
 				<input type="file" name="itemImg" id="itemImg" >
 				 <div class="select_img"><img src="" /></div>
				 <script>
				  $("#itemImg").change(function(){
				   if(this.files && this.files[0]) {
				    var reader = new FileReader;
				    reader.onload = function(data) {
				     $(".select_img img").attr("src", data.target.result).width(500);        
				    }
				    reader.readAsDataURL(this.files[0]);
				   }
				  });
				 </script>
            </li>
            <li>
               <label for="itemInfo">상품소개</label>
 				<textarea rows="5" cols="40" id="itemInfo" name="itemInfo" placeholder="상품소개는 여기에 적어주세요."></textarea>
            </li>
            
          </ul>      
        </fieldset>
        <div id="buttons">
          <input type="submit" value="상품등록 ">
          <input type="reset" value="취소">
        </div>
      </form>
    </div>

    
    
    <footer>
        <%@ include file = "/footer.jsp" %>
    </footer> 
</body>
</html>