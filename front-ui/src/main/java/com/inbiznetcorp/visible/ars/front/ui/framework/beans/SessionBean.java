package com.inbiznetcorp.visible.ars.front.ui.framework.beans;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;


@Component("sessionBean")
@Scope(value="session")
public class SessionBean
{
	public String mberSeq 			= ""; // 회원SEQ
	public String dpamentId 		= ""; // 부서명 고유 ID
	public String positionId 		= ""; // 직위명 고유 ID
	public String roleId            = ""; // 권한 고유 ID
	public String chargeId          = ""; // 담당업무
	public String uniqId 			= ""; // 고유ID
	public String mberName 			= ""; // 이름
	public String mberSttus 		= ""; // 상태
	public String moblphonNo 		= ""; // 휴대폰번호
	public String emailAddress 		= ""; // Email주소
}

