package com.inbiznetcorp.visible.ars.front.ui.company.act;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inbiznetcorp.visible.ars.front.ui.framework.beans.BasicBean;
import com.inbiznetcorp.visible.ars.front.ui.framework.beans.FrameworkBeans;
import com.inbiznetcorp.visible.ars.front.ui.framework.mymap.MyMap;

@Controller
@RequestMapping("/company")
public class CompanyAct
{
	 final String pagePrefix = "company/";

	@RequestMapping(value = { "/{companyName}/Main.do" })
    public String Main(@PathVariable("companyName") String companyName, Model model)
    {
        MyMap paramMap = FrameworkBeans.findHttpServletBean().findClientRequestParameter();
        BasicBean resultBean = null;

        model.addAttribute("paramMap", paramMap);

        return pagePrefix + companyName +"/main";
    }
}
