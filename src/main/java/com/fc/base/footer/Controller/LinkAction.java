package com.fc.base.footer.Controller;

import com.fc.base.footer.Service.ILinkService;
import com.fc.base.footer.model.Link;
import com.fc.base.footer.util.LinkUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("link")
public class LinkAction {

    @Autowired
    ILinkService linkService;

    /**
     * 显示友情链接
     * @return
     */
    @RequestMapping("showLink")
    public @ResponseBody
    LinkUtil showLink(){
        List<Link> list = linkService.showLink();
        LinkUtil linkUtil = new LinkUtil();
        linkUtil.setLinkList(list);
        return linkUtil;
    }
}
