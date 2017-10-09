package dtodao;

import java.sql.Timestamp;

public class Dto {
	private int	SVNUM;
	private int ST1;
	private int BF1;
	private int LOL;
	private int BB;
	private int SOCCER;
	private Timestamp regdate;
	private String ip;
	
	public Dto() {}
	public int getSVNUM() {
		return SVNUM;
	}
	public void setSVNUM(int sVNUM) {
		SVNUM = sVNUM;
	}
	public int getST1() {
		return ST1;
	}
	public void setST1(int sT1) {
		ST1 = sT1;
	}
	public int getBF1() {
		return BF1;
	}
	public void setBF1(int bF1) {
		BF1 = bF1;
	}
	public int getLOL() {
		return LOL;
	}
	public void setLOL(int lOL) {
		LOL = lOL;
	}
	public int getBB() {
		return BB;
	}
	public void setBB(int bB) {
		BB = bB;
	}
	public int getSOCCER() {
		return SOCCER;
	}
	public void setSOCCER(int sOCCER) {
		SOCCER = sOCCER;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	

}
