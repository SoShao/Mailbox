package service;

import util.PageInfo;

public interface MessageService {
 PageInfo pageInfo(String cname,String rname,int currgeNo,int pagesize);
  
	int updateMsg(int mid);///删除单行数据


	int updateMsgList(String cname,String rname);///删除多行数据

	int deleteMsg(int mid);///彻底删除

	int deleteMsgList(String cname,String rname);///删除所有

	int updateState(String cname,String rname);//全部已读
}
