package com.demo.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class TestAppendFile {

	public static void main(String[] args) {
		File f = new File("test1copy.txt");
		FileOutputStream fos = null;
		try {
			if (f.exists()) {
				fos = new FileOutputStream(f, true);
			} else {
				fos = new FileOutputStream(f);
			}
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		}

		try (FileInputStream fis = new FileInputStream("test.txt"); FileOutputStream fos1 = fos;) {
			int c = fis.read();
			while (c != -1) {
				fos1.write(c);
				c = fis.read();
			}
			System.out.println("file copied and Appended");

		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}

	}

}
