package com.demo.test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class TestCopyFile {

	public static void main(String[] args) {
		FileInputStream fis = null;
		FileOutputStream fos = null;

		try {
			fis = new FileInputStream("test.txt");
			fos = new FileOutputStream("TextCopy.txt");

			int c = fis.read();
			while (c != -1) {
				fos.write(c);
				c = fis.read();
			}
			System.out.println("File Copied");
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				fis.close();
				fos.close();
			} catch (IOException e) {
				System.out.println(e.getMessage());
			}

		}

	}

}
