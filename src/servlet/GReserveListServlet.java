package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Guest;
import beans.Reserve;
import model.GReserveShowLogic;

@WebServlet("/GReserveListServlet")
public class GReserveListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// session-scopeからユーザ情報取得
		HttpSession session = request.getSession();
		Guest loginUser = (Guest) session.getAttribute("loginUser");

		//idをもとに自動で予約情報の取得を行う
		int guestId = loginUser.getGuestId();
//		int guestId = 2; // テスト用です ユーザid 2の予約情報取得のため

		//logicでsqlの実行
		GReserveShowLogic gsl = new GReserveShowLogic();
		List<Reserve> reserveList = gsl.excecute(guestId);

		//session-scopeに予約情報の保存
		session.setAttribute("reserveList", reserveList);

		//main.jspのフォワードを行う
		RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/jsp/guest/mypage/reserve/gReserveList.jsp");
		dis.forward(request, response);
	}

}