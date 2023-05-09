package com.myweb.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.board.model.BoardDAO;

public class UpdateService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		BoardDAO dao = BoardDAO.getInstance();
		
		dao.updateBoard(Integer.parseInt(request.getParameter("bId"))
				, request.getParameter("bTitle")
				, request.getParameter("bContent"));
		
	}

}
