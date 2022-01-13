package dao.Impl;

import dao.BaseDao;
import dao.DraftmsgDao;
import entity.Draftmsg;

public class DraftmsgDaoImpl extends BaseDao implements DraftmsgDao {

	@Override
	public int addDraftmsg(Draftmsg draftmsg) {
		// TODO Auto-generated method stub
		String sql="insert into `draftmsg` values(NULL,?,?,?,?,?,?)";
		Object[]objs={draftmsg.getUid(),draftmsg.getCaption(),draftmsg.getTransmissionTime(),draftmsg.getConText(),draftmsg.getCollect(),draftmsg.getCname()};
		
		return this.executeUpdate(sql, objs);
	}

	@Override
	public int deleteDraftmsg(int did) {
		// TODO Auto-generated method stub
		String sql="delete from `draftmsg` where `did`=?";
		Object[]objs={did};
		return this.executeUpdate(sql, objs);
	}

	@Override
	public int deleteDraftList(int uid) {
		// TODO Auto-generated method stub
		String sql="delete from `draftmsg` where `uid`=?";
		Object[]objs={uid};
		return this.executeUpdate(sql, objs);
	
	}

}
