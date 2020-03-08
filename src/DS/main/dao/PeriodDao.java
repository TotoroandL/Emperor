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

public class PeriodDao {
	public JSONArray get_periodInfo(String url){
	//public ArrayList<AllBean> get_allInfo(String url){
		String json=null;
        try {
            json= HttpUtil.getHttpResponse(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jo = JSON.parseObject(json);
        JSONObject jo1 = jo.getJSONObject("response");
        JSONArray jArray = jo1.getJSONArray("docs");
        return jArray;
    }
}
	


