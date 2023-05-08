package com.myweb.user.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myweb.user.model.UserDAO;
import com.myweb.user.model.UserVO;

public class DeleteService implements IUserService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String checkPw = request.getParameter("check_pw");

		HttpSession session = request.getSession();
		UserVO vo = (UserVO) session.getAttribute("user");
		UserDAO dao = UserDAO.getInstance();

		response.setContentType("text/html; charset=UTF-8");
		String htmlCode;
		PrintWriter out = null;
		
		try {
			out = response.getWriter();
			if(dao.userCheck(vo.getUserId(), checkPw) == 1) {
				dao.deleteUser(vo.getUserId());
				session.invalidate();
				htmlCode = "<script>\r\n"
                        + "alert('회원 탈퇴가 정상적으로 처리되었습니다.');\r\n"
                        + "location.href='/MyWeb/';\r\n"
                        + "</script>";				
			} else {
				htmlCode = "<script>\r\n"
                        + "alert('비밀번호가 일치하지 않습니다.');\r\n"
						+ "history.back();\r\n"
                        + "</script>";
			}
			out.print(htmlCode);
			out.flush();
		} catch(IOException e) {
			e.printStackTrace();
		} finally {
			out.close();
		}


	}

}
