package com.fc.base.contentadmin.artitle.action;

import com.fc.base.contentadmin.artitle.entity.ArticleEntity;
import com.fc.base.contentadmin.artitle.service.ArticleService;
import com.fc.base.contentadmin.artitle.uitl.ArtUitl;
import com.fc.base.contentadmin.artitle.uitl.SreachArt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/9/20.
 */
@Controller
@RequestMapping("/Article")
public class ArticleAction {

    @Autowired
    private ArticleService service;
    private ArticleEntity entity;
    private String flse;
    private List<ArticleEntity> listArt;
    private SreachArt SreachArt;
    private List<String> list;


    @RequestMapping("/add")//添加文章
    public @ResponseBody
    List<String> add(String htmlText, String artTitle, String artKey, String artAbstract, String artType, HttpSession session) {
        list = new ArrayList<String>();
        entity = new ArticleEntity();
//        user=(User)session.getAttribute("user");
//        if(user.getLoginName()!=null &&user.getLoginName()!=""){
//            entity.setUserName(user.getLoginName());
//        }else{
//            list.add("请先登录你的账号，哥们");
//            return list;
//        }
        String username = (String) session.getAttribute("loginName");
        if (username==null|| username.length()<1){
            list.add("您还未登录!");
            return list;
        }else{
            entity.setUserName(username);
        }
        if (htmlText != null && htmlText != "") {
            entity.setHtmlText(htmlText);
        }else{
            list.add("必须输入内容");
            return list;
        }

        if (artTitle != null && artTitle != "") {
            entity.setArtTitle(artTitle);
        } else {
            list.add("必须输入文章标题");
            return list;
        }
        if (artType != null && artType != "") {
            entity.setArtType(artType);
        } else {
            list.add("请选择发布类型");
            return list;
        }
        if (artKey != null && artKey != "") {
            entity.setArtKey(artKey);
        } else {
            list.add("请输入关键词");
            return list;
        }
        if (artAbstract != null && artAbstract != "") {
            entity.setArtAbstract(artAbstract);
        } else {
            list.add("输入摘要");
            return list;
        }
        flse = service.addArticle(entity);
        list.add(flse);
        return list;
    }

    @RequestMapping("/Search")//条件搜索
    public @ResponseBody
    SreachArt Search(String artTitle, String artKey) {
        SreachArt = service.searchTitleArticle(artTitle, artKey);
        return SreachArt;
    }

    @RequestMapping("/SearchAll")//按类型查询
    public @ResponseBody
    SreachArt SearchType(String artState, String artType, String systemId) {
        if (artType.equals("管理员")) {
            artType = "";
        }
        SreachArt = service.searchStateArt(artState, artType, systemId);
        return SreachArt;
    }

    @RequestMapping("/SearchTitle")//标题查询
    public @ResponseBody
    List<ArticleEntity> SearchTitle(String artTitle) {
        listArt = new ArrayList<ArticleEntity>();
        if (artTitle != null && artTitle.length() > 0) {
            SreachArt = service.searchTitleArticle(artTitle, "");
        }
        if (SreachArt.getList() != null && !SreachArt.getList().isEmpty()) {
            listArt = SreachArt.getList();
        }
        return listArt;
    }

    @RequestMapping("/Updata")
    public @ResponseBody
    List<String> upDataArt(String newArtTitle, String htmlText, String artTitle, String artKey, String artAbstract, String artType, HttpSession session) {
        String username = (String) session.getAttribute("loginName");
        if (username!=null&&username.length()>1){
            entity.setUserName((String) session.getAttribute("loginName"));
        }else {
            list.add("您还未登录!");
            return list;
        }
        list = service.upDataService(username, newArtTitle, htmlText, artTitle, artKey, artAbstract, artType);
        return list;
    }

    @RequestMapping("/deleteArt")
    public @ResponseBody
    List<String> deleteArt(String artTitle,HttpSession session) {
        if (session.getAttribute("loginName")==null&&((String) session.getAttribute("loginName")).length()<1){
            list.add("您还未登录!");
            return list;
        }
        list = new ArrayList<String>();
        list = service.deleteArt(artTitle);
        return list;
    }

    @RequestMapping("/upDateJump")
    public @ResponseBody
    List<ArticleEntity> upDateJump(String id) {
        listArt = service.SreachId(id);
        return listArt;
    }

    @RequestMapping("/deleteAll")//删除勾选部分
    public @ResponseBody
    List<String> deleteAll(int[] listId) {
        list = new ArrayList<String>();
        listArt = new ArrayList<ArticleEntity>();
        for (int i : listId) {
            if (service.SreachId(i + "").size() > 0) {
            }
        }
        if (listArt.size() > 0) {
            for (int i = 0; i < listArt.size(); i++) {
                list = service.deleteArt(listArt.get(i).getArtTitle());
            }
        }
        return list;
    }

    @RequestMapping("/artShow")//查询全部
    public @ResponseBody
    List<ArticleEntity> artShow(String artType,HttpSession session) {
        listArt = new ArrayList<ArticleEntity>();
        listArt = service.findArticle();
        if(artType.length()>0){
            List<ArticleEntity> list=new ArrayList();
            for(int i=0;i<listArt.size();i++){
                if(artType.equals(listArt.get(i).getArtType())){
                    list.add(listArt.get(i));
                }
            }
            return list;

        }
        return listArt;
    }

    @RequestMapping("/browserUp")//更改浏览量
    public @ResponseBody
    List<ArticleEntity> artBrowser(String artTitle) {
        listArt = service.artBrowserService(artTitle);
        return listArt;
    }

    @RequestMapping("/artType")
    public @ResponseBody List<ArticleEntity> artTypeAll(String type){
        return service.SreachId(type);
    }

    @RequestMapping("/showTotal")
    public  @ResponseBody List<String> showTotal(int num){
        int totalNum=num/8;
        if(num%8!=0){
            totalNum++;
        }
        List list=new ArrayList();
        list.add(totalNum+"");
        return list;
    }

    @RequestMapping("showArt")//首页文章显示
    public @ResponseBody ArtUitl showArtTime(String artType){
        return service.showArtserivce(artType);
    }
    @RequestMapping("showDateOrFC")
    public @ResponseBody List<ArticleEntity> showDateOrFC(String type,String id){
        return  service.showDateOrFC(type,id);
    }
}
