package com.fc.util;

import com.fc.base.contentadmin.artitle.entity.ArticleEntity;
import com.fc.base.user.entity.FcUser;
import com.fc.util.entity.ArtComment;
import com.fc.util.entity.FcComment;

import java.util.List;

public class CommentUtil {
    private List<FcComment> fcCommentsList;
    private List<ArtComment> atrCommentsList;  //后台显示文章
    private int currentPage=20;
    private int totalNum=0;
  public String changeType(String type){
       if("十二数据".equals(type)){
       type="4";
       }else if("我们与峰程".equals(type)){
           type="3";
       }else if("新闻快报".equals(type)){
           type="2";
       }
       return type;
   };

    public List<FcComment> getFcCommentsList() {
        return fcCommentsList;
    }

    public void setFcCommentsList(List<FcComment> fcCommentsList) {
        this.fcCommentsList = fcCommentsList;
    }

    public List<ArtComment> getAtrCommentsList() {
        return atrCommentsList;
    }

    public void setAtrCommentsList(List<ArtComment> atrCommentsList) {
        this.atrCommentsList = atrCommentsList;
        totalNum=atrCommentsList.size()/currentPage;
        if(atrCommentsList.size()%currentPage>0){
            totalNum++;
        }

    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }
   public ArtComment getArtComment( String user, String commenter, String content, String commontType,String status, String artTitle){
        ArtComment artComment=new ArtComment();
        artComment.setCommenter(commenter);
        artComment.setUser(user);
        artComment.setArtTitle(artTitle);
        artComment.setContent(content);
        artComment.setCommontType(commontType);
        artComment.setStatus(status);
        return artComment;
    }
}
