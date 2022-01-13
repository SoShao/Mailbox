package dao;

import java.util.List;

import entity.Message;

public interface MessageDao {
	List<Message> getMsgList(String rname,String cname,int currpage,int pagesize);///得到邮件数据
	int getCount(String rname,String cname);//得到条数

	int updateMsg(int mid);///删除单行数据
  
  
	int updateMsgList(String cname,String rname);///删除多行数据

	int deleteMsg(int mid);///彻底删除

	int deleteMsgList(String cname,String rname);///删除所有

	int updateState(String cname,String rname);//全部已读
   
	Message getMessage(int mid);
}
