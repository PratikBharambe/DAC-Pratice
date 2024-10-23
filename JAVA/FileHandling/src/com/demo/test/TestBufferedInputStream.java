package com.demo.test;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class TestBufferedInputStream {
	public static void main(String[] args) {
		
		File f = new File("test1copy.txt");
		
		BufferedOutputStream bos =  null;
		
		try{
			if(f.exists()) {
				bos = new BufferedOutputStream(new FileOutputStream(f, true));
			}else {
				bos = new BufferedOutputStream(new FileOutputStream(f));
			}
		}catch(FileNotFoundException e) {
			System.out.println("File not found");
		}
		
		try (BufferedInputStream bis = new BufferedInputStream(new FileInputStream("test.txt"));
				BufferedOutputStream bos1 = bos;){
			
			int c = bis.read();
			while (c != -1) {
				bos.write(c);
				c = bis.read();
			}
			
		} catch(FileNotFoundException e) {
			System.out.println("File not found");
		}catch(IOException e) {
			System.out.println("read write error");
		}
	}
}
