package com.learntime.app.member.mail;

import java.util.Random;

public class TempKey {
	
	private boolean lowerCheck;
	private int size;
	
	public String getKey(int size, boolean lowerCheck) {
		
		this.size=size;
		this.lowerCheck=lowerCheck;
		return init();
	}
	
	private String init() {
		Random ranNum =new Random(System.currentTimeMillis());
		StringBuffer stringBuffer=new StringBuffer();
		
		int range = (int)Math.pow(10,size);
        int trim = (int)Math.pow(10, size-1);
        int result = ranNum.nextInt(range)+trim;
         
        if(result>range){
            result = result - trim;
        }
        System.out.println(result);
        return String.valueOf(result);
		
		
		
	}
	
	

}
