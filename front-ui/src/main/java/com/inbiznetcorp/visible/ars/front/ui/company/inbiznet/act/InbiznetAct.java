package com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.act;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.biz.InbiznetTTsMessage;
import com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.dto.UserInfo;
import com.inbiznetcorp.visible.ars.front.ui.framework.beans.BasicBean;
import com.inbiznetcorp.visible.ars.front.ui.framework.beans.FrameworkBeans;
import com.inbiznetcorp.visible.ars.front.ui.framework.mymap.MyMap;
import com.inbiznetcorp.visible.ars.front.ui.framework.resttemplate.RestTemplateClient;
import com.inbiznetcorp.visible.ars.front.ui.framework.result.ResultCode;
import com.inbiznetcorp.visible.ars.front.ui.framework.result.ResultMessage;
import com.inbiznetcorp.visible.ars.front.ui.framework.utils.FrameworkUtils;
import com.inbiznetcorp.visible.ars.front.ui.framework.utils.HiworksSendMail;


@Controller
@RequestMapping("/company")
public class InbiznetAct
{
	@Value("${api.host}")
	private String API_HOST;

	@Value("${sendmail.from}")
	private String SENDMAIL_FROM;

	@Value("${sendmail.to}")
	private String SENDMAIL_TO;

	private static final org.apache.log4j.Logger Logger = org.apache.log4j.Logger.getLogger(InbiznetAct.class.getName());

	final String pagePrefix = "company/";


