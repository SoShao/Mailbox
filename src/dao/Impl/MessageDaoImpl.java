package dao.Impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import dao.MessageDao;
import entity.Message;
import entity.User_info;

public class MessageDaoImpl extends BaseDao implements MessageDao {











	@Override
	public int getCount(String rname, String cname) {
		// TODO Auto-generated method stub
		String sql="select count(1)  from `message` where 1=1";
		ResultSet rs=null;

		try {
			List<Object>objs=new ArrayList<Object>();
			if(!"".equals(rname)&&rname!=null){
				sql+=" and rname=?";
				objs.add(rname);
			}else if(!"".equals(cname)&&cname!=null){
				sql+=" and cname=?";
				objs.add(cname);
			}
			rs=this.executeQuery(sql, objs.toArray());
			if(rs.next()){
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(rs);
		}
		return 0;
	}

	@Override
	public List<Message> getMsgList(String rname, String cname, int currpage,
			int pagesize) {
		ResultSet rs=null;

		try {
			String sql="select * from  `message` where 1=1";

			List<Object>objs=new ArrayList<Object>();
			if(!"".equals(rname)&&rname!=null){
				sql+=" and rname=?";
				objs.add(rname);
			}else if(!"".equals(cname)&&cname!=null){
				sql+=" and cname=?";
				objs.add(cname);
			}
			sql+="limit ?,?";
			objs.add(currpage);
			objs.add(pagesize);

			rs=this.executeQuery(sql, objs.toArray());
			List<Message>list=new ArrayList<Message>();
			while(rs.next()){
				Message msg=new Message();
				msg.setBlind(rs.getInt("blind"));
				msg.setCaption(rs.getString("caption"));
				msg.setCname(rs.getString("cname"));
				msg.setDelid(rs.getInt("delid"));
				msg.setTransmissionTime(rs.getString("transmissionTime"));
				msg.setRname(rs.getString("rname"));
				msg.setMid(rs.getInt("mid"));
				msg.setConText(rs.getString("conText"));
				msg.setCollect(rs.getInt("collect"));
				msg.setState(rs.getInt("state"));
				list.add(msg);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}







	@Override
	public int updateState(String cname, String rname) {
		// TODO Auto-generated method stub
		String sql=" update `message` set state=1 where 1=1";
		List<Object>objs=new ArrayList<Object>();
		if(!"".equals(rname)&&rname!=null){
			sql+=" and rname=?";
			objs.add(rname);
		}else if(!"".equals(cname)&&cname!=null){
			sql+=" and cname=?";
			objs.add(cname);
		}
		return this.executeUpdate(sql, objs.toArray());
	}


	@Override
	public int updateMsg(int mid) {
		// TODO Auto-generated method stub
		String sql="update `message` set delid='1' where mid=?";
		Object[]objs={mid};
		return this.executeUpdate(sql, objs);
	}


	@Override
	public int updateMsgList(String cname, String rname) {
		// TODO Auto-generated method stub
		String sql="update `message` set delid='1' where 1=1";
		List<Object>objs=new ArrayList<Object>();
		if(!"".equals(cname)&&cname!=null){
			sql+=" and   cname=?";
			objs.add(cname);
		} 
		if(!"".equals(rname)&&rname!=null){
			sql+=" and  rname=?";
			objs.add(cname);
		}
		return this.executeUpdate(sql, objs.toArray());
	}


	@Override
	public int deleteMsg(int mid) {
		// TODO Auto-generated method stub
		String sql="delete from `message` where and `mid`=?";
		Object[]objs={mid};
		return this.executeUpdate(sql, objs);
	}


	@Override
	public int deleteMsgList(String cname, String rname) {
		// TODO Auto-generated method stub\
		String sql="delete from `message` where delid='1' 1=1";
		List<Object>objs=new ArrayList<Object>();
		if(!"".equals(cname)&&cname!=null){
			sql+=" and  cname=?";
			objs.add(cname);
		} 
		if(!"".equals(rname)&&rname!=null){
			sql+=" and  rname=?";
			objs.add(cname);
		}
		return this.executeUpdate(sql, objs.toArray());
	}

	@Override
	public Message getMessage(int mid) {
		// TODO Auto-generated method stub
        ResultSet rs=null;
         try {
     		 String sql="select * from `message` where mid=?";
    		 Object[]objs={mid};
             rs=this.executeQuery(sql, objs);
             Message msg=null;
             
			if(rs.next()){
				msg=new Message();
				msg.setBlind(rs.getInt("blind"));
				msg.setCaption(rs.getString("caption"));
				msg.setCname(rs.getString("cname"));
				msg.setDelid(rs.getInt("delid"));
				msg.setTransmissionTime(rs.getString("transmissionTime"));
				msg.setRname(rs.getString("rname"));
				msg.setMid(rs.getInt("mid"));
				msg.setConText(rs.getString("conText"));
				msg.setCollect(rs.getInt("collect"));
				msg.setState(rs.getInt("state"));
			 }
			return msg;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(rs);
		}
         return null;
         
	}



	


}
