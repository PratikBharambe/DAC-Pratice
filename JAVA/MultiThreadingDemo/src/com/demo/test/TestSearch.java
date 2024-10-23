package com.demo.test;

import com.demo.beans.SearchData;
import com.demo.threads.MySearchThread;

public class TestSearch {

	public static void main(String[] args) {

		String[] strArr = { "producer", "consumer", "subscriber", "publisher", "Director", "cameraman" };
		MySearchThread[] sthread = new MySearchThread[strArr.length];
		SearchData sData = new SearchData();

		for (int i = 0; i < strArr.length; i++) {
			System.out.println("Searching for : " + strArr[i]);
			sthread[i] = new MySearchThread(sData, strArr[i]);
			sthread[i].start();
		}
		for (int i = 0; i < strArr.length; i++) {
			try {
				sthread[i].join();
			} catch (InterruptedException e) {
				System.out.println(e.getMessage());
			}
		}

	}

}
