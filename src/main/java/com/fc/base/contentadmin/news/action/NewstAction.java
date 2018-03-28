package com.fc.base.contentadmin.news.action;

import com.fc.base.contentadmin.news.entity.NewsEntity;
import com.fc.base.contentadmin.news.service.NewsService;
import com.fc.base.contentadmin.news.uitl.NewsUitl;
import com.fc.base.contentadmin.news.uitl.SreachNews;
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
@RequestMapping("/news")
public class NewstAction {

    @Autowired
    private NewsService service;
    private NewsEntity entity;
    private String flse;
    private List<NewsEntity> listNews;
    private SreachNews SreachNews;
    private List<String> list;


    @RequestMapping("/add")//产品添加
    public @ResponseBody
    List<String> add(String htmlText, String newsTitle, String newsKey, String newsAbstract, String newsType, HttpSession session) {
        list = new ArrayList<String>();
        entity = new NewsEntity();
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
            entity.setUserName((String) session.getAttribute("loginName"));
        }
        if (htmlText != null && htmlText != "") {
            entity.setHtmlText(htmlText);
        }else{
            list.add("必须输入内容");
            return list;
        }

        if (newsTitle != null && newsTitle != "") {
            entity.setNewsTitle(newsTitle);
        } else {
            list.add("必须输入产品标题");
            return list;
        }
        if (newsType != null && newsType != "") {
            entity.setNewsType(newsType);
        } else {
            list.add("请选择发布类型");
            return list;
        }
        if (newsKey != null && newsKey != "") {
            entity.setNewsKey(newsKey);
        } else {
            list.add("请输入关键词");
            return list;
        }
        if (newsAbstract != null && newsAbstract != "") {
            entity.setNewsAbstract(newsAbstract);
        } else {
            list.add("输入摘要");
            return list;
        }
        flse = service.addNews(entity);
        list.add(flse);
        return list;
    }


    @RequestMapping("/Search")//条件搜索
    public @ResponseBody
    SreachNews Search(String newsTitle, String newsKey) {
        SreachNews = service.searchTitleNews(newsTitle, newsKey);
        return SreachNews;
    }

    @RequestMapping("/SearchAll")//按类型查询
    public @ResponseBody
    SreachNews SearchType(String newsState, String newsType, String systemId) {
        if (newsType.equals("管理员")) {
            newsType = "";
        }
        SreachNews = service.searchStateNews(newsState, newsType, systemId);
        return SreachNews;
    }

    @RequestMapping("/SearchTitle")//标题查询
    public @ResponseBody
    List<NewsEntity> SearchTitle(String newsTitle) {
        listNews = new ArrayList<NewsEntity>();
        if (newsTitle != null && newsTitle.length() > 0) {
            SreachNews = service.searchTitleNews(newsTitle, "");
        }
        if (SreachNews.getList() != null && !SreachNews.getList().isEmpty()) {
            listNews = SreachNews.getList();

        }
        return listNews;
    }

    @RequestMapping("/updata")
    public @ResponseBody
    List<String> upDataNews(String newNewsTitle, String htmlText, String newsTitle, String newsKey, String newsAbstract, String newsType, HttpSession session) {
        String username = (String) session.getAttribute("loginName");
        if (username!=null&&username.length()>1){
            entity.setUserName((String) session.getAttribute("loginName"));
        }else {
            list.add("您还未登录!");
            return list;
        }
        list = service.upDataService(username, newNewsTitle, htmlText, newsTitle, newsKey, newsAbstract, newsType);
        return list;
    }

    @RequestMapping("/deleteNews")
    public @ResponseBody
    List<String> deleteNews(String newsTitle,HttpSession session) {
        String username = (String) session.getAttribute("loginName");
        if (username==null|| username.length()<1){
            list.add("您还未登录!");
            return list;
        }

        list = service.deleteNews(newsTitle);
        return list;
    }

    @RequestMapping("/upDateJump")
    public @ResponseBody
    List<NewsEntity> upDateJump(String id) {
        listNews=new ArrayList<NewsEntity>();
        listNews = service.SreachId(id);
        return listNews;
    }

    @RequestMapping("/deleteAll")//删除勾选部分
    public @ResponseBody
    List<String> deleteAll(int[] listId,HttpSession session) {
        String username = (String) session.getAttribute("loginName");
        if (username==null|| username.length()<1){
            list.add("您还未登录!");
            return list;
        }
        list = new ArrayList<String>();
        listNews = new ArrayList<NewsEntity>();
        for (int i : listId) {
            if (service.SreachId(i + "").size() > 0) {
                listNews.add(service.SreachId(i + "").get(0));
            }

        }
        if (listNews.size() > 0) {
            for (int i = 0; i < listNews.size(); i++) {
                list = service.deleteNews(listNews.get(i).getNewsTitle());
            }
        }
        return list;
    }

    @RequestMapping("/findNew")//查询全部
    public @ResponseBody
    List<NewsEntity> newsShow() {
        listNews = new ArrayList<NewsEntity>();
        listNews = service.findNews();
        return listNews;
    }

    @RequestMapping("/browserUp")//更改浏览量
    public @ResponseBody
    List<NewsEntity> newsBrowser(String newsTitle) {

        listNews = service.newsBrowserService(newsTitle);
        return listNews;
    }

    @RequestMapping("/newType")
    public @ResponseBody List<NewsEntity> newTypeAll(String type){
        return service.SreachId(type);
    }
    @RequestMapping("/showAll")
    public  @ResponseBody List showTotal(int num){

        int totalNum=num/8;
        if(num%8!=0){
            totalNum++;
        }
        List list=new ArrayList();
        list.add(totalNum);
        return list;
    }
    @RequestMapping("showNews")//首页新闻显示
    public @ResponseBody NewsUitl showNewsTime(){
       NewsUitl util= service.showNewsserivce();
        return util;
    }

    @RequestMapping("newsData")//显示文章
    public String newsData(){
        return "html/news/newsArticles";
    }

}
