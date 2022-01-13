package entity;

public class Message {
  private int mid;
  private String caption;
  private String transmissionTime;
  private String conText;
  private int blind;
  private int delid;
  private String rname;
  private String cname;
  private int state;
  private int collect;
  
public int getState() {
	return state;
}
public void setState(int state) {
	this.state = state;
}
public int getCollect() {
	return collect;
}
public void setCollect(int collect) {
	this.collect = collect;
}
public int getMid() {
	return mid;
}
public void setMid(int mid) {
	this.mid = mid;
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
public int getBlind() {
	return blind;
}
public void setBlind(int blind) {
	this.blind = blind;
}
public int getDelid() {
	return delid;
}
public void setDelid(int delid) {
	this.delid = delid;
}
public String getRname() {
	return rname;
}
public void setRname(String rname) {
	this.rname = rname;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
@Override
public String toString() {
	return "Message [mid=" + mid + ", caption=" + caption
			+ ", transmissionTime=" + transmissionTime + ", conText=" + conText
			+ ", blind=" + blind + ", delid=" + delid + ", rname=" + rname
			+ ", cname=" + cname + ", state=" + state + ", collect=" + collect
			+ "]";
}
  
}
