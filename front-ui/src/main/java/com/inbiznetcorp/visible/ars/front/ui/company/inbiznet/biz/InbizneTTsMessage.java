package com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.biz;

import java.util.HashMap;

public class InbizneTTsMessage
{
	 public static final String kKey_TTS_Intro 		= "Intro";
	 public static final String kKey_TTS_CallCenter = "CallCenter";

	 public static final HashMap<String, String> mCodeToTTSMessage;

	 static{
		 mCodeToTTSMessage = new HashMap<String, String>();

		 mCodeToTTSMessage.put(kKey_TTS_Intro, 		"화면을 보고 원하시는 메뉴를 선택해주세요.");
		 mCodeToTTSMessage.put(kKey_TTS_CallCenter, "상담어쩌고~~~");
	 }

}
