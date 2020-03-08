package DS.main.servlet;



import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DS.bean.AllBean;
import DS.main.dao.PeriodDao;

public class PeriodServlet extends HttpServlet  {
	private static final long serialVersionUID = 1L;
	public PeriodServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PeriodDao perioddao = new PeriodDao();
		String period = request.getParameter("period");
		String url="http://118.24.114.197:8983/solr/ds/select?q="+URLEncoder.encode(period,"UTF-8")+"&fq=period:"+URLEncoder.encode(period,"UTF-8");
		request.setAttribute("url", url);
		JSONArray inquire_data  = perioddao.get_periodInfo(url);
		request.setAttribute("inquire_data", inquire_data);
		String url1 = "";
		url1 = response.encodeURL("period.jsp");
		request.getRequestDispatcher(url1).forward(request, response);
	}
	
}


