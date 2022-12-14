package com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.biz;

import java.util.HashMap;

public class InbiznetTTsMessage
{
	 public static final String kKey_TTS_Intro 						= "Intro";
	 public static final String kKey_TTS_CallEnd 					= "CallEnd";
	 public static final String kKey_TTS_NoAnswer 					= "noAnswer";
	 public static final String kKey_TTS_otherQuestion 				= "otherQuestion";
	 public static final String kKey_TTS_certificationDetails 		= "certificationDetails";
	 public static final String kKey_TTS_notRequested 				= "notRequested";
	 public static final String kKey_TTS_paymentInquiry 			= "paymentInquiry";
	 public static final String kKey_TTS_Sales						= "Sales";
	 public static final String kKey_TTS_customerChech				= "customerChech";
	 public static final String kKey_TTS_Contact					= "Contact";
	 public static final String kKey_TTS_homePage					= "homePage";
	 public static final String kKey_TTS_errorPage					= "errorPage";

	 public static final HashMap<String, String> mCodeToTTSMessage;
	 public static final HashMap<String, String> mCodeToTTSMenuMessage;

	 static{
		 mCodeToTTSMessage = new HashMap<String, String>();

		 mCodeToTTSMessage.put(kKey_TTS_Intro, 					"화면을 보고 원하시는 메뉴를 선택해주세요.");
//		 mCodeToTTSMessage.put(kKey_TTS_CallEnd, 				"이용해주셔서 감사합니다.");
		 mCodeToTTSMessage.put(kKey_TTS_NoAnswer, 				"ARS인증 요청 후 전화가 걸려오지 않는 경우 대부분 ARS인증으로 걸려가는 번호가 수신차단 되었을 경우 발생하므로,,, 보이는 ARS인증 화면 하단의 수신 관련 설정을 먼저 확인 후 이용해주시기 바랍니다. 보다 자세한 사항은 인비즈넷 홈페이지를 통해 확인하시거나 상담원을 연결하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_Sales, 					"제휴 문의사항을 남겨주세요.");
		 mCodeToTTSMessage.put(kKey_TTS_otherQuestion, 			"당사에서 제공하는 서비스 관련한 문의는 아래 ‘상담원 연결하기’ 버튼을 클릭하여 상담해주시기 바라며, 그 외 문의는 이용하시는 고객사 고객센터로 연락부탁드립니다.보다 자세한 사항은 상담원을 연결하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_certificationDetails, 	"ARS인증 시, 정상적으로 인증번호를 입력하셨음에도, 입력되지 않았다고 나오신다면, 보이는 ARS인증 화면 하단의 관련사항 먼저 참고하신 후 휴대폰 전원을 재부팅하여 이용해주시기 바랍니다.보다 자세한 사항은 인비즈넷 홈페이지를 통해 확인하시거나 상담원을 연결하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_notRequested, 			"ARS인증은, 본인이 요청한 것이 맞는지 보안강화를 위하여 진행하는 본인인증 단계입니다.요청하지 않은 전화가 갑자기 걸려왔을 경우 고객님의 정보를 입력하지 않으시면 본인확인이 되지 않으므로 안심하셔도 됩니다. 다만 계속해서 요청하지 않은 전화가 걸려 온다면 멘트에 안내되는 해당 고객사로 확인하시기 바랍니다. 보다 자세한 사항은 인비즈넷 홈페이지를 통해 확인하시거나 상담원을 연결하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_paymentInquiry, 		"ARS인증이 아닌, 결제 승인 및 고객정보 관련한 모든 문의는 해당 카드사로 문의해주시기 바랍니다. 보다 자세한 사항은 상담원을 연결하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_customerChech, 			"이용중이시던 서비스명을 선택해주세요.");
		 mCodeToTTSMessage.put(kKey_TTS_Contact, 				"보다나은 상담을 위하여 통화내용이 녹음됩니다.");
		 mCodeToTTSMessage.put(kKey_TTS_homePage, 				"홈페이지 연결 후 통화가 종료됩니다.");
		 mCodeToTTSMessage.put(kKey_TTS_errorPage, 				"현재 시스템 점검으로 인하여 상담원 연결이 불가능 합니다. 불편을 드려 죄송합니다.");


		 mCodeToTTSMenuMessage = new HashMap<String, String>();

		 mCodeToTTSMenuMessage.put(kKey_TTS_NoAnswer, 					"ARS 인증전화가 오지않아요.");
		 mCodeToTTSMenuMessage.put(kKey_TTS_otherQuestion, 				"기타문의를 하고싶어요.");
		 mCodeToTTSMenuMessage.put(kKey_TTS_certificationDetails, 		"인증번호 입력이 안돼요.");
		 mCodeToTTSMenuMessage.put(kKey_TTS_notRequested, 				"요청하지않은 인증전화가 걸려왔어요.");
		 mCodeToTTSMenuMessage.put(kKey_TTS_paymentInquiry, 			"결제문의를 하고싶어요.");
	 }

}
