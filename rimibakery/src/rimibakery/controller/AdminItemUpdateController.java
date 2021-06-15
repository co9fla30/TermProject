package rimibakery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rimibakery.service.ItemService;
import rimibakery.vo.ItemVO;

public class AdminItemUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		int itemNo = Integer.parseInt(request.getParameter("itemNo"));
		String itemName = request.getParameter("itemName");
		String itemprice= request.getParameter("itemprice");
		String itemAmount = request.getParameter("itemAmount");
		String itemInfo = request.getParameter("itemInfo");
		String itemImg = request.getParameter("itemImg");
		String itemDate = request.getParameter("itemDate");
		
		ItemVO item = new ItemVO();
		item.setItemNo(itemNo);
		item.setItemName(itemName);
		item.setItemprice(itemprice);
		item.setItemAmount(itemAmount);
		item.setItemInfo(itemInfo);
		item.setItemImg(itemImg);
		item.setItemDate(itemDate);
		
		//service
		ItemService service = ItemService.getInstance();
		service.itemUpdate(item);
		
		request.setAttribute("itemNo", itemNo);
		HttpUtil.forward(request,response,"/adminItemUpdate.jsp");
	}

}
