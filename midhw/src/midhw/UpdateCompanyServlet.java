package midhw;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ProcessCompany
 */
@WebServlet("/Update.do")
public class UpdateCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		// 定義存放錯誤訊息的 Collection物件
		Map<String, String> errorMessage = new HashMap<>();
		request.setAttribute("ErrorMsg", errorMessage);

		// 設定輸入資料的編碼
		request.setCharacterEncoding("UTF-8");
		// 讀取使用者所輸入，由瀏覽器送來的 mId 欄位內的資料，注意大小寫
		String id2 = request.getParameter("mId");
		// 檢查使用者所輸入的資料
		int id=-1;
				
				if (id2 == null || id2.trim().length() == 0) {
					errorMessage.put("id2", "查詢代碼必須輸入");
				}else {
					try {
					id = Integer.valueOf(id2);
					} catch (NumberFormatException e) {
						errorMessage.put("id2", "查詢代碼只接受數字");
					}
				}	
		// 讀取使用者所輸入，由瀏覽器送來的 pswd 欄位內的資料，注意大小寫
		String taxid = request.getParameter("tid");
		// 檢查使用者所輸入的資料
		if (taxid == null || taxid.trim().length() == 0) {
			errorMessage.put("taxid", "公司稅號欄必須輸入");
		}
		// 讀取使用者所輸入，由瀏覽器送來的 mName 欄位內的資料
		String company_name = request.getParameter("mName");
		// 檢查使用者所輸入的資料
		if (company_name == null || company_name.trim().length() == 0) {
			errorMessage.put("company_name", "企業名稱欄必須輸入");
		}
		// 讀取使用者所輸入，由瀏覽器送來的 mAddress 欄位內的資料
		String company_location = request.getParameter("mAddress");
		// 檢查使用者所輸入的資料
		if (company_location == null || company_location.trim().length() == 0) {
			errorMessage.put("company_location", "公司地址欄必須輸入");
		}
		// 讀取使用者所輸入，由瀏覽器送來的 mPhone 欄位內的資料
		String chairman = request.getParameter("mchairman");
		// 檢查使用者所輸入的資料
		if (chairman == null || chairman.trim().length() == 0) {
			errorMessage.put("chairman", "公司負責人必須輸入");
		}
		
		String capital = request.getParameter("mcapital");

		// 讀取使用者所輸入，由瀏覽器送來的 mBirthday 欄位內的資料
		String setup_date = request.getParameter("msetup_date");
		// 檢核使用者的輸入資料
		java.sql.Date date = null;

		if (setup_date != null && setup_date.trim().length() > 0) {
			try {
				date = java.sql.Date.valueOf(setup_date);
			} catch (IllegalArgumentException e) {
				errorMessage.put("setup_date", "公司創立欄格式錯誤");
			}
		}
		System.out.println("setup_date="+setup_date+", date="+date);

		String close_date = request.getParameter("mclose_date");
		// 檢核使用者的輸入資料
		java.util.Date date1 = null;

		if (close_date != null && close_date.trim().length() > 0) {
			try {
				date1 = java.sql.Date.valueOf(close_date);
			} catch (IllegalArgumentException e) {
				errorMessage.put("close_date", "公司結束欄格式錯誤");
			}
		}
		System.out.println("close_date="+close_date+", date1="+date1);
		
//		Timestamp ts = new Timestamp(System.currentTimeMillis());
//		String weight = request.getParameter("mWeight");
//		double dWeight = -1;
//		// 檢核使用者的輸入資料
//		if (weight != null && weight.trim().length() > 0) {
//			try {
//				dWeight = Double.parseDouble(weight.trim());
//			} catch (NumberFormatException e) {
//				errorMessage.put("weight", "體重欄必須為數值");
//			}
//		}
		// 如果有錯誤，呼叫view元件，送回錯誤訊息
		if (!errorMessage.isEmpty()) {
			RequestDispatcher rd = request.getRequestDispatcher("UpateCompanyForm.jsp");
			rd.forward(request, response);
			return;
		}
		// MemberBean 扮演封裝輸入資料的角色
	
		CompanyBean bean = new CompanyBean();
							
			
		bean.setId(id);
		bean.setTaxid(taxid);
		bean.setCompany_name(company_name);
		bean.setCompany_location(company_location);
		bean.setChairman(chairman);
		bean.setCapital(capital);
		bean.setSetup_date(date);
		bean.setClose_date(date1);	
			
		CompanyDao dao = new CompanyDao();
		try {
			dao.update(bean);
			System.out.println("update id=" + bean);		
		
	
	
			//request.setAttribute("memberBean", mb);
			session.setAttribute("update", bean);
			// 依照執行的結果挑選適當的view元件，送回相關訊息
			// 產生 RequestDispatcher 物件 rd
//			RequestDispatcher rd = request.getRequestDispatcher("/ch05_03/InsertMemberSuccess.jsp");
			// 請容器代為呼叫下一棒程式
//			rd.forward(request, response);
//			response.sendRedirect("InsertMemberSuccess.jsp");
			response.sendRedirect("updateResult.jsp");
			return;
        } catch (SQLException e) {
			if (e.getMessage().indexOf("重複的索引鍵") != -1 
				|| e.getMessage().indexOf("Duplicate entry") != -1) {
				errorMessage.put("id", "帳號重複，請重新輸入帳號");
			} else {
				errorMessage.put("exception", "資料庫存取錯誤:" + e.getMessage());
			}
			RequestDispatcher rd = request.getRequestDispatcher("/InsertCompanySuccess.jsp");
			rd.forward(request, response);
			return;
		}
	}

}