package com.demo.threads;

import com.demo.beans.SearchData;

public class MySearchThread extends Thread{
	private SearchData sdata;
	private String wrd;
	
	public MySearchThread(SearchData sdata, String wrd) {
		super();
		this.sdata = sdata;
		this.wrd = wrd;
	}
	
	public void run() {
		boolean status = sdata.search("word.txt", wrd);
		if (status) {
			System.out.println(wrd + "Word found");
		} else {
			System.out.println(wrd + "Word not found");
		}
	}
}