	/**
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/Main.do" })
	public String main(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber, actionId, channelId, InbiznetTTsMessage.kKey_TTS_Intro);

		model.addAttribute("paramMap", 	  paramMap);

		return pagePrefix + companyName +"/Main";
	}

	/**
	 * @param companyName
	 * @param model
	 * @return
	 * 대표번호 1644-7900 이동
	 */
	@RequestMapping(value = { "/{companyName}/callerid7900/callerid7900.do" })
	public String callerid7900(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId,  InbiznetTTsMessage.kKey_TTS_Main7900);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid7900/callerid7900";
	}

	/**1644-7900 고객사 확인하기
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/callerid7900/customers.do" })
	public String customers7900(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_Customer7900);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid7900/customers";
	}

	/**1644-7900 전화가안와요
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/callerid7900/noAnswer.do" })
	public String noAnswer7900(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_NoAnswer);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid7900/noAnswer";
	}

	/**대표번호 1588-0559 이동
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/callerid0559/callerid0559.do" })
	public String callerid0559(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_Main0559);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid0559/callerid0559";
	}

	/**
	 * @param 1588-0559 고객사 확인하기
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/callerid0559/customers.do" })
	public String customers0559(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_Customer0559);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid0559/customers";
	}

	/**
	 * @param 1588-0559 전화가안와요
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/callerid0559/noAnswer.do" })
	public String noAnswer0559(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_NoAnswer);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid0559/noAnswer";
	}

	/**FAQ 메인
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/faq/faq.do" })
	public String faq(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_MainFAQ);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/faq/faq";
	}


	/** faq 전화가 안와요
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/faq/noAnswer.do" })
	public String noAnswerFaq(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_NoAnswer);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/faq/noAnswer";
	}



	/**FAQ 키패드인식불가
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/faq/kypdRcgnt.do" })
	public String kypdRcgnt(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_NoAnswer);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/faq/kypdRcgnt";
	}


	/**FAQ 해외이용안내
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/faq/overseasUsageGuide.do" })
	public String overseasUsageGuide(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_OverseasGuide);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/faq/overseasUsageGuide";
	}

	/**FAQ 카드정보변경
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/faq/cardInfoChange.do" })
	public String cardInfoChange(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_CardInfo);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/faq/cardInfoChange";
	}

	/**FAQ 개인정보변경
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/faq/clientInfoChange.do" })
	public String clientInfoChange(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_ClientInfo);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/faq/clientInfoChange";
	}


	/**FAQ 인증내역 변경/취소
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/faq/certificationDetails.do" })
	public String certificationDetails(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_CertiInfo);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/faq/certificationDetails";
	}

	/**
	 * @param contactUs
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/sales/sales.do" })
	public String sales(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_ContactUs);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/sales/sales";
	}


	 /**
	 * @param 통화종료페이지
	 * @param model
	 * @param
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/end.do" })
	 public String hangup(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	 {
	 	MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

	 	hangup(phoneNumber,actionId,channelId, InbiznetTTsMessage.kKey_TTS_CallEnd);

	 	model.addAttribute("paramMap", 	  paramMap);

	 	return pagePrefix + companyName +"/end";
	 }


	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/ttsKey/{ttsKey}/retry.do" })
	public @ResponseBody ResultMessage ttsMentRetry(@PathVariable("companyName") String companyName, @PathVariable("ttsKey") String ttsKey, HttpServletRequest request, Model model)
	{
		String ttsMessage  = null;

		if( !InbiznetTTsMessage.mCodeToTTSMessage.containsKey(ttsKey) )
		{
			// error
		}

		HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		retry(phoneNumber,actionId,channelId, ttsKey);


		return new ResultMessage(ResultCode.RESULT_OK, null);
	}


	 @SuppressWarnings("unchecked")
	 private void retry(String phoneNumber, String ttsKey) {

		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();

		body_callInfo.put("phoneNumber", phoneNumber);

		body.put("requestNumber", FrameworkUtils.generateSessionID());
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender(API_HOST+"/api/v1/asterisk/event/playStop.do",body);


		body.put("requestNumber", FrameworkUtils.generateSessionID());
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		body_tts.put("intro", InbiznetTTsMessage.mCodeToTTSMessage.get(ttsKey));
		body.put("tts", body_tts);
		RestTemplateClient.sender(API_HOST+"/api/v1/asterisk/event/playBack.do", body);

	 }

	 @SuppressWarnings("unchecked")
	 private void retry(String phoneNumber, String actionId, String channelId, String ttsKey) {

		 JSONObject body 			= new JSONObject();
		 JSONObject body_tts 		= new JSONObject();
		 JSONObject body_callInfo	= new JSONObject();

		 body_callInfo.put("phoneNumber", phoneNumber);
		 body_callInfo.put("actionId",    actionId);
		 body_callInfo.put("channelId",   channelId);

		 body.put("requestNumber", FrameworkUtils.generateSessionID());
		 body.put("requestTime", FrameworkUtils.currentDate());
		 body.put("callInfo", body_callInfo);
		 RestTemplateClient.sender(API_HOST+"/api/v1/asterisk/event/playStop.do",body);


		 body.put("requestNumber", FrameworkUtils.generateSessionID());
		 body.put("requestTime", FrameworkUtils.currentDate());
		 body.put("callInfo", body_callInfo);
		 body_tts.put("intro", InbiznetTTsMessage.mCodeToTTSMessage.get(ttsKey));
		 body.put("tts", body_tts);
		 RestTemplateClient.sender(API_HOST+"/api/v1/asterisk/event/playBack.do", body);

	 }


	 @SuppressWarnings("unchecked")
	 private void hangup(String phoneNumber, String actionId, String channelId, String ttsKey)
	 {

		  JSONObject body 			= new JSONObject();
		  JSONObject body_callInfo	= new JSONObject();

		  body_callInfo.put("phoneNumber", phoneNumber);
		  body_callInfo.put("actionId",    actionId);
		  body_callInfo.put("channelId",   channelId);

		  body.put("requestNumber", FrameworkUtils.generateSessionID());
		  body.put("requestTime", FrameworkUtils.currentDate());
		  body.put("callInfo", body_callInfo);

		  body.put("requestNumber", FrameworkUtils.generateSessionID());
		  body.put("requestTime", FrameworkUtils.currentDate());
		  body.put("callInfo", body_callInfo);

		  RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/hangup.do", body);
	 }

	@RequestMapping(value = { "/{companyName}/sendmail.do" })
	public @ResponseBody ResultMessage sendMail(@PathVariable("companyName") String companyName)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

		Logger.debug("userCompanyName : " + paramMap.getStr("userCompanyName"));
		Logger.debug("userName : " + paramMap.getStr("userName"));
		Logger.debug("userEmail : " + paramMap.getStr("userEmail"));
		Logger.debug("userPhoneNo : " + paramMap.getStr("userPhoneNo"));
		Logger.debug("usermessage : " + paramMap.getStr("usermessage"));

		sendMail(new String[] {SENDMAIL_FROM}, SENDMAIL_TO, paramMap.getStr("userCompanyName"), paramMap.getStr("userName"), paramMap.getStr("userPhoneNo"), paramMap.getStr("userEmail"), paramMap.getStr("usermessage"));

		return new ResultMessage(ResultCode.RESULT_OK, null);
	}


	/**
	  * <pre>
	 * @param recipients 수신자
	 * @param from   발송자
	 * @param companyName 본문내용 - 회사명
	 * @param userName  본문내용 - 담당자
	 * @param userEmail 본문내용 - 이메일
	 * @param usermessage 본문내용 - 메세지
	 *  </pre>
	 */
	private void sendMail(String[]  recipients, String from, String companyName, String userName, String userPhoneNo, String userEmail, String usermessage)
	 {
		 String strSubject 		= "[보이는ARS-인비즈넷] "+companyName+" -  담당자 " + userName;
		 String strBodyMessage  = null;

		 StringBuffer message = new StringBuffer();

		 message.append("<table border='1px solid white'>");
		 message.append("<tr >");
		 message.append("<td>회사명</td><td> " + companyName +" </td>");
		 message.append("</tr>");
		 message.append("<tr>");
		 message.append("<td>담당자</td><td> " + userName +" </td>");
		 message.append("</tr>");
		 message.append("<tr>");
		 message.append("<td>연락처</td><td> " + userPhoneNo +" </td>");
		 message.append("</tr>");
		 message.append("<tr>");
		 message.append("<td>이메일</td><td> " + userEmail +" </td>");
		 message.append("</tr>");
		 message.append("<tr>");
		 message.append("<td>내용</td><td> " + usermessage +" </td>");
		 message.append("</tr>");
		 message.append("</table>");
		try
		{
			new HiworksSendMail().sendMessage(recipients, strSubject, message.toString(), from);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	 }

}
