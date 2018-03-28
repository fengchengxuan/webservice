package com.fc.base.navigate.Controller;

import com.fc.base.navigate.INavigateService.INavService;
import com.fc.base.navigate.INavigateService.INavigateService;
import com.fc.base.navigate.INavigateService.IOperatorService;
import com.fc.base.navigate.INavigateService.IStatusService;
import com.fc.base.navigate.model.Nav;
import com.fc.base.navigate.model.Navigate;
import com.fc.base.navigate.model.Operator;
import com.fc.base.navigate.model.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/nav")
public class NavigateAction {

    @Autowired
    INavigateService iNavigateService;

    @Autowired
    INavService iNavService;

    @Autowired
    IStatusService statusService;

    @Autowired
    IOperatorService operatorService;

    @RequestMapping("/navlist")
    public String navlist(Model model){
        List<Navigate> navlist = iNavigateService.navlist();
        model.addAttribute("navlist",navlist);
        return "jsp/systemadmin/navigation/index";
    }

    @RequestMapping("/addnav")
    public String addnav(HttpServletRequest request, Navigate navigate, Nav nav,int seId, Status status,int stId, Operator operator,int opId,Model model){
        String a = request.getParameter("catalog");
        String b = request.getParameter("navname");
        String c = request.getParameter("navtitle");
        String d = request.getParameter("keywords");
        String e = request.getParameter("navdescribe");
        String f = request.getParameter("navurl");
        String g = request.getParameter("navstatus");
        String h = request.getParameter("operator");

        nav = iNavService.getnav(seId);
        navigate.setCatalog(nav);

        status = statusService.getstatus(stId);
        navigate.setNavstatus(status);

        operator = operatorService.getoperator(opId);
        navigate.setOperator(operator);

        iNavigateService.addnav(navigate);
        return "redirect:navlist.action";
    }

    @RequestMapping("deletenav")
    public String deletenav(int id){
        iNavigateService.deletenav(id);
        return "redirect:navlist.action";
    }

    @RequestMapping("getnav")
    public String getnav(Navigate navigate,int id,Model model){
        navigate = iNavigateService.getnav(id);
        model.addAttribute("navigate",navigate);
        return "jsp/systemadmin/navigation/revnav";
    }

    @RequestMapping("updatenav")
    public String updatenav(Navigate navigate){
        iNavigateService.updatenav(navigate);
        return "redirect:navlist.action";
    }
}
