package cn.cornellclub.socialization.test;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class LogTest {
	
	private static Logger logger = LogManager.getLogger("LogTest");
	
	public static void main(String[] args) {
		logger.entry();   //Log entry to a method    
	    logger.error("Hello world!");   //Log a message object with the ERROR level    
	    logger.exit();    //Log exit from a method   
	}


}



