package com.inbiznetcorp.visible.ars.front.ui.company.act;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.biz.InbiznetTTsMessage;
import com.inbiznetcorp.visible.ars.front.ui.framework.beans.FrameworkBeans;
import com.inbiznetcorp.visible.ars.front.ui.framework.mymap.MyMap;
import com.inbiznetcorp.visible.ars.front.ui.framework.resttemplate.RestTemplateClient;
import com.inbiznetcorp.visible.ars.front.ui.framework.utils.FrameworkUtils;

@Controller
@RequestMapping("/incoming")
public class IncomingAct
{
	final String pagePrefix = "company/";

	@RequestMapping(value = { "/{phoneNumber}" })
	public String main(@PathVariable("phoneNumber") String phoneNumber, Model model, HttpSession sess, String stts, HttpServletRequest request)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

		model.addAttribute("paramMap", 	  paramMap);

		System.out.println("phoneNumber : " + phoneNumber);
		System.out.println("phoneNumber : " + phoneNumber);
		System.out.println("phoneNumber : " + phoneNumber);
		System.out.println("phoneNumber : " + phoneNumber);
		System.out.println("phoneNumber : " + phoneNumber);
		System.out.println("phoneNumber : " + phoneNumber);

		JSONObject body 			= new JSONObject();


		String strResponseMessage = RestTemplateClient.sender("https://local.ring2pay.com:39030/incoming/"+phoneNumber, new JSONObject());
		System.out.println("strResponseMessage : " + strResponseMessage);

		sess.setAttribute("phoneNumber", phoneNumber);
		sess.setAttribute("stts", "F");

		String PN = (String) sess.getAttribute(phoneNumber);
			if (PN.equals(stts)) {
				return pagePrefix + "inbiznet" +"/end";
			}
			else {
				return pagePrefix + "inbiznet" +"/Main";
			}



		// 휴대폰번호 sesison에 저장

		// W 시 [SPRING] Controller에서 redirect해서 메인페이지로 이동

		// F시 감사합니다.로 페이지이동


//		System.out.println("-");
//		System.out.println("API요청 : " + body.toString());
//		System.out.println("API로부터 전달 받은 응답: "+RestTemplateClient.sender("https://local.ring2pay.com:39030/incoming/phoneNumber", body));

		/*
		 * body.put("requestNumber", FrameworkUtils.generateSessionID());
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		body_tts.put("intro", InbiznetTTsMessage.mCodeToTTSMessage.get(ttsKey));
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);
		 */

	}
}
