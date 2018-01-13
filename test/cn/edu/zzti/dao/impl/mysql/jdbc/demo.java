package cn.edu.zzti.dao.impl.mysql.jdbc;

import static org.junit.Assert.fail;

import java.sql.SQLException;

import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import cn.edu.zzti.dao.UserDAO;
import cn.edu.zzti.entity.UserDO;
import cn.edu.zzti.util.DAOFactory;

public class demo {
UserDAO userDAO = (UserDAO) DAOFactory.getDAO(DAOFactory.USER_DAO_CLASS_NAME);
	
	

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		fail("Not yet implemented");
	}
	@Test
	public void testFindUser(){
		String username="test' or 1=1 #";
		String password= "";
		try {
			Assert.assertNull(userDAO.findUser(username, password));
		} catch (SQLException e) {
			e.printStackTrace();
			fail("出现异常");
		}
	}

}
