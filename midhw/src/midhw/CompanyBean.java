package midhw;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CompanyBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String taxid;
	private String company_name;
	private String company_location;
	private String chairman;
	private String capital;
	private java.util.Date setup_date;
	private java.util.Date close_date;

	public CompanyBean(int id, String taxid, String company_name, String company_location, String chairman,
			String capital, Date setup_date, Date close_date) {
		super();
		this.id = id;
		this.taxid = taxid;
		this.company_name = company_name;
		this.company_location = company_location;
		this.chairman = chairman;
		this.capital = capital;
		this.setup_date = setup_date;
		this.close_date = close_date;

	}

	public CompanyBean() {
		// TODO Auto-generated constructor stub
	}

//	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//
//	public static java.util.Date convertDate(String temp) {
//		java.util.Date result = new java.util.Date();
//		try {
//			result = sdf.parse(temp);
//		} catch (ParseException e) {
//			result = null;
//			e.printStackTrace();
//		}
//		return result;
//	}
//
//	private static SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
//
//	public static java.util.Date convertDate1(String temp1) {
//		java.util.Date result = new java.util.Date();
//		try {
//			result = sdf1.parse(temp1);
//		} catch (ParseException e) {
//			result = null;
//			e.printStackTrace();
//		}
//		return result;
//	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTaxid() {
		return taxid;
	}

	public void setTaxid(String taxid) {
		this.taxid = taxid;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getCompany_location() {
		return company_location;
	}

	public void setCompany_location(String company_location) {
		this.company_location = company_location;
	}

	public String getChairman() {
		return chairman;
	}

	public void setChairman(String chairman) {
		this.chairman = chairman;
	}

	public String getCapital() {
		return capital;
	}

	public void setCapital(String capital) {
		this.capital = capital;
	}

	public java.util.Date getSetup_date() {
		return setup_date;
	}

	public void setSetup_date(java.util.Date setup_date) {
		this.setup_date = setup_date;
	}

	public java.util.Date getClose_date() {
		return close_date;
	}

	public void setClose_date(java.util.Date close_date) {
		this.close_date = close_date;
	}

	public String toString() {
		return "CustomerBean id=" + id + ", taxid=" + taxid + ", company_name=" + company_name + ", company_location="
				+ company_location + ",chairman=" + chairman + ", capital=" + capital + ",setup_date=" + setup_date
				+ ", close_date=" + close_date + "]";
	}

}
//
//	//
//	@Override
//	
//	public int getid() {
//		return id;
//	}
//	public void setid(int id) {
//		this.id = id;
//	}
//	
//	public String gettaxid() {
//		return taxid;
//	}
//	public void settaxid(String taxid) {
//		this.taxid = taxid;
//	}	
//	public String getcompany_name() {
//			return company_name;
//	}
//	public void setcompany_name(String company_name) {
//		this.company_name = company_name;		
//	}	
//	public String getcompany_location() {
//		return company_location;
//	}
//	public void setcompany_location(String company_location) {
//		this.company_location = company_location;		
//	}			
//	public String getcapital() {
//		return capital;
//	}
//	public void setcapital(String capital) {
//		this.capital = capital;		
//	}			
//	public String getchairman() {
//		return chairman;
//	}
//	public void setchairman(String chairman) {
//		this.chairman = chairman;		
//	}	
//		
//	
//	public java.util.Date getsetup_date() {
//		return setup_date;
//	}
//	public void setsetup_date(java.util.Date setup_date) {
//		this.setup_date = setup_date;
//	}
//	public java.util.Date close_date() {
//		return close_date;
//	}
//	public void setclose_date(java.util.Date close_date) {
//		this.close_date = close_date;
//	}
//	
//	
//	
//}
