# RIMIBAKERY
##### 리미 베이커리는 비대면 주문 시스템으로 간단한 상품 주문 서비스를 제공 합니다.
### 파일구성

* src
  * rimibakert.controller
    * MemberInsertController.java
    * MemberLoginController.java
    * AdminItemInsertController.java
    * AdminItemListController.java
    * AdminItemViewController.java
    * AdminItemUpdateController.java
    * MarketListController.java
    * marketViewController.java
    * CartAddController.java
    * CartListController.java
    * CartDeleteController.java
    * OrderController.java
    * OrderListController.java
    * AdminOrderListController.java
  * rimibakert.dao
    * RimibakeryDAO.java
  * rimibakert.service
    * CartListService.java
    * CartService.java
    * ItemService.java
    * MemberService.java
    * UorderService.java
  * rimibakert.vo
    * CartListVO.java
    * CartVO.java
    * ItemVO.java
    * MemberVO.java
    * UorderVO.java
* WebContent
  * img
  * js
    * slideshow.js
  * result
    * img
    * adminITemList.jsp
    * itemInsertResult.jsp
    * joinResult.jsp
    * logoutResult.jsp
  * WEB-INF
    * lib
    * web.xml
  * adminHeader.jsp
  * adminIndex.jsp
  * adminItemInsert.jsp
  * adminItemView.jsp
  * adminOrderList.jsp
  * cartList.jsp
  * footer.jsp
  * header.jsp
  * index.jsp
  * join.jsp
  * logIn.jsp
  * Market.jsp
  * marketList.jsp
  * marketView.jsp
  * orderList.jsp
  * rimtstyle.css


## FrontController

중앙 컨트롤러로 *.do로 실행되는 모든 파일을 실행합니다.

* MemberInsertController : 회원가입 (멤버 정보 추가)
* MemberLoginController : 로그인 
* AdminItemInsertController : 관리자 페이지에서 상품 추가
* AdminItemListController : 관리자 페이지 상품 전체 리스트 조회
* AdminItemViewController : 관리자 페이지 상품 상세정보 조회
* AdminItemUpdateController : 관리자 페이지 상품정보 수정(오류로 구현하지 못했습니다)
* MarketListController : 일반 사용자 상품 리스트
* marketViewController : 일반 사용자 상품 상세정보 조회
* CartAddController : 장바구니 상품 추가
* CartListController : 장바구니 상품 조회
* CartDeleteController : 장바구니 상품 삭제
* OrderController : 주문
* OrderListController : 주문 리스트 조회
* AdminOrderListController : 관리자 주문 리스트(전체 주문에 대해) 조회


## VO
정보 저장을 목적으로 만든 객체입니다.

* CartListVO.java : 장바구니 상품의 상세정보를 저장합니다. (상품의 상세정보를 가져오기 위해 item 테이블과 조인)
* CartVO.java : 장바구니의 상세정보를 저장합니다.
* ItemVO.java : 상품의 상세정보를 저장합니다.
* MemberVO.java : 회원의 상세정보를 저장합니다.
* UorderVO.java : 주문의 상세정보를 저장합니다.

## DAO
데이터 베이스 처리에 관한 기능으로 구성되는 객체입니다.
* RimibakeryDAO.java : 모든 테이블의 레코드를 조회,수정,삭제 등

## Service

서비스를 전담 처리하기 위해 만든 객체입니다.
* CartListService : 카트의 상세 정보에 관한 서비스를 전담 처리
* CartService.java : 카트에 관한 서비스를 전담 처리
* ItemService.java : 아이템(상품)에 관한 서비스를 전담 처리
* MemberService.java : 회원 정보에 관한 서비스를 전담 처리
* UorderService.java : 주문 정보에 관한 서비스를 전담 처리

## View

* *.jsp
* *.css
* *.js


