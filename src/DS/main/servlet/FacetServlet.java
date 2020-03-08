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
import DS.main.dao.PeriodDao;

public class FacetServlet extends HttpServlet  {
	private static final long serialVersionUID = 1L;
	public FacetServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		IndexDao indexdao = new IndexDao();
		String query = request.getParameter("q");
		String fq = request.getParameter("fq");
		String a = request.getParameter("a");
		String url=null;
		if (a.equals("period")){
			url="http://118.24.114.197:8983/solr/ds/select?q="+URLEncoder.encode(query,"UTF-8")+"&fq=period_facet:"+URLEncoder.encode(fq,"UTF-8");
			
		}
		else{
			url="http://118.24.114.197:8983/solr/ds/select?q="+URLEncoder.encode(query,"UTF-8")+"&fq=nationality_facet:"+URLEncoder.encode(fq,"UTF-8");
		}
		JSONObject inquire_data  = indexdao.get_allInfo(url);
		request.setAttribute("inquire_data", inquire_data);
		request.setAttribute("query", query);
		String url1 = "";
		url1 = response.encodeURL("result.jsp");
		request.getRequestDispatcher(url1).forward(request, response);
	}
	
}


