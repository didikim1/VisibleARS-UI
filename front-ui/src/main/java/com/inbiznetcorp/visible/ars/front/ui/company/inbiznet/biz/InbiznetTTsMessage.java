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
		 mCodeToTTSMessage.put(kKey_TTS_NoAnswer, 				"전화가 걸려오지 않는 경우 휴대폰의 전원을 재부팅 후 재시도 해주시길 바랍니다.보다 자세한 사항은 인비즈넷 홈페이지를 통해 확인하시거나 상담원을 연결하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_Sales, 					"제휴문의를 원하시면 하단에 내용을 기입하여 문의하기버튼을 눌러주세요. ");
		 mCodeToTTSMessage.put(kKey_TTS_otherQuestion, 			"당사에서 제공하는 ARS 인증 관련한 모든 문의는 아래 상담원 연결로 연락 바라며, 그 외 문의는 해당 고객사 고객센터로 연락 부탁드립니다. ");
		 mCodeToTTSMessage.put(kKey_TTS_certificationDetails, 	"ARS 인증 시 입력한 정보는 인증 시스템상에는 즉시 반영되나 해당 정보 변경을 위해서는 이용하시는 고객사 고객센터로 연락하여 정보 변경을 요청해주시기 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_notRequested, 			"요청하지 않은 전화가 걸려온다면 전화를 받지 마시거나 받더라도 비밀번호를 입력하지 않으시면 본인확인이 되지 않으므로 안심하셔도 됩니다.보다 자세한 사항은 인비즈넷 홈페이지를 통해 확인하시거나 상담원을 연결하시길 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_paymentInquiry, 		"ARS인증이 아닌 결제 승인 및 고객정보 관련한 문의는 해당 카드사로 문의해주시기 바랍니다.");
		 mCodeToTTSMessage.put(kKey_TTS_CallEnd, 				"인비즈넷 보이는ARS를 종료합니다.이용해주셔서 감사합니다.");
	 }

}
