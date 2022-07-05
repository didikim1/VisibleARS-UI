package com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.act;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.validator.internal.util.privilegedactions.GetMethod;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	@Value("${counseling.counsellor.number}")
	private String COUNSELING_COUNSELLOR_NUMBER;


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
		String userServiceName  = null;

		HttpSession sess 	= request.getSession();

		String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
		String actionId 	= (String)sess.getAttribute("actionId") ;
		String channelId 	= (String)sess.getAttribute("channelId") ;
		String lastMenu 	= (String)sess.getAttribute("lastMenu") ;

		userServiceName  	= paramMap.getStr("userServiceName", "");

		sess.setAttribute("userServiceName", 		userServiceName);

		Logger.info("lastMenu => " + lastMenu);
		Logger.info("paramMap => " + paramMap);

		model.addAttribute("paramMap", 	  paramMap);

		return pagePrefix + companyName +"/calling";
	}

	/**
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/error.do" })
	public String error(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

		HttpSession sess 	= request.getSession();
		String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
		String actionId 	= (String)sess.getAttribute("actionId") ;
		String channelId 	= (String)sess.getAttribute("channelId") ;

		String lastMenu 	= (String)sess.getAttribute("lastMenu") ;

		Logger.info("lastMenu => " + lastMenu);

		model.addAttribute("paramMap", 	  paramMap);

		return pagePrefix + companyName +"/error";
	}


	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/errorSet.do" },  method=RequestMethod.GET )
	public String errorSet (@PathVariable("companyName") String companyName,HttpServletRequest request, Model model)
	{
		MyMap 	paramMap 		 = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		String  counsellorNumber = null;
		
//		JSONObject body 	= new JSONObject();
//		JSONObject result 	= null;
//		JSONObject data 	= null;
//		HttpSession sess 	= request.getSession();

//		String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
//		String actionId 	= (String)sess.getAttribute("actionId") ;
//		String channelId 	= (String)sess.getAttribute("channelId") ;
		
		counsellorNumber = getCounsellorNumber("77777");
		
		model.addAttribute("counsellorNumber", counsellorNumber);
		model.addAttribute("paramMap", 	  paramMap);
		
//		return new ResultMessage(ResultCode.RESULT_OK, null);
		
		return pagePrefix + companyName +"/errorSet";
	}

	/**
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/errorSet.do" },  method=RequestMethod.POST)
	public @ResponseBody ResultMessage errorSet1(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

		JSONObject body 			= new JSONObject();
		System.out.println("paramMap : " + paramMap);

		HttpSession sess 	= request.getSession();

		String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
		String actionId 	= (String)sess.getAttribute("actionId") ;
		String channelId 	= (String)sess.getAttribute("channelId") ;

		String lastMenu 	= (String)sess.getAttribute("lastMenu") ;

		Logger.info("lastMenu => " + lastMenu);

		model.addAttribute("paramMap", 	  paramMap);

		body.put("requestNumber", 	FrameworkUtils.generateSessionID());
 		body.put("requestTime", 	FrameworkUtils.currentDate());

 		if(paramMap.getStr("errorset").equals("CODE_INTRO-1-1"))
 		{
 			body.put("scenario", "INTRO-1-1");		// 화면진입
 			body.put("visiblears_display", "TYPE01"); // 화면노출
 		}
 		else if(paramMap.getStr("errorset").equals("CODE_INTRO-1-2"))
 		{
 			body.put("scenario", "INTRO-1-1");  // 화면진입
 			body.put("visiblears_display", "TYPE02"); // 점검화면
 		}
 		else if(paramMap.getStr("errorset").equals("CODE_INTRO-2-1"))
 		{
 			body.put("scenario", "INTRO-1-2"); // 화면 진입 X
 			body.put("visiblears_display", "TYPE01");
 		}

 		Logger.info("errorSet => " + body.toString());

 		RestTemplateClient.sender(API_HOST+"/api/v1/config/77777/systemFailures.do", body);

 		return new ResultMessage(ResultCode.RESULT_OK, null);

	}

	/**
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/counsellor.do" },  method=RequestMethod.POST)
	public @ResponseBody ResultMessage counsellor(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

		JSONObject body 			= new JSONObject();
		System.out.println("::: paramMap ::: " + paramMap);

		model.addAttribute("paramMap", 	  paramMap);

		body.put("requestNumber", 	FrameworkUtils.generateSessionID());
 		body.put("requestTime", 	FrameworkUtils.currentDate());
		body.put("counsellor", 		paramMap.getStr("counsellor"));

		Logger.info("counsellor => " + body.toString());

		RestTemplateClient.sender(API_HOST+"/api/v1/config/77777/modifyCounsellor.do", body);

		return new ResultMessage(ResultCode.RESULT_OK, null);

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

	/**
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/menu/{pageName}.do" })
	public String movePage(@PathVariable("companyName") String companyName, @PathVariable("pageName") String pageName, HttpServletRequest request, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;

	 	HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

		model.addAttribute("paramMap", paramMap);

		sess.setAttribute("lastMenu", 		pageName);

		Logger.info("lastMenu => " + pageName);

		return pagePrefix + companyName +"/menu/"+pageName;
	}



	@RequestMapping(value = { "/{companyName}/dial.do" })
	 public @ResponseBody ResultMessage dial(@PathVariable("companyName") String companyName, HttpServletRequest request, Model model)
	 {
	 	MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

	 	HttpSession sess 		= request.getSession();
	 	String phoneNumber 		= (String)sess.getAttribute("phoneNumber");
	 	String actionId 		= (String)sess.getAttribute("actionId") ;
	 	String channelId 		= (String)sess.getAttribute("channelId") ;
	 	String lastMenu 		= (String)sess.getAttribute("lastMenu") ;
	 	String userServiceName 	= (String)sess.getAttribute("userServiceName") ;

	 	String resultCode   = ResultCode.RESULT_INTERNAL_SERVER_ERROR;

	 	String counsellorNumber = COUNSELING_COUNSELLOR_NUMBER;
	 	if(FrameworkUtils.isNull(counsellorNumber))
	 	{
	 		counsellorNumber = "01099321136";
	 	}

	 	String title_1		= InbiznetTTsMessage.mCodeToTTSMessage.getOrDefault(lastMenu, "");
	 	String title_2		= paramMap.getStr("title_2", "");
	 	String tts_intro    = InbiznetTTsMessage.mCodeToTTSMenuMessage.get(lastMenu) + ", " +userServiceName;

	 	if( dial(phoneNumber, actionId, channelId, counsellorNumber, tts_intro) )
	 	{
	 		resultCode   = ResultCode.RESULT_OK;
	 	}
	 	System.out.println("resultCode : " + resultCode );
	 	System.out.println("resultCode : " + resultCode );
	 	System.out.println("resultCode : " + resultCode );
	 	System.out.println("resultCode : " + resultCode );
	 	System.out.println("resultCode : " + resultCode );
	 	System.out.println("resultCode : " + resultCode );
	 	return new ResultMessage(resultCode, null);
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
			System.out.println("Error : RESULT_NOT_FOUND ");
			return new ResultMessage(ResultCode.RESULT_NOT_FOUND, null);
			// error
		}

		HttpSession sess 	= request.getSession();
	 	String phoneNumber 	= (String)sess.getAttribute("phoneNumber");
	 	String actionId 	= (String)sess.getAttribute("actionId") ;
	 	String channelId 	= (String)sess.getAttribute("channelId") ;

	 	switch (ttsKey)
	 	{
			case "homePage":
				retryPlaybackCallEnd(phoneNumber, actionId, channelId, ttsKey);
				break;
			default:
				retry(phoneNumber,actionId,channelId, ttsKey);
				break;
		}



		return new ResultMessage(ResultCode.RESULT_OK, null);
	}
	
	private String getCounsellorNumber(String companyCode)
	{
		String rtn = "";
		JSONObject responseMessageMain = null;
		JSONObject responseMessageData = null;
		String responseMessage = RestTemplateClient.sender(API_HOST+"/api/v1/config/"+companyCode+"/counsellor.do", new JSONObject());
		
		
		// {"result":"success","data":{"counsellor":"01012345678","code":"200","param":{},"message":null}}
		
		responseMessageMain = FrameworkUtils.jSONParser(responseMessage); // String to JSONObject로  {"result":"success","data":{"counsellor":"01012345678","code":"200","param":{},"message":null}}
		responseMessageData = (JSONObject)responseMessageMain.get("data"); //responseMessageMain 에서 data 객체만 꺼냄 =  {"counsellor":"01012345678","code":"200","param":{},"message":null}
		
		System.out.println("responseMessageData : " + responseMessageData);
		
		rtn					= (String)responseMessageData.getOrDefault("counsellor", ""); // responseMessageData 에서 counsellor 만 꺼냄
		
		System.out.println("rtn : " +rtn);
		System.out.println("responseMessage : " +responseMessage);
		System.out.println( FrameworkUtils.jSONParser(responseMessage));
		
		return rtn;
	}
	
	

	 @SuppressWarnings("unchecked")
	 private boolean dial(String phoneNumber, String actionId, String channelId, String counsellor, String tts_intro) {

		 if( API_CALL_ENABLE.indexOf("OFF") >= 0 ) return false;

		 JSONObject body 			= new JSONObject();
 		 JSONObject body_tts 		= new JSONObject();
 		 JSONObject body_callInfo	= new JSONObject();

 		 body_callInfo.put("phoneNumber", phoneNumber);
 		 body_callInfo.put("counsellor",   counsellor);
 		 body_callInfo.put("actionId",    actionId);
 		 body_callInfo.put("channelId",   channelId);

 		 body.put("requestNumber", FrameworkUtils.generateSessionID());
 		 body.put("requestTime", FrameworkUtils.currentDate());
 		 body.put("callInfo", body_callInfo);

 		 /*
 		 RestTemplateClient.sender(API_HOST+"/api/v1/asterisk/event/playStop.do",body);

 		 //System.out.println(API_HOST+"/api/v1/asterisk/event/playStop.do"+","+body.toString());

 		Logger.info("PlayStop => " + body.toString());

 		try { Thread.sleep( 1000 ); } catch (InterruptedException e) { e.printStackTrace(); }

		*/

 		 body.put("requestNumber", FrameworkUtils.generateSessionID());
 		 body.put("requestTime", FrameworkUtils.currentDate());
 		 body.put("callInfo", body_callInfo);

 		 // tts
 		 body_tts.put("intro", tts_intro);
 		 body.put("tts", body_tts);

 		Logger.info("Dial => " + body.toString());

 		 RestTemplateClient.sender(API_HOST+"/api/v1/asterisk/event/dial.do", body);

 		 //System.out.println(API_HOST+"/api/v1/asterisk/event/dial.do"+"."+body.toString());

 		 return true;
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

		 		 System.out.println(API_HOST+"/api/v1/asterisk/event/playStop.do"+","+body.toString());

		 		try { Thread.sleep( 1000 ); } catch (InterruptedException e) { e.printStackTrace(); }

		 		 body.put("requestNumber", FrameworkUtils.generateSessionID());
		 		 body.put("requestTime", FrameworkUtils.currentDate());
		 		 body.put("callInfo", body_callInfo);
		 		 body_tts.put("intro", InbiznetTTsMessage.mCodeToTTSMessage.get(ttsKey));
		 		 body.put("tts", body_tts);

		 		Logger.info("PlayBack => " + body.toString());

		 		 RestTemplateClient.sender(API_HOST+"/api/v1/asterisk/event/playBack.do", body);

		 		 System.out.println(API_HOST+"/api/v1/asterisk/event/playBack.do"+"."+body.toString());
		      }
		   };
		   thread.start();
	 }




	 @SuppressWarnings("unchecked")
	 private void retryPlaybackCallEnd(String phoneNumber, String actionId, String channelId, String ttsKey) {

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

		 		 System.out.println(API_HOST+"/api/v1/asterisk/event/playStop.do"+","+body.toString());

		 		try { Thread.sleep( 1000 ); } catch (InterruptedException e) { e.printStackTrace(); }

		 		 body.put("requestNumber", FrameworkUtils.generateSessionID());
		 		 body.put("requestTime", FrameworkUtils.currentDate());
		 		 body.put("callInfo", body_callInfo);
		 		 body_tts.put("intro", InbiznetTTsMessage.mCodeToTTSMessage.get(ttsKey));
		 		 body.put("tts", body_tts);

		 		Logger.info("PlayBack => " + body.toString());

		 		 RestTemplateClient.sender(API_HOST+"/api/v1/asterisk/event/PlaybackCallEnd.do", body);

		 		 System.out.println(API_HOST+"/api/v1/asterisk/event/PlaybackCallEnd.do"+"."+body.toString());
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
