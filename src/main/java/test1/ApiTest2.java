package test1;

import java.io.BufferedInputStream;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class ApiTest2 {
	 static String key = "715142614f7170613131326449687761";
	    
	    public void JsonPrint() throws Exception{
	        JSONParser jsonParser = new JSONParser();
	        JSONObject jsonObject = (JSONObject)jsonParser.parse(readUrl());
	        JSONObject json = (JSONObject)jsonObject.get("RealtimeCityAir");
	        JSONArray array = (JSONArray)json.get("row");
	        for(int i=0; i<array.size(); i++){
	            JSONObject row = (JSONObject)array.get(i);
	            String MSRSTE_NM = (String)row.get("MSRSTE_NM"); // e.g. 송파구
	            String PM10 = (String)row.get("PM10"); // 미세먼지
	            String PM25 = (String)row.get("PM25"); // 초미세먼지
	            String IDEX_NM = (String)row.get("IDEX_NM"); // e.g. 좋음, 보통, 나쁨
	            System.out.println(MSRSTE_NM);
	            System.out.println(PM10);
	            System.out.println(PM25);
	            System.out.println(IDEX_NM);
	            System.out.println();
	        }
	    }
	    
	    private static String readUrl() throws Exception{
	        BufferedInputStream reader = null;
	        
	        try {
	            URL url = new URL("http://openapi.seoul.go.kr:8088/"
	                    + key+"/json/RealtimeCityAir/1/25");
	            
	            reader = new BufferedInputStream(url.openStream());
	            StringBuffer buffer = new StringBuffer();
	            int i = 0;
	            byte[] b = new byte[4096];
	            while((i = reader.read(b)) != -1){
	                buffer.append(new String(b, 0, i));
	            }
	            return buffer.toString();
	            
	        } finally{
	            if(reader != null) reader.close();
	            
	        }
	        
	    }
}
