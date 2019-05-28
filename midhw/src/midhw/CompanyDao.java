package midhw;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;



public class CompanyDao {
	

	

	
	DataSource ds = null;
	public CompanyDao() {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/CompanyDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}	
	
	private static final String SELECT_BY_ID
	= "select * from company_info where id=?";

	public CompanyBean select(int id) {
		CompanyBean result = null;
		try(
			Connection conn = ds.getConnection();
			PreparedStatement stmt = conn.prepareStatement(SELECT_BY_ID);
		) {
			stmt.setInt(1, id);
			try (
				ResultSet rset = stmt.executeQuery();					
			){
			if(rset.next()) {						
				result=new CompanyBean();
				result.setId(rset.getInt("id"));
//				result.setId(rset.getInt(Integer.valueOf(id)));
				result.setTaxid(rset.getString("taxid"));
				result.setCompany_name(rset.getString("company_name"));
				result.setCompany_location(rset.getString("company_location"));
				result.setChairman(rset.getString("chairman"));
				result.setCapital(rset.getString("capital"));
				result.setSetup_date(rset.getDate("setup_date"));
				result.setClose_date(rset.getDate("close_date"));
			}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		System.out.println(result);
		return result;
		
	}
	
	private static final String SELECT_ALL = "select id, taxid, company_name,company_location,chairman,capital,setup_date,close_date from company_info";
	
	public List<CompanyBean> select() {
		List<CompanyBean> result = null;
		try(
			Connection conn = ds.getConnection();
			PreparedStatement stmt = conn.prepareStatement(SELECT_ALL);
			ResultSet rset = stmt.executeQuery();				
		) {
			result = new Vector<>();
			if(rset.next()) {						
				CompanyBean temp = new CompanyBean();
				temp.setId(rset.getInt("id"));
				temp.setTaxid(rset.getString("taxid"));
				temp.setCompany_name(rset.getString("company_name"));
				temp.setCompany_location(rset.getString("company_location"));
				temp.setChairman(rset.getString("chairman"));
				temp.setCapital(rset.getString("capital"));
				temp.setSetup_date(rset.getDate("setup_date"));
				
				
				temp.setClose_date(rset.getDate("close_date"));		
				result.add(temp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		System.out.println(result);
		return result;
		
	}

	private static final String UPDATE ="UPDATE company_info SET taxid=?,company_name=?,company_location=?,chairman=?,capital=?,setup_date=?,close_date=? where id=?";
	public void update(CompanyBean bean) throws SQLException {
		
	
		try (Connection conn = ds.getConnection(); 
			PreparedStatement stmt = conn.prepareStatement(UPDATE);
				
			) {
		
			stmt.setString(1, bean.getTaxid());
			stmt.setString(2, bean.getCompany_name());
			stmt.setString(3, bean.getCompany_location());
			stmt.setString(4, bean.getChairman());
			stmt.setString(5, bean.getCapital());	
			java.util.Date temp = bean.getSetup_date();
			
			if (temp != null) {
				java.sql.Date someTime = new java.sql.Date(temp.getTime());
				System.out.println("someTime="+someTime);
				stmt.setDate(6, someTime);
			} else {
				stmt.setDate(6, null);				
			}			
			java.util.Date temp1 = bean.getClose_date();
			
			System.out.println("temp1="+temp1);
			
			if (temp1 != null) {
				java.sql.Date someTime1 = new java.sql.Date(temp1.getTime());
				System.out.println("someTime1="+someTime1);
				stmt.setDate(7, someTime1);
			} else {
				stmt.setDate(7, null);				
			}		
			stmt.setInt(8, bean.getId());
			System.out.println("stmt= "+bean);
			stmt.executeUpdate();
		}

	}

	
	private static final String Insert ="Insert into company_info values (?, ?, ?, ?, ?, ?, ?, ?)";

	public CompanyBean Insert(CompanyBean bean) throws SQLException {
		CompanyBean result = null;
		try(
			Connection conn = ds.getConnection();
			PreparedStatement stmt = conn.prepareStatement(Insert);
			) {
		
			stmt.setInt(1, bean.getId());
			stmt.setString(2, bean.getTaxid());
			stmt.setString(3, bean.getCompany_name());
			stmt.setString(4, bean.getCompany_location());
			stmt.setString(5, bean.getChairman());
			stmt.setString(6, bean.getCapital());	
			java.util.Date temp = bean.getSetup_date();
			
			if (temp != null) {
				java.sql.Date someTime = new java.sql.Date(temp.getTime());
				System.out.println("someTime="+someTime);
				stmt.setDate(7, someTime);
			} else {
				stmt.setDate(7, null);				
			}			
			java.util.Date temp1 = bean.getClose_date();
			System.out.println("bean="+bean);
			System.out.println("temp1="+temp1);
			
			if (temp1 != null) {
				java.sql.Date someTime1 = new java.sql.Date(temp1.getTime());
				System.out.println("someTime1="+someTime1);
				stmt.setDate(8, someTime1);
			} else {
				stmt.setDate(8, null);				
			}		
			 stmt.executeUpdate();

		} 
		return result;
	}

	private static final String DELETE = "Delete from Company_info where id=?";

	public int delete(int id) {
		int result = 0;
		try(
			Connection conn = ds.getConnection();
			PreparedStatement stmt = conn.prepareStatement(DELETE);
		) {
			stmt.setInt(1, id);
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return result;
	}
}