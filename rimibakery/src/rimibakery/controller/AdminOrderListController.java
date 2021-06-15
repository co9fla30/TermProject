package rimibakery.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rimibakery.service.UorderService;
import rimibakery.vo.UorderVO;

public class AdminOrderListController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		ArrayList<UorderVO> List = null;
		
		UorderService service = UorderService.getInstance();
		List = service.adminOrderList();
		
		request.setAttribute("List", List);
		
		HttpUtil.forward(request, response, "adminOrderList.jsp");
	}

}
