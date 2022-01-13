package service.Impl;

import java.util.ArrayList;
import java.util.List;

import service.User_infoService;
import util.SecurityUtils;
import dao.User_infoDao;
import dao.Impl.User_infoDaoImpl;
import entity.User_info;

public class User_infoServiceImpl implements User_infoService{
	User_infoDao user_infoDao=new User_infoDaoImpl();
	@Override
	public User_info loginEmail(String userName, String password) {
		// TODO Auto-generated method stub
		User_info user=user_infoDao.getUserByName(userName);
		if(user.getPassword().equals(SecurityUtils.strToMD5(password))){
			return user;
		}
		return null;
	}
	@Override
	public int addUser(User_info user) {
		// TODO Auto-generated method stub
		user.setPassword(SecurityUtils.strToMD5(user.getPassword()));
		return user_infoDao.addUser(user);
	}
	@Override
	public boolean checkUser_info(String userName) {
		// TODO Auto-generated method stub
		return user_infoDao.checkUserName(userName);
	}
public static void main(String[] args) {
	User_infoService user_info=new User_infoServiceImpl();
	String[]userName={"sa","cpsdd","546"};
	for (int i = 0; i < userName.length; i++) {
		if(user_info.checkUser_info(userName[i])){
			System.out.println("1215");
		}else{
			System.out.println(userName[i]+"该用户不存在");
		}
	}
}

}
