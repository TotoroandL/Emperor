package DS.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import com.alibaba.fastjson.*;

public class HttpUtil {

	public static String getHttpResponse(String allConfigUrl) {
	    BufferedReader in = null;
	    StringBuffer result = null;
	    try {

	        URI uri = new URI(allConfigUrl);
	        URL url = uri.toURL();
	        URLConnection connection = url.openConnection();
	        connection.setRequestProperty("Content-Type", "	application/json;charset=utf-8");
	        connection.setRequestProperty("Charset", "utf-8");
	        connection.setRequestProperty("Accept-Encoding", "gzip,deflate");
	        connection.setRequestProperty("Accept-Charset", "utf-8");
	        connection.connect();
	         
	        result = new StringBuffer();
	        //∂¡»°URLµƒœÏ”¶
	        in = new BufferedReader(new InputStreamReader(
	                connection.getInputStream(),"utf-8"));
	        String line;
	        while ((line = in.readLine()) != null) {
	            result.append(line);
	        }
	         
	        return result.toString();
	         
	    } catch (Exception e) {
	        e.printStackTrace();
	    }finally {
	        try {
	            if (in != null) {
	                in.close();
	            }
	        } catch (Exception e2) {
	            e2.printStackTrace();
	        }
	    }
	     
	    return null;
	     
	}


}
