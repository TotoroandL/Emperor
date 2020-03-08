package DS.main.dao;

import java.util.ArrayList;

import DS.bean.EmperorBean;
import DS.util.HttpUtil;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class DetailDao {
	public JSONObject get_emperorInfo(String url){
        String json=null;
        try {
            json= HttpUtil.getHttpResponse(url);
 
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jo = JSON.parseObject(json);
        JSONObject jo1 = jo.getJSONObject("response");
        JSONArray jo2 = jo1.getJSONArray("docs");
        JSONObject jObject= jo2.getJSONObject(0);
        //List<List<String>> lists = new ArrayList<List<String>>();
        //if (json != null)
		//{
		//	for (int i = 0; i < jArray.size(); i++) {
		//		EmperorBean emperorbean = new EmperorBean();
		//		//List<String> list=new ArrayList<String>();
	    //        JSONObject jsonObject =jArray.getJSONObject(i);
	     //       String pid = jsonObject.getString("pid").replace("[", "").replace("]", "");
	    //        String name = jsonObject.getString("name");
	    //        String additionalName = jsonObject.getString("additionalName");
	    //        String period = jsonObject.getString("period");
	     //       String nationality = jsonObject.getString("nationality");
	    //        String duration = jsonObject.getString("duration");
	    //        emperorbean.setpid(pid);
	    //        emperorbean.setname(name);
	    //        emperorbean.setadditionalName(additionalName);
	    //        emperorbean.setperiod(period);
	    //        emperorbean.setnationality(nationality);
	      //      emperorbean.setduration(duration);
	       //     emperorbean_Array.add(emperorbean);
	            //list.add(name);
	            //lists.add(list);
			//} 
		//}
        return jObject;
    }
}
