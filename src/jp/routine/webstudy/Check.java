package jp.routine.webstudy;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

		//繰り返し処理でsumにパラメーターから数値を取得できたら楽なのに
			SourceNum scn = new SourceNum();
			int sum = 0;
			sum += Integer.parseInt(request.getParameter("mon_mor"));
			sum += Integer.parseInt(request.getParameter("mon_day"));
			sum += Integer.parseInt(request.getParameter("mon_eve"));


			sum += Integer.parseInt(request.getParameter("tue_mor"));
			sum += Integer.parseInt(request.getParameter("tue_day"));
			sum += Integer.parseInt(request.getParameter("tue_eve"));

			sum += Integer.parseInt(request.getParameter("wed_mor"));
			sum += Integer.parseInt(request.getParameter("wed_day"));
			sum += Integer.parseInt(request.getParameter("wed_eve"));

			sum += Integer.parseInt(request.getParameter("thi_mor"));
			sum += Integer.parseInt(request.getParameter("thi_day"));
			sum += Integer.parseInt(request.getParameter("thi_eve"));

			sum += Integer.parseInt(request.getParameter("fri_mor"));
			sum += Integer.parseInt(request.getParameter("fri_day"));
			sum += Integer.parseInt(request.getParameter("fri_eve"));

			sum += Integer.parseInt(request.getParameter("sat_mor"));
			sum += Integer.parseInt(request.getParameter("sat_day"));
			sum += Integer.parseInt(request.getParameter("sat_eve"));

			sum += Integer.parseInt(request.getParameter("sun_mor"));
			sum += Integer.parseInt(request.getParameter("sun_day"));
			sum += Integer.parseInt(request.getParameter("sun_eve"));

			String[] array = {"mon","tue","wed","thi","fri","sat","sun"};
			String[] timeline = {"_mor","_day","_eve"};
			for (String youbi : array) {
				for (String time : timeline) {
				sum += Integer.parseInt(request.getParameter("youi" + "time"));
			}
			}



		CheckLogic cl = new CheckLogic();
	    scn.setText(cl.checkLogic(sum));
	    scn.setNum(sum);
	    //リクエストスコープに保存
	    request.setAttribute("result", scn);

		//forward to CheckResult.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/CheckResult.jsp");
		dispatcher.forward(request, response);
	}
}

