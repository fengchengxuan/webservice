package com.fc.base.footer.Controller;

import com.fc.base.footer.Service.ICopyrightService;
import com.fc.base.footer.model.Copyright;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/copyright")
public class CopyrightAction {

    @Autowired
    ICopyrightService copyrightService;

    @Autowired
    private Map<String,Object>map;

    @ModelAttribute
    public void init(){
        map=new HashMap<>();
        map.put("ok", false);
    }

    @RequestMapping("/updatecopyright")
    public @ResponseBody Map<String,Object> addcopyright(HttpSession session, String webname, String icp, String copyrighted, String master) {
        String userName = (String) session.getAttribute("loginName");
        if (userName == null || userName.length() < 1) {  //判断用户是否为空
            map.put("data", false);
        } else {
            map.put("data", true);
            boolean flag;//判断是否有值
            Copyright copyright = copyrightService.findcr(userName);
           if(copyright!= null ){
               flag = copyrightService.updateCopyright(copyright,webname,icp,copyrighted,master);
           }else{
               flag = copyrightService.saveCopyright(webname, icp, copyrighted, master,userName);
           }
            map.put("flag", flag);
        }
        return map;
    }

    @RequestMapping("showInfo")
    public @ResponseBody Map<String,Object>  showUserInfo(HttpServletRequest request) {
        String username = (String) request.getSession().getAttribute("loginName");
        if (username != null && username.length() > 0) {
          Copyright copyright = copyrightService.findcr(username);
          if (copyright != null){
            map.put("message", copyright);
          }
        map.put("flag", true);
         return map;
       }
        map.put("flag", false);
        return map;
   }
}
