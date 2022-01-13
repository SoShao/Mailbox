package dao.Impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import dao.BaseDao;
import dao.User_infoDao;
import entity.User_info;

public class User_infoDaoImpl extends BaseDao implements User_infoDao {



	@Override
	public int addUser(User_info user) {
		// TODO Auto-generated method stub
		String sql="insert into `user_info` values(NULL,?,?)";
		Object[]objs={user.getUserName(),user.getPassword()};
		
		return this.executeUpdate(sql, objs);
	}

	@Override
	public User_info getUserByName(String userName) {

		ResultSet rs=null;

		try {
			String sql="select * from `user_info` where Username=?";
			Object[]objs={userName};
			User_info user=null;
			rs=this.executeQuery(sql, objs);
			if(rs.next()){
				user=new User_info();
				user.setId(rs.getInt("uid"));
				user.setPassword(rs.getString("password"));
				user.setUserName(rs.getString("userName"));
			}
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(rs);
		}
		return null;

	}

	@Override
	public boolean checkUserName(String userName) {
		ResultSet rs=null;

		try {
			String sql="select * from `user_info` where Username=?";
			Object[]objs={userName};
			User_info user=null;
			rs=this.executeQuery(sql, objs);
			if(rs.next()){
				user=new User_info();
				user.setId(rs.getInt("uid"));
				user.setPassword(rs.getString("password"));
				user.setUserName(rs.getString("userName"));
			}
			if(user!=null){
				return true;
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(rs);
		}
		return false;

	}

}
