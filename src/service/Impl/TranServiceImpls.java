package service.Impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import service.TranService;
import dao.TranDao;
import dao.Impl.TranDaoImpls;
import entity.Message;

public class TranServiceImpls implements TranService{
TranDao tranDao =new TranDaoImpls();

@Override
public boolean addMsg(List<Message> msg) {
	// TODO Auto-generated method stub
	//我要获取当前的日期
    Date date = new Date();
    //设置要获取到什么样的时间
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    //获取String类型的时间
    String createdate = sdf.format(date);
    for (int i = 0; i < msg.size(); i++) {
		msg.get(i).setTransmissionTime(createdate);
	}
	return tranDao.addMsg(msg);
}

 




  
}
