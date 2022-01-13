package service;

import entity.User_info;

public interface User_infoService {
     User_info loginEmail(String userName,String password);///登录
     int addUser(User_info user);////添加新用户信息
     boolean checkUser_info(String userName);///判断是否存在
}
