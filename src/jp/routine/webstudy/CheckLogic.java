package jp.routine.webstudy;


public class CheckLogic {

	public String checkLogic(int n) {
		String text=null;
		if(n >= 56) {
			text = "Magnificent!!";

		}else if(n>=44) {
			text = "Very Good!!";
		}else {
			text = "You could have done better....";
		}
		return text;
	}

}
