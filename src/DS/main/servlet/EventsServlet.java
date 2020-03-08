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
import DS.main.dao.EventsDao;

public class EventsServlet extends HttpServlet  {
	private static final long serialVersionUID = 1L;
	public EventsServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		EventsDao eventsdao = new EventsDao();
		String pid = request.getParameter("pid");
		String id = request.getParameter("id");
		String url="http://118.24.114.197:8983/solr/ds/select?q="+pid;
		request.setAttribute("url", url);
		JSONArray inquire_data  = eventsdao.get_periodInfo(url);
		request.setAttribute("inquire_data", inquire_data);
		request.setAttribute("id", id);
		String url1 = "";
		url1 = response.encodeURL("events.jsp");
		request.getRequestDispatcher(url1).forward(request, response);
	}
	
}


