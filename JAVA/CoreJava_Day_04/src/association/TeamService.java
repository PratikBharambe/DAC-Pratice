package association;

import java.util.Scanner;

public class TeamService {
	
	static Team[] tarr;
	static int count;
	
	static {
		tarr = new Team[30];
		
		Player[] plist1 = new Player[15];
		plist1[0] = new Player(1, "Yuvraj", "Allrounder");
		plist1[1] = new Player(2, "Rohit Sharma", "Batsman");
		tarr[0] = new Team(10, "CSK", "Dhoni", new Player(1, "Yuvraj", "Allrounder"), plist1);
		
		Player[] plist2 = new Player[15];
		plist2[0] = new Player(11, "Hardik Pandya", "Allrounder");
		plist2[1] = new Player(12, "Virat Kohali", "Batsman");
		tarr[1] = new Team(11, "MI", "Sachin", new Player(1, "Hardik Pandya", "Allrounder"), plist2);
		
		count = 2;
	}

	public static void addNewTeam() {
		Scanner sc = new Scanner(System.in);
		System.out.println("enetr tid");
		int tid = sc.nextInt();
		sc.nextLine(); // to remove \n from the scanner buffer
		System.out.println("enter team name");
		String tnm = sc.nextLine();
		System.out.println("enter coach name");
		String cname = sc.nextLine();
		System.out.println("enetr captian id");
		int cpid = sc.nextInt();
		sc.nextLine();
		System.out.println("enter captian name");
		String cpname = sc.nextLine();
		System.out.println("enter captian speciality");
		String speciality = sc.nextLine();
		Player p = new Player(cpid, cpname, speciality);
		Player[] plist = new Player[15];
		int cnt = 0;
		String ans = "y";
		do {
			System.out.println("enetr player id");
			int pid = sc.nextInt();
			sc.nextLine();
			System.out.println("enter player name");
			String pname = sc.nextLine();
			System.out.println("enter player speciality");
			String pspeciality = sc.nextLine();
			plist[cnt] = new Player(pid, pname, pspeciality);
			cnt++;
			System.out.println("Do you want to continue?(y/n)");
			ans = sc.next();
		} while (ans.equals("y"));
		tarr[count] = new Team(tid, tnm, cname, p, plist);
		count++;

	}

	public static Team[] findAll() {
		return tarr;
	}

	public static Team serachByPlayerId(int pid) {
		for (Team t : tarr) {
			if (t != null) {
				// retrieve list of players from team
				Player[] plst = t.getPlayerList();
				// navigate through player list of team
				for (Player p : plst) {
					if (p != null) {
						if (p.getPlayerId() == pid) {
							return t;
						}
					} else {
						break; // player not found in the team
					}

				}

			} else {
				break;
			}
		}
		return null;
	}

	public static boolean addNewPlayer(int tid) {
		Team t = findTeamById(tid);
		Scanner sc = new Scanner(System.in);
		// if team exists then add player
		if (t != null) {
			System.out.println("enetr player id");
			int pid = sc.nextInt();
			sc.nextLine();
			System.out.println("enter player name");
			String pname = sc.nextLine();
			System.out.println("enter player speciality");
			String pspeciality = sc.nextLine();
			Player p = new Player(pid, pname, pspeciality);
			// retrieve player list from team
			Player[] plst = t.getPlayerList();
			// find position to add new player
			for (int i = 0; i < plst.length; i++) {
				if (plst[i] == null) {
					plst[i] = p;
					return true;
				}
			}

		} else {
			return false;
		}
		return false;

	}

	// find team by id
	public static Team findTeamById(int tid) {
		for (Team t : tarr) {
			if (t != null) {
				if (t.getTeamId() == tid) {
					return t;
				}
			} else {
				break;
			}

		}
		return null;
	}

}