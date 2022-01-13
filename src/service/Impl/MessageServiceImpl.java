package service.Impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import service.MessageService;
import util.PageInfo;
import dao.MessageDao;
import dao.Impl.MessageDaoImpl;
import entity.Message;

public class MessageServiceImpl  implements MessageService{
  MessageDao messageDao=new MessageDaoImpl();
	@Override
	public PageInfo pageInfo(String cname, String rname, int currgeNo,
			int pagesize) {
		// TODO Auto-generated method stub
	     PageInfo pageInfo=new PageInfo ();
	     int totalCount=messageDao.getCount(rname, cname);
	    List<Message>msgList=messageDao.getMsgList(rname, cname, (currgeNo-1)*pagesize, pagesize);
	     for (int i = 0; i < msgList.size(); i++) {
			msgList.get(i).setTransmissionTime(msgList.get(i).getTransmissionTime().substring(0, 10));
		
			String name= msgList.get(i).getTransmissionTime().replace("-", "");
			StringBuffer stringBuilder1=new StringBuffer(name);
		     
			stringBuilder1.insert(6,"月");
			stringBuilder1.insert(4,"年");
			stringBuilder1.insert(10,"日");
			msgList.get(i).setTransmissionTime(stringBuilder1.toString());
		}
		pageInfo.setPageSize(pagesize);
		pageInfo.setCurrPageNo(currgeNo);
		pageInfo.setTotalCount(totalCount);
		pageInfo.setList(msgList);
	    
		return pageInfo;
	}

	@Override
	public int updateMsg(int mid) {
		// TODO Auto-generated method stub
		
		return messageDao.updateMsg(mid);
	}

	@Override
	public int updateMsgList(String cname, String rname) {
		// TODO Auto-generated method stub
		return messageDao.deleteMsgList(cname, rname);
	}

	@Override
	public int deleteMsg(int mid) {
		// TODO Auto-generated method stub
		return messageDao.deleteMsg(mid);
	}

	@Override
	public int deleteMsgList(String cname, String rname) {
		// TODO Auto-generated method stub
		return messageDao.deleteMsgList(cname, rname);
	}

	@Override
	public int updateState(String cname, String rname) {
		// TODO Auto-generated method stub
		return messageDao.updateState(cname, rname);
	}



}
