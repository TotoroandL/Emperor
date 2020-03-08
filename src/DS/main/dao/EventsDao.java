package DS.main.dao;

import DS.util.HttpUtil;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class EventsDao {
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
