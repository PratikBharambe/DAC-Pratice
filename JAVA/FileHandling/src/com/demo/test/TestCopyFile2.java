package com.demo.test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class TestCopyFile2 {

	public static void main(String[] args) {
		try (FileInputStream fis = new FileInputStream("test.txt");
				FileOutputStream fos = new FileOutputStream("test1copy.txt");) {
			int c = fis.read();
			while (c != -1) {
				fos.write(c);
				c = fis.read();
			}
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}

	}

}
