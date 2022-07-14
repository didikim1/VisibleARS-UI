package com.inbiznetcorp.visible.ars.front.ui.company.act;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inbiznetcorp.visible.ars.front.ui.framework.beans.BasicBean;
import com.inbiznetcorp.visible.ars.front.ui.framework.beans.FrameworkBeans;
import com.inbiznetcorp.visible.ars.front.ui.framework.mymap.MyMap;

@Controller
@RequestMapping("/sysconfig/company")
public class SysConfgAct
{
	final String pagePrefix = "company/";

	@RequestMapping(value = { "/{companyName}/errorset.do" })
	public String errorSet(@PathVariable("companyName") String companyName, Model model)
	{
		 return "redirect:/company/inbiznet/errorset.do"; }
	}

