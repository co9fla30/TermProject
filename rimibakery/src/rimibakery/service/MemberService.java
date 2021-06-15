package rimibakery.service;

import rimibakery.dao.RimibakeryDAO;
import rimibakery.service.MemberService;
import rimibakery.vo.MemberVO;

public class MemberService {

	private static MemberService service = new MemberService();
	
	public RimibakeryDAO dao = RimibakeryDAO.getInstance();
	public MemberService() {}
	
	public static MemberService getInstance() {
		// TODO Auto-generated method stub
		return service;
	}
	
	public void memberInsert(MemberVO member) {
		// TODO Auto-generated method stub
		dao.memberInsert(member);
	}

	public boolean MemberLogin(String uid, String upwd) {
		// TODO Auto-generated method stub
		return dao.MemberLogin(uid,upwd);
	}

}
