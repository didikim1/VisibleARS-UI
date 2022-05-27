package com.inbiznetcorp.visible.ars.front.ui.framework.resttemplate;


import org.json.simple.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
public class RestTemplateClient
{

	public static String sender(String url, JSONObject body)
	{
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);

		 HttpEntity<String> entity = new HttpEntity<>(body.toString(), headers);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate.postForEntity(url, entity, String.class);

		return response.getBody();
	}


}
