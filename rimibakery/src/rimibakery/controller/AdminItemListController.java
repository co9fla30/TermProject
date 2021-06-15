
package rimibakery.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rimibakery.service.ItemService;
import rimibakery.vo.ItemVO;

public class AdminItemListController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		ArrayList<ItemVO> List = null;
		
		ItemService service = ItemService.getInstance();
		List = service.adminItemList();
		
		request.setAttribute("List", List);
		
		HttpUtil.forward(request, response, "/result/adminITemlist.jsp");
	}

}
