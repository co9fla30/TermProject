package rimibakery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rimibakery.service.MemberService;
import rimibakery.service.UorderService;
import rimibakery.vo.MemberVO;
import rimibakery.vo.UorderVO;

public class OrderController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String uid = request.getParameter("uid");
		String orderRec = request.getParameter("orderRec");
		
		String userAddr1 = request.getParameter("userAddr1");
		String userAddr2 = request.getParameter("userAddr2");
		String userAddr3 = request.getParameter("userAddr3");
		String orderTel = request.getParameter("orderTel");
		int sumPrice = Integer.parseInt(request.getParameter("sumPrice"));
		
		UorderVO order = new UorderVO();
		order.setUid(uid);
		order.setOrderRec(orderRec);
		order.setUserAddr1(userAddr1);
		order.setUserAddr2(userAddr2);
		order.setUserAddr3(userAddr3);
		order.setOrderTel(orderTel);
		order.setSumPrice(sumPrice);
		
		//service
		UorderService service = UorderService.getInstance();
		service.order(order);
		
		request.setAttribute("uid", uid);
		HttpUtil.forward(request,response,"orderList.do");
	}

}
