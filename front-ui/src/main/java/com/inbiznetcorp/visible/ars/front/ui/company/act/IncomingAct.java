package com.inbiznetcorp.visible.ars.front.ui.company.act;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.biz.InbiznetTTsMessage;
import com.inbiznetcorp.visible.ars.front.ui.framework.beans.FrameworkBeans;
import com.inbiznetcorp.visible.ars.front.ui.framework.config.interceptor.AuthenticationInterceptor;
import com.inbiznetcorp.visible.ars.front.ui.framework.mymap.MyMap;
import com.inbiznetcorp.visible.ars.front.ui.framework.resttemplate.RestTemplateClient;
import com.inbiznetcorp.visible.ars.front.ui.framework.utils.FrameworkUtils;

@Controller
@RequestMapping("/incoming")
public class IncomingAct
{
	// public static final Logger Logger = LoggerFactory.getLogger(AuthenticationInterceptor.class);
	// public static final Logger Logger = LoggerFactory.getLogger(IncomingAct.class);
	public static final Logger Logger = LoggerFactory.getLogger(IncomingAct.class);

	@Value("${api.host}")
	private String API_HOST;


	final String pagePrefix = "company/";

	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{phoneNumber}" })
	public String main(@PathVariable("phoneNumber") String phoneNumber, Model model, HttpSession session, HttpServletRequest request)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

		model.addAttribute("paramMap", 	  paramMap);

		Logger.info("("+session.getId()+")요청 =>  phoneNumber : " + phoneNumber);

		JSONObject body 		=new JSONObject();
		JSONObject data 		=null;
		JSONObject callInfo		=null;
		String result			=null;
		String actionId 		=null;
		String channelId		=null;

		Logger.info("("+session.getId()+") UI -> API(요청) " +API_HOST+"/incoming/"+phoneNumber);

		String strResponseMessage = RestTemplateClient.sender(API_HOST+"/incoming/"+phoneNumber, new JSONObject());

		Logger.info("("+session.getId()+") UI <- API(응답) " +FrameworkUtils.jsonBeautify(strResponseMessage));

		body = FrameworkUtils.jSONParser(strResponseMessage);

		if( body == null ) 					{ return   pagePrefix + "inbiznet" +"/end"; }
		if( !body.containsKey("data") ) 	{ return   pagePrefix + "inbiznet" +"/end"; }

		data 		= (JSONObject) body.get("data");

		if( !data.containsKey("callInfo") ) { return   pagePrefix + "inbiznet" +"/end"; }

		callInfo 	= (JSONObject) data.get("callInfo");

		if( callInfo == null ) { return   pagePrefix + "inbiznet" +"/end"; }

		result 		= (String) body.getOrDefault("result", "");
		actionId	= (String)callInfo.getOrDefault("actionId", "");
		channelId	= (String)callInfo.getOrDefault("channelId", "");

		session.setAttribute("phoneNumber",	phoneNumber);
		session.setAttribute("actionId", 		actionId);
		session.setAttribute("channelId", 		channelId);

		if(result.equals("success"))
		{
			return  "redirect:/company/inbiznet/Main.do";
		} else {
			return   pagePrefix + "inbiznet" +"/end";
		}
	}
}
