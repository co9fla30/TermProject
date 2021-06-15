<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="rimtstyle.css">
  <title>리미 베이커리</title>
</head>
<body>
  
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

    <div id="sideshow">
      <div id="box">
        <div id="slides">
      <img src="img/photo-1.png" alt="">
      <img src="img/photo-2.png" alt="">
      <img src="img/photo-3.png" alt="">
      <button id="prev">&lang;</button>
      <button id="next">&rang;</button>
      </div>
    </div>
    </div>
      
    <div id="link">
      <div id="box">
          <h3>Top menu</h3>
      </div>
      <div class="clear"></div>

      <ul class="topmenus">
        <li><img src="upload/초코 마카롱.png"></li>
        <li class="a">초코 마카롱</li>
        <li class="b">2500원</li>
      </ul>
      <ul class="topmenus">
        <li><img src="upload/겨울 쿠키.png"></li>
        <li class="a">겨울 쿠키</li>
        <li class="b">1500원</li>
      </ul>
      <ul class="topmenus">
        <li><img src="upload/스콘.png"></li>
        <li class="a">스콘</li>
        <li class="b">2000원</li>
      </ul>
      <ul class="topmenus">
        <li><img src="upload/초코칩 쿠키.png"></li>
        <li class="a">초코칩 쿠키</li>
        <li class="b">3000원</li>
      </ul>



    </div>

    <div id="contents">
      <div id="tabMenu">
        <input type="radio" id="tab1" name="tabs" checked>
        <label for="tab1">notice</label>
        <input type="radio" id="tab2" name="tabs">
        <label for="tab2">news</label>      
        <div id="notice" class="tabContent">
          <h2>notice 내용</h2>
          <ul>            
            <li>오픈 기념 20% 할인 안내</li>
            <li>리미베이커리 원데이클래스 안내</li>
            <li>배송 조회 안내</li>
            <li>리미베이커리 성분표</li>
            <li>안녕하세요 리미 베이커리 입니다.</li>
          </ul>
        </div>
        <div id="news" class="tabContent">
         <h2>news 내용</h2>
          <ul>            
            <li>리미베이커리 원데이클래스 사진</li>
            <li>매출 총 1억 달성</li>
            <li>news 입니다</li>
            <li>news</li>
            <li>...........</li>            
          </ul>
        </div>        
      </div>
        <div id="links">
          <ul>
          <li>
            <a href="#a">
              <span id="quick-link1"></span>
              
            </a>
          </li>
          <li>
            <a href="#a">
              <span id="quick-link2"></span>
              
            </a>            
          </li>
        </ul>

        </div>

    </div>

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


<script src="js/slideshow.js"></script>
	
</body>
</html>