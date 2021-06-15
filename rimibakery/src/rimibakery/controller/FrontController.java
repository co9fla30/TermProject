package rimibakery.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{

	HashMap<String, Controller> map = null;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		map = new HashMap<String, Controller>();
		map.put("/join.do", new MemberInsertController());
		map.put("/login.do", new MemberLoginController());
		map.put("/adminItemInsert.do", new AdminItemInsertController());
		map.put("/adminItemList.do", new AdminItemListController());
		map.put("/adminItemView.do", new AdminItemViewController());
		map.put("/adminItemUpdate.do", new AdminItemUpdateController());
		map.put("/marketList.do", new MarketListController());
		map.put("/marketView.do", new marketViewController());
		map.put("/cartAdd.do", new CartAddController());
		map.put("/cartList.do", new CartListController());
		map.put("/cartDelete.do", new CartDeleteController());
		map.put("/order.do", new OrderController());
		map.put("/orderList.do", new OrderListController());
		map.put("/adminOrderList.do", new AdminOrderListController());
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURI();
		String contextPath= request.getContextPath();
		String path = url.substring(contextPath.length());
		
		Controller subController = map.get(path);
		subController.execute(request, response);
		
		
	}
}