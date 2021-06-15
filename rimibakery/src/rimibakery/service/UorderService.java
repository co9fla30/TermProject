package rimibakery.service;

import java.util.ArrayList;

import rimibakery.dao.RimibakeryDAO;
import rimibakery.vo.ItemVO;
import rimibakery.vo.UorderVO;

public class UorderService {

	private static UorderService service = new UorderService();
	
	public RimibakeryDAO dao = RimibakeryDAO.getInstance();
	public UorderService() {}
	
	public static UorderService getInstance() {
		// TODO Auto-generated method stub
		return service;
	}

	public void order(UorderVO order) {
		// TODO Auto-generated method stub
		dao.order(order);
	}

	public ArrayList<UorderVO> orderList(String uid) {
		// TODO Auto-generated method stub
		ArrayList<UorderVO> List = dao.orderList(uid);
		
		return List;
	}

	public ArrayList<UorderVO> adminOrderList() {
		// TODO Auto-generated method stub
		ArrayList<UorderVO> List = dao.adminOrderList();
		
		return List;
	}
}
