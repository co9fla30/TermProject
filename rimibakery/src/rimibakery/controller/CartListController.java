package rimibakery.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rimibakery.service.CartListService;
import rimibakery.vo.CartListVO;
import rimibakery.vo.MemberVO;

public class CartListController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		session.setAttribute("member", member);
		String uid = (String)request.getSession().getAttribute("uid");
		ArrayList<CartListVO> List = null;
		
		CartListService service = CartListService.getInstance();
		List = service.cartList(uid);
		
		request.setAttribute("List", List);
		
		HttpUtil.forward(request, response, "cartList.jsp");
	}

}
