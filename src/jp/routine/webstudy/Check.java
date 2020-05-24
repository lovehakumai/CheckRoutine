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
			sum += Integer.parseInt(request.getParameter("mon1"));
			sum += Integer.parseInt(request.getParameter("mon2"));
			sum += Integer.parseInt(request.getParameter("mon3"));
			sum += Integer.parseInt(request.getParameter("mon4"));
			sum += Integer.parseInt(request.getParameter("mon5"));
			sum += Integer.parseInt(request.getParameter("mon6"));
			sum += Integer.parseInt(request.getParameter("mon7"));
			sum += Integer.parseInt(request.getParameter("mon8"));
			sum += Integer.parseInt(request.getParameter("mon9"));

			sum += Integer.parseInt(request.getParameter("tue1"));
			sum += Integer.parseInt(request.getParameter("tue2"));
			sum += Integer.parseInt(request.getParameter("tue3"));
			sum += Integer.parseInt(request.getParameter("tue4"));
			sum += Integer.parseInt(request.getParameter("tue5"));
			sum += Integer.parseInt(request.getParameter("tue6"));
			sum += Integer.parseInt(request.getParameter("tue7"));
			sum += Integer.parseInt(request.getParameter("tue8"));
			sum += Integer.parseInt(request.getParameter("tue9"));

			sum += Integer.parseInt(request.getParameter("wed1"));
			sum += Integer.parseInt(request.getParameter("wed2"));
			sum += Integer.parseInt(request.getParameter("wed3"));
			sum += Integer.parseInt(request.getParameter("wed4"));
			sum += Integer.parseInt(request.getParameter("wed5"));
			sum += Integer.parseInt(request.getParameter("wed6"));
			sum += Integer.parseInt(request.getParameter("wed7"));
			sum += Integer.parseInt(request.getParameter("wed8"));
			sum += Integer.parseInt(request.getParameter("wed9"));

			sum += Integer.parseInt(request.getParameter("thi1"));
			sum += Integer.parseInt(request.getParameter("thi2"));
			sum += Integer.parseInt(request.getParameter("thi3"));
			sum += Integer.parseInt(request.getParameter("thi4"));
			sum += Integer.parseInt(request.getParameter("thi5"));
			sum += Integer.parseInt(request.getParameter("thi6"));
			sum += Integer.parseInt(request.getParameter("thi7"));
			sum += Integer.parseInt(request.getParameter("thi8"));
			sum += Integer.parseInt(request.getParameter("thi9"));

			sum += Integer.parseInt(request.getParameter("fri1"));
			sum += Integer.parseInt(request.getParameter("fri2"));
			sum += Integer.parseInt(request.getParameter("fri3"));
			sum += Integer.parseInt(request.getParameter("fri4"));
			sum += Integer.parseInt(request.getParameter("fri5"));
			sum += Integer.parseInt(request.getParameter("fri6"));
			sum += Integer.parseInt(request.getParameter("fri7"));
			sum += Integer.parseInt(request.getParameter("fri8"));
			sum += Integer.parseInt(request.getParameter("fri9"));

			sum += Integer.parseInt(request.getParameter("sat1"));
			sum += Integer.parseInt(request.getParameter("sat2"));
			sum += Integer.parseInt(request.getParameter("sat3"));
			sum += Integer.parseInt(request.getParameter("sat4"));
			sum += Integer.parseInt(request.getParameter("sat5"));
			sum += Integer.parseInt(request.getParameter("sat6"));
			sum += Integer.parseInt(request.getParameter("sat7"));
			sum += Integer.parseInt(request.getParameter("sat8"));
			sum += Integer.parseInt(request.getParameter("sat9"));

			sum += Integer.parseInt(request.getParameter("sun1"));
			sum += Integer.parseInt(request.getParameter("sun2"));
			sum += Integer.parseInt(request.getParameter("sun3"));
			sum += Integer.parseInt(request.getParameter("sun4"));
			sum += Integer.parseInt(request.getParameter("sun5"));
			sum += Integer.parseInt(request.getParameter("sun6"));
			sum += Integer.parseInt(request.getParameter("sun7"));
			sum += Integer.parseInt(request.getParameter("sun8"));
			sum += Integer.parseInt(request.getParameter("sun9"));



		CheckLogic cl = new CheckLogic();
	    scn.setText(cl.checkLogic(sum));
	    scn.setNum(sum);
	    //リクエストスコープに保存
	    request.setAttribute("result", scn);


		//セッションスコープに保存

		/*HttpSession session = request.getSession();
		session.setAttribute("Sum", scn);
		 */


		//forward to CheckResult.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/CheckResult.jsp");
		dispatcher.forward(request, response);
	}
}

