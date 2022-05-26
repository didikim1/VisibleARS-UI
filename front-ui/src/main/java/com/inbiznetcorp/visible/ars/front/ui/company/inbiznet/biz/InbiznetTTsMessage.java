package com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.biz;

import java.util.HashMap;

public class InbiznetTTsMessage
{
	 public static final String kKey_TTS_Intro 			= "Intro";
	 public static final String kKey_TTS_Main7900 		= "Main7900";
	 public static final String kKey_TTS_Main0559 		= "Main0559";
	 public static final String kKey_TTS_Customer7900 	= "Customer7900";
	 public static final String kKey_TTS_Customer0559 	= "Customer0559";
	 public static final String kKey_TTS_NoAnswer 		= "NoAnswer";
	 public static final String kKey_TTS_MainFAQ 		= "MainFAQ";
	 public static final String kKey_TTS_OverseasGuide 	= "OverseasGuide";
	 public static final String kKey_TTS_CardInfo		= "CardInfo";
	 public static final String kKey_TTS_ClientInfo		= "ClientInfo";
	 public static final String kKey_TTS_CertiInfo		= "ClientInfo";

	 public static final HashMap<String, String> mCodeToTTSMessage;

	 static{
		 mCodeToTTSMessage = new HashMap<String, String>();

		 mCodeToTTSMessage.put(kKey_TTS_Intro, 					"화면을 보고 원하시는 메뉴를 선택해주세요.");
		 mCodeToTTSMessage.put(kKey_TTS_NoAnswer, 				"일시적인 통신 오류일 수 있어 이용하시는 휴대폰의 전원을 재부팅 후 재시도 해주시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_Main7900, 				"인비즈넷 대표번호 1644-7900 관련 서비스입니다. 원하시는 메뉴를 선택해주세요.");
		 mCodeToTTSMessage.put(kKey_TTS_Main0559, 				"인비즈넷 대표번호 1588-0559 관련 서비스입니다. 원하시는 메뉴를 선택해주세요.");
		 mCodeToTTSMessage.put(kKey_TTS_Customer7900,  			"인비즈넷 대표번호 1644-7900를 이용하는 고객사입니다.");
		 mCodeToTTSMessage.put(kKey_TTS_Customer0559,  			"인비즈넷 대표번호 1588-0559를 이용하는 고객사입니다.");
		 mCodeToTTSMessage.put(kKey_TTS_MainFAQ, 				"자주하는 질문입니다.원하시는 메뉴를 선택해주세요.");
		 mCodeToTTSMessage.put(kKey_TTS_OverseasGuide, 			"해외에서도 ars 인증 이용이 가능합니다. 다만 이동통신사업자의 요금 정책에 따라 해외에서 이용 시 별도의 음성 통화 요금이 발생할 수 있습니다.");
		 mCodeToTTSMessage.put(kKey_TTS_CardInfo, 				"고객님의 카드 정보 변경을 원하시면 해당 카드사 고객센터로 연락하여 주시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_ClientInfo, 			"고객님의 정보 변경을 원하시면 해당 고객사 고객센터로 연락하여 주시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_CertiInfo, 				"인증 내역 변경 및 취소를 원하시면 해당 고객사 고객센터로 연락하여 주시길 바랍니다.");
	 }

}
