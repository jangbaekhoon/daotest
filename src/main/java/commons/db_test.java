package commons;

import java.util.ArrayList;
import java.util.HashMap;

public class db_test {
	public static void main(String[] args) {
		ArrayList<HashMap<String, String>> rs = Db.selectListMap("SELECT * FROM sqr_test ORDER BY S_NUM DESC");
		System.out.println(rs);
	}
}
