package association;

import java.util.Arrays;

public class Team {

	private int teamId;
	private String teamName;
	private String coach;
	private Player captain;
	private Player[] playerList;

	public Team() {
		super();
	}

	public Team(int teamId, String teamName, String coach, Player captain, Player[] playerList) {
		super();
		this.teamId = teamId;
		this.teamName = teamName;
		this.coach = coach;
		this.captain = captain;
		this.playerList = playerList;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getCoach() {
		return coach;
	}

	public void setCoach(String coach) {
		this.coach = coach;
	}

	public Player getCaptain() {
		return captain;
	}

	public void setCaptain(Player captain) {
		this.captain = captain;
	}

	public Player[] getPlayerList() {
		return playerList;
	}

	public void setPlayerList(Player[] playerList) {
		this.playerList = playerList;
	}

	public int getTeamId() {
		return teamId;
	}

	@Override
	public String toString() {
		return "Team [teamId=" + teamId + ", teamName=" + teamName + ", coach=" + coach + ", captain=" + captain
				+ ", playerList=" + Arrays.toString(playerList) + "]";
	}

}
