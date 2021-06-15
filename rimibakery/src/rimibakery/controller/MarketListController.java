package rimibakery.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rimibakery.service.ItemService;
import rimibakery.vo.ItemVO;

public class MarketListController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String c = (String)request.getParameter("c");
		request.setAttribute("c", c);
		
		
		ArrayList<ItemVO> List = null;
		
		ItemService service = ItemService.getInstance();
		List = service.marketList(c);
		
		request.setAttribute("List", List);
		
		HttpUtil.forward(request, response, "/marketList.jsp");
	}

}
