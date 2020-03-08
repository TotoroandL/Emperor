package DS.main.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import DS.bean.AllBean;
import DS.bean.EmperorBean;
import DS.util.HttpUtil;

public class IndexDao {
	public String def_replace(String s_replace) {
		String replace_result = "";
		replace_result = s_replace.replace("[\"", "").replace("\"]", "").replace("\\r", "").replace("\\n", "").replace("\\t", "");
		return replace_result;
	}
	
	public JSONObject get_allInfo(String url){		
        String json=null;
        try {
            json= HttpUtil.getHttpResponse(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jo = JSON.parseObject(json);
        
        return jo;
    }
	
//返回总的查询条数
	public int get_totalCount(String url){
		int totalCount = 0;
		String json=null;
			try {
				json= HttpUtil.getHttpResponse(url);
			} catch (Exception e) {
				e.printStackTrace();
			}
		JSONObject jo = JSON.parseObject(json);
		JSONObject jo1 = jo.getJSONObject("response");
		String totalCountString = jo1.getString("numFound");
		totalCount = Integer.parseInt(totalCountString);
		return totalCount;
	}
	
	//返回每一页的数据
	public JSONObject get_sortInfo(String url, int start, int rows){
		String sorturl = url+"&start="+start+"&rows="+rows;
    String json=null;
    try {
        json= HttpUtil.getHttpResponse(sorturl);
    } catch (Exception e) {
        e.printStackTrace();
    }
    JSONObject sortjo = JSON.parseObject(json);
    
    return sortjo;
    }
}
	

