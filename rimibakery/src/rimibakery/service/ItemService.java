package rimibakery.service;

import java.util.ArrayList;

import rimibakery.dao.RimibakeryDAO;
import rimibakery.service.ItemService;
import rimibakery.vo.ItemVO;

public class ItemService {

	private static ItemService service = new ItemService();
	
	public RimibakeryDAO dao = RimibakeryDAO.getInstance();
	public ItemService() {}
	
	public static ItemService getInstance() {
		// TODO Auto-generated method stub
		return service;
	}
	
	public void itemInsert(ItemVO item) {
		// TODO Auto-generated method stub
		dao.itemInsert(item);
	}

	public ArrayList<ItemVO> adminItemList() {
		// TODO Auto-generated method stub
		ArrayList<ItemVO> List = dao.adminItemList();
		
		return List;
	}

	public ArrayList<ItemVO> adminItemView(String n) {
		// TODO Auto-generated method stub
		ArrayList<ItemVO> List = dao.adminItemView(n);
		
		return List;
	}

	public void itemUpdate(ItemVO item) {
		// TODO Auto-generated method stub
		dao.itemUpdate(item);
	}

	public ArrayList<ItemVO> marketList(String c) {
		// TODO Auto-generated method stub
		ArrayList<ItemVO> List = dao.marketList(c);
		
		return List;
	}

	public ArrayList<ItemVO> marketView(String n) {
		// TODO Auto-generated method stub
		ArrayList<ItemVO> List = dao.marketView(n);
		
		return List;
	}

	


}
