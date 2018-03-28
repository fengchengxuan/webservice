package com.fc.base.product.util;

/**
 * Created by lenovo on 2017/9/22.
 */
public class ProUtil {
    public String alterTitle(String proTitle){
        String value="例如：";
        return proTitle.replace(value,"");
    }
public String typeChange(String type){
        if("网站建设/程序/APP研发与定制".equals(type)){
            return "develop";
        }else if("网络计划与制定".equals(type)){
            return "plan";
        }else if ("网络营销".equals(type)){
            return "marketing";
        }else if ("网络推广".equals(type)){
            return "popularize";
        }else if ("网络文案".equals(type)){
            return "document";
        }else if ("视频制作与推广".equals(type)){
            return "video";
        }else if ("搜索优化".equals(type)){
            return "seo";
        }else if ("网络媒体".equals(type)){
            return "media";
        }else if ("词条/百科".equals(type)){
            return "baike";
        }else if ("网络运营".equals(type)){
            return "operation";
        }else if ("数据统计".equals(type)){
            return "data";
        }else if ("网络传媒及线上线下各类广告投放".equals(type)){
            return "advertisement";
        }
        return "";
    }
}
