package com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.act;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inbiznetcorp.visible.ars.front.ui.framework.beans.BasicBean;
import com.inbiznetcorp.visible.ars.front.ui.framework.beans.FrameworkBeans;
import com.inbiznetcorp.visible.ars.front.ui.framework.mymap.MyMap;
import com.inbiznetcorp.visible.ars.front.ui.framework.resttemplate.RestTemplateClient;
import com.inbiznetcorp.visible.ars.front.ui.framework.utils.FrameworkUtils;


@Controller
@RequestMapping("/company")
public class InbiznetAct
{
	 final String pagePrefix = "company/";

	/**
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/Main.do" })
	
	public String main(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "화면을 보고 원하시는 메뉴를 선택해주세요.");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

//		model.addAttribute("historyBack", "none");
		model.addAttribute("paramMap", 	  paramMap);

		return pagePrefix + companyName +"/Main";
	}

	/**
	 * @param companyName
	 * @param model
	 * @return
	 * 대표번호 1644-7900 이동
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/callerid7900/callerid7900.do" })
	public String callerid7900(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "인비즈넷 대표번호 1644-7900 관련 서비스입니다. 원하시는 메뉴를 선택해주세요.");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid7900/callerid7900";
	}

	/**1644-7900 고객사 확인하기
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/callerid7900/customers.do" })
	public String customers7900(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "인비즈넷 대표번호 1644-7900를 이용하는 고객사입니다. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid7900/customers";
	}

	/**1644-7900 전화가안와요
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/callerid7900/noAnswer.do" })
	public String noAnswer7900(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "일시적인 통신 오류일 수 있어 이용하시는 휴대폰의 전원을 재부팅 후 재시도 해주시길 바랍니다. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid7900/noAnswer";
	}

	/**대표번호 1588-0559 이동
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/callerid0559/callerid0559.do" })
	public String callerid0559(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "인비즈넷 대표번호 1588-0559 관련 서비스입니다. 원하시는 메뉴를 선택해주세요. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid0559/callerid0559";
	}

	/**
	 * @param 1588-0559 고객사 확인하기
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/callerid0559/customers.do" })
	public String customers0559(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "인비즈넷 대표번호 1588-0559를 이용하는 고객사입니다. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid0559/customers";
	}
	
	/**
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/callerid0559/noAnswer.do" })
	public String noAnswer0559(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "일시적인 통신 오류일 수 있어 이용하시는 휴대폰의 전원을 재부팅 후 재시도 해주시길 바랍니다. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/callerid0559/noAnswer";
	}

	/**FAQ 메인
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{companyName}/faq/faq.do" })
	public String faq(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		
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
	public String noAnswerFaq(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;		
		
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "일시적인 통신 오류일 수 있어 이용하시는 휴대폰의 전원을 재부팅 후 재시도 해주시길 바랍니다. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

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
	public String kypdRcgnt(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "일시적인 통신 오류일 수 있어 이용하시는 휴대폰의 전원을 재부팅 후 재시도 해주시길 바랍니다. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/faq/kypdRcgnt";
	}


	/**FAQ 해외이용안내
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/faq/overseasUsageGuide.do" })
	public String overseasUsageGuide(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "해외에서도 ars 인증 이용이 가능합니다. 다만 이동통신사업자의 요금 정책에 따라 해외에서 이용 시 별도의 음성 통화 요금이 발생할 수 있습니다. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

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
	public String cardInfoChange(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "고객님의 카드 정보 변경을 원하시면 해당 카드사 고객센터로 연락하여 주시길 바랍니다. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

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
	public String clientInfoChange(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "고객님의 정보 변경을 원하시면 해당 고객사 고객센터로 연락하여 주시길 바랍니다. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

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
	public String certificationDetails(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "인증 내역 변경 및 취소를 원하시면 해당 고객사 고객센터로 연락하여 주시길 바랍니다. ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/faq/certificationDetails";
	}

	/** 서비스도입
	 * @param companyName
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "/{companyName}/sales/sales.do" })
	public String sales(@PathVariable("companyName") String companyName, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
		BasicBean resultBean = null;
		JSONObject body 			= new JSONObject();
		JSONObject body_tts 		= new JSONObject();
		JSONObject body_callInfo	= new JSONObject();
		
		body_callInfo.put("phoneNumber", "01012345678");
		
		body.put("requestNumber", FrameworkUtils.randomStr(10));
		body.put("requestTime", FrameworkUtils.currentDate());
		body.put("callInfo", body_callInfo);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playStop.do",body);
		
		body_tts.put("intro", "화면을 보고 원하시는 메뉴를 선택해주세요 ");
		body.put("tts", body_tts);
		RestTemplateClient.sender("https://local.ring2pay.com:39030//api/v1/asterisk/event/playBack.do", body);

		model.addAttribute("paramMap", paramMap);

		return pagePrefix + companyName +"/sales/sales";
	}



}
