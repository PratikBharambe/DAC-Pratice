package com.demo.test;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class TestBufferedReader {

	public static void main(String[] args) {
		try (BufferedReader br = new BufferedReader(new FileReader("TextCopy.txt"));) {
			String str = br.readLine();
			while (str != null) {
				System.out.println(str);
				str = br.readLine();
			}

		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}

	}

}
