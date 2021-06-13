package test1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONObject;

import com.google.gson.JsonParser;

public class ApiTest {
	public static void main(String[] args) {
		
		BufferedReader br = null;
		try {
		String urlstr = "http://openapi.seoul.go.kr:8088/715142614f7170613131326449687761/json/RealtimeCityAir/1/25";
		
		URL url = new URL(urlstr);;
		HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
		urlconnection.setRequestMethod("GET");
		
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
			String result = "";
			String readLine;
			while ((readLine = br.readLine()) != null) {
				result += readLine + "/n";
			}
			System.out.println(result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.err.println(e.getMessage());
		} finally {
			try {
				if(br != null) br.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
}
