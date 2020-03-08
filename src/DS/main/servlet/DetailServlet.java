package DS.main.servlet;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DS.main.dao.DetailDao;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public DetailServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//request.setCharacterEncoding("utf-8");
		//response.setContentType("text/html;charset=utf-8");
		//String userName = request.getParameter("userName");
		//String passKey = request.getParameter("passKey");
		DetailDao detaildao = new DetailDao();
		String id = request.getParameter("id");
		//int pid = Integer.parseInt(pids.replace("[", "").replace("]", ""));
		//String url="http://118.24.114.197:8983/solr/ds/select?q=name:%E7%9A%87%E5%A4%AA%E6%9E%81";
		String url="http://118.24.114.197:8983/solr/ds/select?q="+id;			
		//EmperorBean emperorbean = new EmperorBean();
		JSONObject detail_data = detaildao.get_emperorInfo(url);
		//session.setAttribute("name",emperorbean.getname());
			//session.setAttribute("addtionalName",emperorbean.getadditionalName());
			//session.setAttribute("period",emperorbean.getperiod());
			//session.setAttribute("nationality",emperorbean.getnationality());
			//session.setAttribute("duration",emperorbean.getduration());
		request.setAttribute("detail_data", detail_data);
		String url1 = "";
		if (detail_data.containsKey("pid")){
			url1 = response.encodeURL("emperor.jsp");
		}
		else{
			url1 = response.encodeURL("event.jsp");
		}
		request.getRequestDispatcher(url1).forward(request, response);
		//response.sendRedirect("result.jsp");
	}
	

}
