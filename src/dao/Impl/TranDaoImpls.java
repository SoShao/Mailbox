package dao.Impl;

import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import dao.TranDao;
import entity.Message;

public class TranDaoImpls extends BaseDao implements TranDao {

	@Override
	public boolean addMsg(List<Message> msg) {
		// TODO Auto-generated method stub
		List<String> sql=new ArrayList<String>();
		String sql_01="insert into `message` values(NULL,?,?,?,?,?,?,?,?,?)";
		boolean check=false;
		List<Object[]> objs=new ArrayList<Object[]>();
		
		for (int i = 0; i <msg.size(); i++) {
			sql.add(sql_01);
			Object[] objs1={msg.get(i).getCaption(),msg.get(i).getTransmissionTime(),msg.get(i).getConText(),msg.get(i).getBlind(),msg.get(i).getRname(),msg.get(i).getCname(),msg.get(i).getState(),msg.get(i).getCollect(),msg.get(i).getDelid()};
			objs.add(objs1);
		
			
		}
		check= this.executeTran(sql, objs);
		return check;
	}









}
