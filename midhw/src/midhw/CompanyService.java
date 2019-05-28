package midhw;

import java.sql.SQLException;
import java.util.List;



public class CompanyService {
	
	CompanyDao dao = null;
	
	public CompanyService() {
		dao = new CompanyDao();
	}	

	public CompanyBean select(int id) {
		return dao.select(id);	
	}
	public List<CompanyBean> select() {
		return dao.select();
	}
	
	public CompanyBean insertinfo(CompanyBean bean) throws SQLException {
		return dao.Insert(bean);
	}

	public int delete(int id) {
		return dao.delete(id);
	}
	public List<CompanyBean> getAllinfo() {
		System.out.println(select());
		return select();
	
	}
}