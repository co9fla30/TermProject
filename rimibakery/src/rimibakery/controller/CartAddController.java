package rimibakery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rimibakery.service.CartService;
import rimibakery.service.MemberService;
import rimibakery.vo.CartVO;
import rimibakery.vo.MemberVO;

public class CartAddController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String uid = request.getParameter("uid");
		String itemNo = request.getParameter("itemNo");
		String cartAmount = request.getParameter("cartAmount");
		
		CartVO cart = new CartVO();
		cart.setUid(uid);
		cart.setItemNo(itemNo);
		cart.setCartAmount(cartAmount);
		
		
		//service
		CartService service = CartService.getInstance();
		service.cartAdd(cart);
		
		request.setAttribute("uid", uid);
		HttpUtil.forward(request,response,"cartList.do");
		
	}

}
