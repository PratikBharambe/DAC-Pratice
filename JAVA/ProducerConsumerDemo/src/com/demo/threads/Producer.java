package com.demo.threads;

import com.demo.beans.Storage;

public class Producer extends Thread {

	private Storage srg;

	public Producer(Storage srg) {
		super();
		this.srg = srg;
	}
	
	public void run() {
		for(int i = 1;i <= 10; i++) {
			srg.put(i);
		}
		
		srg.setStopFlag(true);
	}
}
