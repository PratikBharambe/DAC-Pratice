package day04_Association;

import java.util.Scanner;

public class TestTeamPlayer {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int choice = 0;
		do {
			System.out.println("1. Add a new Team");
			System.out.println("2. Delete the team");
			System.out.println("3. Search by tid");
			System.out.println("4. Search by playerid");
			System.out.println("5. Delete player from the team");
			System.out.println("6. Add a new player in the team");
			System.out.println("7. Display all");
			System.out.println("8. Exit");
			System.out.println("Choice: ");
			choice = sc.nextInt();

			switch (choice) {

			case 1:
				TeamService.addNewTeam();
				break;

			case 2:
				System.out.println("Enter id for delete");
				int id = sc.nextInt();
				boolean status = TeamService.deleteTeamById(id);
				if (status) {
					System.out.println("deleted successfully");
				} else {
					System.out.println("Not found");
				}
				break;

			case 3:
				System.out.println("Enter team id to search");
				int tid = sc.nextInt();
				Team t = TeamService.findTeamById(tid);
				if (t != null) {
					System.out.println(t);
				} else {
					System.out.println("not found");
				}

				break;

			case 4:
				System.out.println("Enter playerid to search team");
				int pid = sc.nextInt();
				t = TeamService.serachByPlayerId(pid);
				if (t != null) {
					System.out.println(t);
				} else {
					System.out.println("not found");
				}
				break;

			//TO-DO error checking
			case 5:
				System.out.println("Enter the Team id from which you want to delete player :");
				tid = sc.nextInt();
				System.out.println("Enter the Player id which you want to delete :");
				pid = sc.nextInt();
				status = TeamService.deleteTeamPlayerById(tid , pid);
				if(status)
					System.out.println("\tPlayer Deleted Successfully.");
				else
					System.out.println("\tPlayer not found");
				break;
				
			case 6:

				System.out.println("enetr teamid");
				tid = sc.nextInt();
				boolean status1 = TeamService.addNewPlayer(tid);
				if (status1) {
					System.out.println("player added successfully");
				} else {
					System.out.println("team not found");
				}
				break;

			case 7:
				Team[] tarr = TeamService.findAll();
				for (Team t1 : tarr) {
					if (t1 != null) {
						System.out.println(t1);
					} else {
						break;
					}
				}

				break;

			case 8:
				System.out.println("Thank you for visiting....");
				sc.close();
				break;

			default:
				break;

			}
		} while (choice != 8);

	}

}
