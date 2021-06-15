

package rimibakery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rimibakery.controller.HttpUtil;
import rimibakery.service.MemberService;

public class MemberLoginController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String uid = request.getParameter("uid");
		String upwd = request.getParameter("upwd");
		
		MemberService s = MemberService.getInstance();
		boolean result = s.MemberLogin(uid,upwd);
		
		String path = null;
		
		
		if(result) {
			HttpSession session = request.getSession();
			session.setAttribute("uid", uid);
			if(uid.equals("admin") && upwd.equals("admin12345")) {
				path = "/adminIndex.jsp";
			}else {
				path="/index.jsp";
			}
		}else {
			path="/logIn.jsp";
		}
		HttpUtil.forward(request, response, path);
	}
	

}
