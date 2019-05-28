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

@WebServlet("/deleteCompany.do")
public class DeleteCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Map<String, String> errorMessage = new HashMap<>();
		request.setAttribute("ErrorMsg", errorMessage);
		request.setCharacterEncoding("UTF-8");
		
		
		String id3 = request.getParameter("mId1");
		int id=-1;

		System.out.println(id3);		
		
		if (id3 == null || id3.trim().length() == 0) {
			errorMessage.put("id3", "查詢代碼必須輸入");
		}else {
			try {
			id = Integer.valueOf(id3);
			} catch (NumberFormatException e) {
				errorMessage.put("id3", "查詢代碼只接受數字");
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
			 dao.delete(id);
			System.out.println("delete id=" + id);
			String str = null;
			
			str = "第"+id+"筆資料已刪除成功";
			
			session.setAttribute("DeleteCmopanyInfo", str);
			response.sendRedirect("InsertCompanyForm.jsp");
			return;

		} catch (Exception e) {
			errorMessage.put("id3", "資料庫存取錯誤:" + e.getMessage());
		}
//		RequestDispatcher rd = request.getRequestDispatcher("InsertCompanyForm.jsp");
//		rd.forward(request, response);
		return;

	}

}