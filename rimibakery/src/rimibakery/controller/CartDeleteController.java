package rimibakery.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rimibakery.service.CartListService;
import rimibakery.service.ItemService;
import rimibakery.vo.CartListVO;
import rimibakery.vo.ItemVO;

public class CartDeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		
		String cartNo  = (String)request.getParameter("cartNo");
		
		
		CartListService service = CartListService.getInstance();
		service = service.cartDelete(cartNo);
		request.setAttribute("cartNo", cartNo);
		
		HttpUtil.forward(request, response, "cartList.do");
	}

}
