package cn.edu.zzti.dao.impl.mysql.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import cn.edu.zzti.dao.AuctionDAO;
import cn.edu.zzti.entity.AuctionDO;
import cn.edu.zzti.util.jdbc.DBUtil;

public class AuctionDAOImpl implements AuctionDAO{

	@Override
	public AuctionDO getAuction(String id) throws SQLException {
		Connection conn = DBUtil.getConnection();
		Statement st = conn.createStatement();
		String sql = "select * from auction where id="+id;
		st.execute(sql);
		return null;
	}

	@Override
	public void addAuction(AuctionDO auc) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<AuctionDO> getAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteAuction(String id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAuction(AuctionDO auc) throws SQLException {
		// TODO Auto-generated method stub
		
	}

}
