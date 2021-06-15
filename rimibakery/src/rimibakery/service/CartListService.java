package rimibakery.service;

import java.util.ArrayList;

import rimibakery.dao.RimibakeryDAO;
import rimibakery.vo.CartListVO;
import rimibakery.vo.ItemVO;
import rimibakery.vo.MemberVO;

public class CartListService {
private static CartListService service = new CartListService();
	
	public RimibakeryDAO dao = RimibakeryDAO.getInstance();
	public CartListService() {}
	
	public static CartListService getInstance() {
		// TODO Auto-generated method stub
		return service;
	}

	public ArrayList<CartListVO> cartList(String uid) {
		// TODO Auto-generated method stub
		ArrayList<CartListVO> List = dao.cartList(uid);
		return List;
	}

	public CartListService cartDelete(String cartNo) {
		// TODO Auto-generated method stub
		dao.cartDelete(cartNo);
		return null;
	}

	
	



	

}
