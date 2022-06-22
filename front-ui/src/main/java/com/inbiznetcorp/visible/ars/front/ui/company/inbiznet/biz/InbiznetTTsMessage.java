package com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.biz;

import java.util.HashMap;

public class InbiznetTTsMessage
{
	 public static final String kKey_TTS_Intro 						= "Intro";
	 public static final String kKey_TTS_NoAnswer 					= "NoAnswer";
	 public static final String kKey_TTS_otherQuestion 				= "otherQuestion";
	 public static final String kKey_TTS_certificationDetails 		= "certificationDetails";
	 public static final String kKey_TTS_notRequested 				= "notRequested";
	 public static final String kKey_TTS_paymentInquiry 			= "paymentInquiry";
	 public static final String kKey_TTS_Sales						= "Sales";
	 public static final String kKey_TTS_CallEnd					= "CallEnd";

	 public static final HashMap<String, String> mCodeToTTSMessage;

	 static{
		 mCodeToTTSMessage = new HashMap<String, String>();

		 mCodeToTTSMessage.put(kKey_TTS_Intro, 					"화면을 보고 원하시는 메뉴를 선택해주세요.");
		 mCodeToTTSMessage.put(kKey_TTS_NoAnswer, 				"ARS 인증 요청 후 전화가 걸려오지 않는 경우 대부분 ARS 인증으로 걸려가는 번호가 수신차단 되었을 경우 발생하므로 아래와 같이 수신 관련 설정을 먼저 확인 후 이용해 주시기 바랍니다.보다 자세한 사항은 인비즈넷 홈페이지를 통해 확인하시거나 상담원을 연결하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_Sales, 					"제휴 문의사항을 남겨주세요.");
		 mCodeToTTSMessage.put(kKey_TTS_otherQuestion, 			"당사에서 제공하는 서비스 관련한 문의는 아래 상담원 연결하기 버튼을 클릭하여 상담 바라며, 그 외 문의는 해당 고객사 고객센터로 연락 부탁 드립니다. 보다 자세한 사항은 상담원을 연결 하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_certificationDetails, 	"ARS 인증 시 정상적으로 인증번호를 입력하셨음에도 입력되지 않았다고 나오신다면 아래 내용 참고하시어 재부팅 후 이용해주시기 바랍니다.보다 자세한 사항은 인비즈넷 홈페이지를 통해 확인하시거나 상담원을 연결하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_notRequested, 			"요청하지 않은 전화가 걸려온다면 전화를 받지 마시거나 받더라도 비밀번호를 입력하지 않으시면 본인확인이 되지 않으므로 안심하셔도 됩니다.보다 자세한 사항은 인비즈넷 홈페이지를 통해 확인하시거나 상담원을 연결하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_paymentInquiry, 		"ARS인증이 아닌 결제승인 및 고객정보 관련한 모든 문의는 해당 카드사로 문의해주시기 바랍니다. 보다 자세한 사항은 상담원 연결하시길 바랍니다.");
	 }

}
