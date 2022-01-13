package dao;

import entity.User_info;

public interface User_infoDao {
   User_info getUserByName(String userName);///登录
   int addUser(User_info user);////添加新用户信息
   boolean checkUserName(String userName);////判断是否存在
}
