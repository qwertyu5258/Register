package dtodao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dao {

	private static Dao instance = null;

	private Dao() {
	}

	public static Dao getInstance() {
		if (instance == null) {
			synchronized (Dao.class) {

				instance = new Dao();
			}
		}
		return instance;
	}
	public void insertArticle(Dto article) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
//		int SVNUM = article.getSVNUM();
//		int ST1 = article.getST1();
//		int BF1 = article.getBF1();
//		int LOL = article.getLOL();
//		int BB = article.getBB();
//		int SOCCER = article.getSOCCER();

		String sql = "";
		try {
			System.out.println("여기 3,5");
			conn = ConnUtil.getConnection();
			System.out.println("여기4!!!");

			pstmt = conn.prepareStatement("update survey1 set st1=?, bf1=?, lol=?,  bb=?, soccer=?");
			// pstmt.setInt(1, article.getST1());
			// pstmt.setInt(2, article.getBF1());
			// pstmt.setInt(3, article.getLOL());
			// pstmt.setInt(4, article.getBB());
			// pstmt.setInt(5, article.getSOCCER());
			pstmt.setInt(1, 2);
			pstmt.setInt(2, 2);
			pstmt.setInt(3, 2);
			pstmt.setInt(4, 2);
			pstmt.setInt(5, 2);

			pstmt.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("e.printstacktrace");
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
				}

		}

	}

	public int getArticle() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x1 = 0;
		int x2 = 0;
		int x3 = 0;
		int x4 = 0;
		int x5 = 0;
		int x6 = 0;

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select * from survey1");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				x1 = rs.getInt(1);
				x2 = rs.getInt(2);
				x3 = rs.getInt(3);
				x4 = rs.getInt(4);
				x5 = rs.getInt(5);
				x6 = rs.getInt(6);
				Dto article = new Dto();
				article.setST1(x2);
				article.setBF1(x3);
				article.setLOL(x4);
				article.setBB(x5);
				article.setSOCCER(x6);
				System.out.println("Article : ");
				System.out.println(article.getST1());
				System.out.println(article.getBF1());
				System.out.println(article.getLOL());
				System.out.println(article.getBB());
				System.out.println(article.getSOCCER());

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
				}
		}

		return x1;
	}

	//////////////////////

	public String insertArticle2(int x1, int x2, int x3, int x4, int x5) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int tmpx1 = 0;
		int tmpx2 = 0;
		int tmpx3 = 0;
		int tmpx4 = 0;
		int tmpx5 = 0;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select * from survey1");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				tmpx1 = rs.getInt(2);
				tmpx2 = rs.getInt(3);
				tmpx3 = rs.getInt(4);
				tmpx4 = rs.getInt(5);
				tmpx5 = rs.getInt(6);

			}
			tmpx1+=x1;
			tmpx2+=x2;
			tmpx3+=x3;
			tmpx4+=x4;
			tmpx5+=x5;
			System.out.println("tmpx 구간 : ");
			System.out.println(tmpx1);
			System.out.println(tmpx2);
			System.out.println(tmpx3);
			System.out.println(tmpx4);
			System.out.println(tmpx5);
			
			pstmt= conn.prepareStatement("update survey1 set st1=?, bf1=?, lol=?,  bb=?, soccer=?");
			pstmt.setInt(1, tmpx1);
			pstmt.setInt(2, tmpx2);
			pstmt.setInt(3, tmpx3);
			pstmt.setInt(4, tmpx4);
			pstmt.setInt(5, tmpx5);
			
			pstmt.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
				}
		}
		 String A=Integer.toString(tmpx1)+","+Integer.toString(tmpx2)+","+Integer.toString(tmpx3)+","+Integer.toString(tmpx4)+","+Integer.toString(tmpx5);
		System.out.println(A);
		 return A;
	}
}
