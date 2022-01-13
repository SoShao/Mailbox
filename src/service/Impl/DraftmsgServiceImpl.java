package service.Impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import service.DraftmsgService;
import dao.DraftmsgDao;
import dao.Impl.DraftmsgDaoImpl;
import entity.Draftmsg;

public class DraftmsgServiceImpl implements DraftmsgService {
DraftmsgDao draftmsgDao=new DraftmsgDaoImpl();
	@Override
	public int addDraftmsg(Draftmsg draftmsg) {
		// TODO Auto-generated method stub
		//我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //获取String类型的时间
        String createdate = sdf.format(date);
        draftmsg.setTransmissionTime(createdate);
        
		return draftmsgDao.addDraftmsg(draftmsg);
	}

	@Override
	public int deleteDraftmsg(int did) {
		// TODO Auto-generated method stub
		return draftmsgDao.deleteDraftmsg(did);
	}

	@Override
	public int deleteDraftList(int uid) {
		// TODO Auto-generated method stub
		return draftmsgDao.deleteDraftList(uid);
	}

}
