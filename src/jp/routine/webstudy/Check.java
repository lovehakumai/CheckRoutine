package jp.routine.webstudy;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/check.jsp");
	dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//ラッパー型でないとだめか試す
		//あれクラス作らないとだめ？？
		Integer sum = 0;
		String[] array = {"mon","tue","wed","thi","fri","sat","sun"};
		for(String day : array) {
		for(int i = 1;i<=9;i++) {
			sum += Integer.parseInt(request.getParameter(day + i));
		}
	}

		HttpSession session = request.getSession();
		session.setAttribute("Sum", sum);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/CheckResult.jsp");
		dispatcher.forward(request, response);
	}

}
