package association;

public class Player {

	private int playerId;
	private String playername;
	private String speciality;

	public Player() {
		super();
	}

	public Player(int playerId, String playername, String speciality) {
		super();
		this.playerId = playerId;
		this.playername = playername;
		this.speciality = speciality;
	}

	public String getPlayername() {
		return playername;
	}

	public void setPlayername(String playername) {
		this.playername = playername;
	}

	public String getSpeciality() {
		return speciality;
	}

	@Override
	public String toString() {
		return "Player [playerId=" + playerId + ", playername=" + playername + ", speciality=" + speciality + "]";
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public int getPlayerId() {
		return playerId;
	};

}
