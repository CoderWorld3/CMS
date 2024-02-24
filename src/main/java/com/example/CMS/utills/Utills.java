package com.example.CMS.utills;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class Utills {
	private static final HttpClient httpClientget = HttpClient.newBuilder().version(HttpClient.Version.HTTP_2)
			.connectTimeout(Duration.ofSeconds(10)).build();
	private static final HttpClient httpClientPost = HttpClient.newBuilder().version(HttpClient.Version.HTTP_2)
			.connectTimeout(Duration.ofSeconds(10)).build();
	private static final HttpClient httpClientDelete = HttpClient.newBuilder().version(HttpClient.Version.HTTP_2)
			.connectTimeout(Duration.ofSeconds(10)).build();
	private JSONObject jsonObject;

	public JSONObject courseData(String url) throws IOException, InterruptedException, ParseException {
		HttpRequest request = HttpRequest.newBuilder().GET().uri(URI.create("http://localhost:8080/" + url)).build();
		HttpResponse<String> response = httpClientget.send(request, HttpResponse.BodyHandlers.ofString());
         jsonObject = (JSONObject) new JSONParser().parse(response.body());
//		// print status code
//		System.out.println(response.statusCode());
//		// print response body
//		System.out.println(response.body());
		return jsonObject;

	}

}
