package day_03;

import java.util.Scanner;

public class StudentService {

	private static Student[] studentArr;
	private static int count;

	static {
		studentArr = new Student[10];
		studentArr[0] = new Student(01, "Pratik Bharambe", 10, 20, 30);
		studentArr[1] = new Student(02, "Divya Chaudhari", 40, 50, 60);
		count = 2;
	}

	public static int printMenuAndGetChoice() {
		System.out.println("1. Enter new Student.");
		System.out.println("2. Display All Students.");
		System.out.println("3. Search by Id.");
		System.out.println("4. Search by name.");
		System.out.println("5. Update student name.");
		System.out.println("6. Delete by id.");
		System.out.println("7. Average of marks by id.");
		System.out.println("8. Exit.");
		System.out.println("Enter your choice : ");
		Scanner sc = new Scanner(System.in);
		return sc.nextInt();
	}

	// methood to add new student in the database (case 01)
	public static void addStudent() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter id : ");
		int id = sc.nextInt();
		System.out.print("Enter name : ");
		sc.nextLine();
		String name = sc.nextLine();
		System.out.print("Enter M1 marks : ");
		int m1 = sc.nextInt();
		System.out.print("Enter M2 marks : ");
		int m2 = sc.nextInt();
		System.out.print("Enter M3 marks : ");
		int m3 = sc.nextInt();

		studentArr[count] = new Student(id, name, m1, m2, m3);
		count++;

	}

	// method to display all the avaliable students (case 02)
	public static void displayAll() {
		for(Student s: studentArr) {
			if(s != null)
				System.out.println(s);
		}
	}

	// method to find student by id assumimg id to be unique (case 03)
	public static Student getStudentById(int id) {
		for (Student s : studentArr) {
			if (s != null) {
				if (s.getId() == id)
					return s;
			} else {
				return null;
			}
		}
		return null;
	}

	// method to find student by student name (case 04)
	public static Student[] getStudentsByName(String name) {
		Student[] gotStudentByName = new Student[studentArr.length];
		int cnt = 0;
		for (Student student : studentArr) {
			if (student != null) {
				if (student.getName().equals(name)) {
					gotStudentByName[cnt] = student;
					cnt++;
				}
			} else {
				break;
			}
		}
		if (count > 0)
			return gotStudentByName;
		else
			return null;
	}

	// method to update name of student (case 05)
	public static boolean updateNameOfStudent(int id, String newName) {
		Student student = getStudentById(id);
		if (student != null) {
			student.setName(newName);
			return true;
		}
		return false;
	}

	// method to delete student by id (case 06)
	public static boolean deletebyId(int id) {
		for (int i = 0; i < studentArr.length; i++) {
			if (studentArr[i].getId() == id) {
				for (int j = i; j < count; j++) {
					// shift student object to left to get the student deleted from i th position
					studentArr[j] = studentArr[j + 1];
				}
				count--;
				return true;
			}
		}
		return false;
	}
	
	
	// Method to find average of marks
	public static float getAverage() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter student id : ");
		int id = sc.nextInt();
		Student sm = getStudentById(id);
		float average = (sm.getM1() + sm.getM2() + sm.getM3())/3;
		return average;
	}

}
