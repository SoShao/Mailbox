package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class BaseDao {

	private Connection conn;
	private PreparedStatement ps;

	// ������
	public void getConn() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/qqmaildb", "root", "123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// �ر� ��ɾ�Ĺ�2�� ��ѯ 3��
	public void closeAll(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	// ��ѯ
	public ResultSet executeQuery(String sql, Object[] objs) {
		getConn();
		try {
			ps = conn.prepareStatement(sql);
			if (objs != null) {
				for (int i = 0; i < objs.length; i++) {
					ps.setObject(i + 1, objs[i]);
				}
			}
			return ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	// ��ɾ��
	public int executeUpdate(String sql, Object[] objs) {
		getConn();
		try {
			ps = conn.prepareStatement(sql);
			if (objs != null) {
				for (int i = 0; i < objs.length; i++) {
					ps.setObject(i + 1, objs[i]);
				}
			}
			return ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(null);
		}
		return -1;
	}

	// ����
	public boolean executeTran(List<String> sqls, List<Object[]> objs) {
		getConn();
		try {
			conn.setAutoCommit(false);
			for (int i = 0; i < sqls.size(); i++) {
				ps = conn.prepareStatement(sqls.get(i));
				if (objs != null) {
					for (int j = 0; j < objs.get(i).length; j++) {
						ps.setObject(j + 1, objs.get(i)[j]);
					}
				}
				ps.executeUpdate();
			}
			return true;
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}finally{
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			this.closeAll(null);
		}

		return false;
	}
}
