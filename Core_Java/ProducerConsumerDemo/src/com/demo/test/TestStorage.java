package com.demo.test;

import com.demo.beans.Storage;
import com.demo.threads.Consumer;
import com.demo.threads.Producer;

public class TestStorage {

	public static void main(String[] args) {
		Storage srg = new Storage();
		Producer pro = new Producer(srg);
		Consumer con = new Consumer(srg);

		pro.start();
		con.start();
	}

}
