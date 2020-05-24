package jp.routine.webstudy;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Main
 */
@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//nameをセッションスコープに保存
		String Username = request.getParameter("Username");
		User user = new User();
		user.setName(Username);
		HttpSession session = request.getSession();
		session.setAttribute("user", user );


		//以下appスコープに保存
		//日付をアプリケーションスコープに保存
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/hh/dd");
		String today = sdf.format(date);
		Nichiji nichiji = new Nichiji();
		nichiji.setDate(today);

		//Mondayのタスクを三つ取得
		String mon_mor =request.getParameter("mon_mor");
		String mon_day = request.getParameter("mon_day");
		String mon_eve = request.getParameter("mon_eve");

		String tue_mor = request.getParameter("tue_mor");
		String tue_day = request.getParameter("tue_day");
		String tue_eve = request.getParameter("tue_eve");

		String wed_mor  = request.getParameter("wed_mor");
		String wed_day = request.getParameter("wed_day");
		String wed_eve = request.getParameter("wed_eve");

		String thi_mor = request.getParameter("thi_mor");
		String thi_day = request.getParameter("thi_day");
		String thi_eve = request.getParameter("thi_eve");

		String fri_mor = request.getParameter("fri_mor");
		String fri_day = request.getParameter("fri_day");
		String fri_eve = request.getParameter("fri_eve");

		String sat_mor = request.getParameter("sat_mor");
		String sat_day = request.getParameter("sat_day");
		String sat_eve = request.getParameter("sat_eve");

		String sun_mor = request.getParameter("sun_mor");
		String sun_day = request.getParameter("sun_day");
		String sun_eve = request.getParameter("sun_eve");


		//入力値をプロパティに設定
		Day Monday = new Day();
		Day Tuesday = new Day();
		Day Wednesday = new Day();
		Day Thirsday = new Day();
		Day Friday = new Day();
		Day Saturday = new Day();
		Day Sunday = new Day();

		Monday.setDayname("月曜日");
		Monday.setMorningtask(mon_mor);
		Monday.setDaytask(mon_day);
		Monday.setEveningtask(mon_eve);

		Tuesday.setDayname("火曜日");
		Tuesday.setMorningtask(tue_mor);
		Tuesday.setDaytask(tue_day);
		Tuesday.setEveningtask(tue_eve);

		Wednesday.setDayname("水曜日");
		Wednesday.setMorningtask(wed_mor);
		Wednesday.setDaytask(wed_day);
		Wednesday.setEveningtask(wed_eve);

		Thirsday.setDayname("木曜日");
		Thirsday.setMorningtask(thi_mor);
		Thirsday.setDaytask(thi_day);
		Thirsday.setEveningtask(thi_eve);

		Friday.setDayname("金曜日");
		Friday.setMorningtask(fri_mor);
		Friday.setDaytask(fri_day);
		Friday.setEveningtask(fri_eve);

		Saturday.setDayname("土曜日");
		Saturday.setMorningtask(sat_mor);
		Saturday.setDaytask(sat_day);
		Saturday.setEveningtask(sat_eve);

		Sunday.setDayname("日曜日");
		Sunday.setMorningtask(sun_mor);
		Sunday.setDaytask(sun_day);
		Sunday.setEveningtask(sun_eve);

		//セッションスコープに一週間分のプロパティを保存
		ServletContext application = this.getServletContext();
		application.setAttribute("nichiji", nichiji);
		application.setAttribute("Monday", Monday);
		application.setAttribute("Tuesday", Tuesday);
		application.setAttribute("Wednesday", Wednesday);
		application.setAttribute("Thirsday",Thirsday);
		application.setAttribute("Friday", Friday);
		application.setAttribute("Saturday", Saturday);
		application.setAttribute("Sunday", Sunday);

		//モード選択画面に遷移
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Choosemode.jsp");
		dispatcher.forward(request, response);
	}

}
