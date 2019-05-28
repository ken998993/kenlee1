package midhw;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SearchCompany.do")
public class SearchCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Map<String, String> errorMessage = new HashMap<>();
		request.setAttribute("ErrorMsg", errorMessage);
		request.setCharacterEncoding("UTF-8");
		
		String id2 = request.getParameter("mId");

		int id = -1;	
		
		if (id2 == null || id2.trim().length() == 0) {
			errorMessage.put("searcherror", "查詢代碼不可為空值");
		}else {
			try {
			id = Integer.valueOf(id2);
			} catch (NumberFormatException e) {
				errorMessage.put("searcherror", "查詢代碼只接受數字");
			}
		}
		
		if (!errorMessage.isEmpty()) {
			RequestDispatcher rd = request.getRequestDispatcher("/InsertCompanyForm.jsp");
			rd.forward(request, response);
			return;
		}
		System.out.println(id);

		CompanyDao dao = new CompanyDao();
		try {
			CompanyBean bean = dao.select(id);
			System.out.println("insert id=" + bean);
			String str = null;
			
			str = "<table border='1'><tr>"
					+ "<th width='200px'>Id</th>"
					+ "<th width='200px'>Taxid</th>"
					+ "<th width='200px'>Company_name</th>"
					+ "<th width='200px'>Company_location</th>"
					+ "<th width='200px'>Chairman</th>"
					+ "<th width='200px'>Capital</th>"
					+ "<th width='200px'>Setup_date</th>"
					+ "<th width='200px'>Closed_date</th>";
			
			str += "<tr><td>" + bean.getId() + "</td><td>" + bean.getTaxid() + "</td><td>" + bean.getCompany_name()
					+ "</td><td>" + bean.getCompany_location() + "</td><td>" + bean.getChairman() + "</td><td>"
					+ bean.getCapital() +"</td><td>" + bean.getSetup_date() +"</td><td>" + bean.getClose_date()+"</td></tr>";
			
			str += "</table>";
			session.setAttribute("SearchCmopanyInfo", str);

			response.sendRedirect("InsertCompanyForm.jsp");
			return;

		} catch (Exception e) {
			errorMessage.put("searcherror", "資料庫存取錯誤:" + e.getMessage());
		}
		RequestDispatcher rd = request.getRequestDispatcher("InsertCompanyForm.jsp");
		rd.forward(request, response);
		return;

	}

}