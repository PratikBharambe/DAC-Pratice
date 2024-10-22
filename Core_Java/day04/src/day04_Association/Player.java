package day04_Association;

public class Player {

	private int pId;
	private String pName;
	private String spec;

	public Player() {
		super();
	}

	public Player(int pId, String pName, String spec) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.spec = spec;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public int getpId() {
		return pId;
	}

	@Override
	public String toString() {
		return "Player [pId=" + pId + ", pName=" + pName + ", spec=" + spec + "]";
	}

}
