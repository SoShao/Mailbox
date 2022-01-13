package entity;

public class Draftmsg {
	 private int did;
	 private int uid;
	private String caption;
	private String transmissionTime;
	private String conText;
	private String cname;
	 private int collect;
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getCaption() {
		return caption;
	}
	public void setCaption(String caption) {
		this.caption = caption;
	}
	public String getTransmissionTime() {
		return transmissionTime;
	}
	public void setTransmissionTime(String transmissionTime) {
		this.transmissionTime = transmissionTime;
	}
	public String getConText() {
		return conText;
	}
	public void setConText(String conText) {
		this.conText = conText;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getCollect() {
		return collect;
	}
	public void setCollect(int collect) {
		this.collect = collect;
	}
}
