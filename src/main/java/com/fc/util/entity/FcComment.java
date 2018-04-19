package com.fc.util.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "fccomment")
public class FcComment {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "fccomment_id")
    private String id;
    @Column(name = "fcuser_id")
    private String fcuserId;  //-- 评论id
    @Column(name = "commenter")
    private String commenter;  //-- 评论人
    @Column(name = "comm_time")
    private Timestamp commTime;  // 评论时间
    @Column(name = "content")
    private String content;  //内容
    @Column(name = "is_include_sensitive")
    private int isIncludeSensitive;  //是否是敏感词
    @Column(name = "sensitive_word")
    private String sensitiveWord;  //敏感词
    @Column(name = "read_count")
    private int readCount;  //- 阅读次数
    @Column(name = "submiter_addr")
    private String submiterAddr;  // -- 评论者地址
    @Column(name = "commont_type")
    private String commontType;  //-- 评价类型：好评/中评/差评
    @Column(name = "is_pre_sales")
    private int is_pre_sales;  //-- 评价类型2：1-售前；0-售后
    @Column(name = "status")
    private String status;  //-- 评价状态
    @Column(name = "comment_class")
    private String commentClass;  /// -- 评价类型：产品提问，订单评价，新闻评价，文章评价
     @Column(name = "answer")
    private String answer;  //-- 针对“产品提问”类型，对于提问的回答。只有“产品提问”类型，这个字段才会有值
   @Column(name = "artcle_id")
    private String artcleId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFcuserId() {
        return fcuserId;
    }

    public void setFcuserId(String fcuserId) {
        this.fcuserId = fcuserId;
    }

    public String getCommenter() {
        return commenter;
    }

    public void setCommenter(String commenter) {
        this.commenter = commenter;
    }

    public Timestamp getCommTime() {
        return commTime;
    }

    public void setCommTime(Timestamp commTime) {
        this.commTime = commTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getIsIncludeSensitive() {
        return isIncludeSensitive;
    }

    public void setIsIncludeSensitive(int isIncludeSensitive) {
        this.isIncludeSensitive = isIncludeSensitive;
    }

    public String getSensitiveWord() {
        return sensitiveWord;
    }

    public void setSensitiveWord(String sensitiveWord) {
        this.sensitiveWord = sensitiveWord;
    }

    public int getReadCount() {
        return readCount;
    }

    public void setReadCount(int readCount) {
        this.readCount = readCount;
    }

    public String getSubmiterAddr() {
        return submiterAddr;
    }

    public void setSubmiterAddr(String submiterAddr) {
        this.submiterAddr = submiterAddr;
    }

    public String getCommontType() {
        return commontType;
    }

    public void setCommontType(String commontType) {
        this.commontType = commontType;
    }

    public int getIs_pre_sales() {
        return is_pre_sales;
    }

    public void setIs_pre_sales(int is_pre_sales) {
        this.is_pre_sales = is_pre_sales;
    }

    public String getStatus() {
        return status;
    }

    public String getArtcleId() {
        return artcleId;
    }

    public void setArtcleId(String artcleId) {
        this.artcleId = artcleId;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCommentClass() {
        return commentClass;
    }

    public void setCommentClass(String commentClass) {
        this.commentClass = commentClass;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }
}
