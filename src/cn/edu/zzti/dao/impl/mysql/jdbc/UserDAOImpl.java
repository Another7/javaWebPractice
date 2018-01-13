package cn.edu.zzti.dao.impl.mysql.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import cn.edu.zzti.dao.UserDAO;
import cn.edu.zzti.entity.UserDO;
import cn.edu.zzti.util.jdbc.DBUtil;

public class UserDAOImpl implements UserDAO{

	@Override
	public List<UserDO> getAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}  

	@Override
	public UserDO findUser(String username, String password)
			throws SQLException {
		Connection conn = DBUtil.getConnection();
		String sql="select * from user where username = ? and password=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
			UserDO user = new UserDO();
			return user;
		}
		return null;
	}

	@Override
	public int insertUser(UserDO u) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUser(String id) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
