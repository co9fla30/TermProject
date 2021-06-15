package rimibakery.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rimibakery.service.ItemService;
import rimibakery.vo.ItemVO;

public class marketViewController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String n = (String)request.getParameter("n");
		request.setAttribute("n", n);
		
		
		ArrayList<ItemVO> List = null;
		
		ItemService service = ItemService.getInstance();
		List = service.marketView(n);
		
		request.setAttribute("List", List);
		HttpUtil.forward(request, response, "/marketView.jsp");
	}

}