package com.inbiznetcorp.visible.ars.front.ui.company.act;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inbiznetcorp.visible.ars.front.ui.company.inbiznet.biz.InbiznetTTsMessage;
import com.inbiznetcorp.visible.ars.front.ui.framework.beans.FrameworkBeans;
import com.inbiznetcorp.visible.ars.front.ui.framework.mymap.MyMap;

@Controller
@RequestMapping("/incoming")
public class IncomingAct
{
	final String pagePrefix = "company/";

	@RequestMapping(value = { "/{phoneNumber}" })
	public String main(@PathVariable("phoneNumber") String phoneNumber, Model model)
	{
		MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();

		model.addAttribute("paramMap", 	  paramMap);

		System.out.println("phoneNumber : " + phoneNumber);
		System.out.println("phoneNumber : " + phoneNumber);
		System.out.println("phoneNumber : " + phoneNumber);
		System.out.println("phoneNumber : " + phoneNumber);
		System.out.println("phoneNumber : " + phoneNumber);
		System.out.println("phoneNumber : " + phoneNumber);

		return pagePrefix + "inbiznet" +"/Main";
	}
}
