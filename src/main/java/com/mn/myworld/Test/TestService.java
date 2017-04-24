package com.mn.myworld.Test;

import org.springframework.stereotype.Service;

@Service
public class TestService {
	
	public void sayHello(String name){
		System.out.println("Hello "+name);
	}

}
