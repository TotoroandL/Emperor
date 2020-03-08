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
import DS.main.dao.IndexDao;

public class IndexServlet extends HttpServlet  {
	private static final long serialVersionUID = 1L;
	public IndexServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		IndexDao indexdao = new IndexDao();
		int start = Integer.parseInt(request.getParameter("start"));;
		int rows = 10;
		String query = request.getParameter("query");

		String url="http://118.24.114.197:8983/solr/ds/select?q="+URLEncoder.encode(query,"UTF-8");
		int totalCount =indexdao.get_totalCount(url);
		JSONObject inquire_data  = indexdao.get_sortInfo(url, start, rows);
		
		request.setAttribute("inquire_data", inquire_data);
		request.setAttribute("query", query);
		request.setAttribute("totalCount", totalCount);
		String url1 = "";
		url1 = response.encodeURL("result.jsp");
		request.getRequestDispatcher(url1).forward(request, response);
	
	}
}

