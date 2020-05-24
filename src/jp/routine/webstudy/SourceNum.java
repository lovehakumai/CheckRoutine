package jp.routine.webstudy;
import java.io.Serializable;
public class SourceNum implements Serializable {
	private int num;
	private String text;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

}
