package rimibakery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rimibakery.service.ItemService;
import rimibakery.service.MemberService;
import rimibakery.vo.MemberVO;

public class MemberInsertController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String uid = request.getParameter("uid");
		String upwd = request.getParameter("upwd");
		String upwd2 = request.getParameter("upwd2");
		String uname = request.getParameter("uname");
		String utel = request.getParameter("utel");
		String umail = request.getParameter("umail");
		String path = request.getParameter("path");
		String etcpath = request.getParameter("etcpath");
		
		MemberVO member = new MemberVO();
		member.setUid(uid);
		member.setUpwd(upwd);
		member.setUname(uname);
		member.setUtel(utel);
		member.setUmail(umail);
		member.setPath(path);
		member.setEtcpath(etcpath);
		
		//service
		MemberService service = MemberService.getInstance();
		service.memberInsert(member);
		
		request.setAttribute("uid", uid);
		HttpUtil.forward(request,response,"/result/joinResult.jsp");
		
		
	}

}
