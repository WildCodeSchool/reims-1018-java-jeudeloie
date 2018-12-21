package com.jeuDeLOie;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class CasesContent {
	public CasesContent() {
		Object jsonParsed = null;
		try {
			URL url = new URL("https://my-json-server.typicode.com/blackadder2509/json-jeu-de-l-oie/Cases");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			int status = connection.getResponseCode();
			InputStreamReader in = new InputStreamReader(connection.getInputStream());
			JSONParser parser = new JSONParser();
			jsonParsed = parser.parse(in);
			connection.disconnect();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JSONArray root = (JSONArray) jsonParsed;
		
		for (int i = 0; i < root.size(); i++) {
			JSONObject casesObject = (JSONObject) root.get(i);
			String date = (String) casesObject.get("date");
			String content = (String) casesObject.get("content");
			boolean open = (boolean) casesObject.get("open");
	}
}
