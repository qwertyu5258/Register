package dtodao;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnUtil {

	private static DataSource ds;
	static {
		try {
			InitialContext ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/myOracle");
			System.out.println("connutil ���� ");
		}catch(NamingException e){}
		
		}
	
	public static Connection getConnection() throws SQLException{
		return ds.getConnection();
		
	}
}
