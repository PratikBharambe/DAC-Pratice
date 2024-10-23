package com.demo.test;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Scanner;

public class TestDataOutputStream {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		try (DataOutputStream dos = new DataOutputStream(new FileOutputStream("test1copy.txt"));){
			
			System.out.println("Enter id : ");
			int id = sc.nextInt();
			dos.writeInt(id);
			
			System.out.println("Enter name : ");
			String name  =sc.next();
			dos.writeUTF(name);
			
			System.out.println("Enter salary : ");
			double sal = sc.nextDouble();
			dos.writeDouble(sal);
			
		} catch (IOException e) {
			System.out.println("IoException");
		}
		
		
		try (DataInputStream dis = new DataInputStream(new FileInputStream("test1copy.txt"));){
			int id = dis.readInt();
			String nm = dis.readUTF();
			double sal = dis.readDouble();
			System.out.println(id + " " + nm + " " + sal + " ");
		} catch (IOException e) {
			System.out.println("IoException");
		}
	}
}
