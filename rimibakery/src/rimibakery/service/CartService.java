package rimibakery.service;

import rimibakery.dao.RimibakeryDAO;
import rimibakery.vo.CartVO;

public class CartService {
private static CartService service = new CartService();
	
	public RimibakeryDAO dao = RimibakeryDAO.getInstance();
	public CartService() {}
	
	public static CartService getInstance() {
		// TODO Auto-generated method stub
		return service;
	}

	public void cartAdd(CartVO cart) {
		// TODO Auto-generated method stub
		dao.cartAdd(cart);
	}
}
