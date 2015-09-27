package cn.cornellclub.socialization.test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class PayTest {
	
	public static void main(String[] args) {
		SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd HH:mm:ss");
		System.out.println(a.format(new Date()));
	}
	
}
