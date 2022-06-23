package com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.act;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import com.inbiznetcorp.visible.ars.front.ui.framework.config.interceptor.AuthenticationInterceptor;
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

	@Value("${api.call.enable}")
	private String API_CALL_ENABLE;


	public static final Logger Logger = LoggerFactory.getLogger(InbiznetAct.class);

	final String pagePrefix = "company/";


	/**
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/calling.do" })
	public String calling(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		
		HttpSession sess 	= request.getSession();
		String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
		String actionId 	= (String)sess.getAttribute("actionId") ;
		String channelId 	= (String)sess.getAttribute("channelId") ;
		
		model.addAttribute("paramMap", 	  paramMap);
		
		return pagePrefix + companyName +"/calling";
	}
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

		model.addAttribute("paramMap", 	  paramMap);

		return pagePrefix + companyName +"/Main";
	}


	/**인증번호 입력안됨
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/menu/certificationDetails.do" })
	public String certificationDetails(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/menu/certificationDetails";
	}


	/**전화가 오지않아요
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/menu/noAnswer.do" })
	public String noAnswer(@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/menu/noAnswer";
	}

	/**기타문의
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/menu/otherQuestion.do" })
	public String otherQuestion(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/menu/otherQuestion";
	}


	/**미요청한 전화가 왔어요
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/menu/notRequested.do" })
	public String notRequested(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/menu/notRequested";
	}

	/**결제문의를 하고싶어요
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/menu/paymentInquiry.do" })
	public String paymentInquiry(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

		HttpSession sess 	= request.getSession();
		String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
		String actionId 	= (String)sess.getAttribute("actionId") ;
		String channelId 	= (String)sess.getAttribute("channelId") ;

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/menu/paymentInquiry";
	}

	/**
	 * @param 제휴문의
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/menu/sales.do" })
	public String sales(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/menu/sales";
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
			return new ResultMessage(ResultCode.RESULT_NOT_FOUND, null);
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
	 private void retry(String phoneNumber, String actionId, String channelId, String ttsKey) {

		 if( API_CALL_ENABLE.indexOf("OFF") >= 0 ) return;

		   Thread thread = new Thread("New Thread") {
		      public void run(){
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

		 		try { Thread.sleep( 1000 ); } catch (InterruptedException e) { e.printStackTrace(); }

		 		 body.put("requestNumber", FrameworkUtils.generateSessionID());
		 		 body.put("requestTime", FrameworkUtils.currentDate());
		 		 body.put("callInfo", body_callInfo);
		 		 body_tts.put("intro", InbiznetTTsMessage.mCodeToTTSMessage.get(ttsKey));
		 		 body.put("tts", body_tts);

		 		Logger.info("PlayBack => " + body.toString());

		 		 RestTemplateClient.sender(API_HOST+"/api/v1/asterisk/event/playBack.do", body);
		      }
		   };
		   thread.start();
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

		  RestTemplateClient.sender(API_HOST+"/api/v1/asterisk/event/hangup.do", body);
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
