package com.fc.base.product.productService.productServiceImpl;

import com.fc.base.product.entity.ProCommentEntity;
import com.fc.base.product.productDao.ProCommentDao;
import com.fc.base.product.productService.ProCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by lenovo on 2017/10/18.
 */
@Service
public class ProCommentServiceImpl implements ProCommentService{
    @Autowired
    private ProCommentDao commentDao;
    private ProCommentEntity commentEntity;
    private List<String> list;
    private List<ProCommentEntity> listComment;
    @Override//添加评论
    public List<String> addComment(String content, String proTitle,String userName) {
       listComment= commentDao.sreachCommentDao(userName,content,proTitle);
       if(listComment.size()>0){
           list=new ArrayList<String>();
           list.add("已经提交了，不用在重复提交");
           return list;
       }
        commentEntity=new ProCommentEntity();
        commentEntity.setContent(content);
        commentEntity.setProTitle(proTitle);
        commentEntity.setUserName(userName);
        Date date=new Date();
        Format format=new SimpleDateFormat("yyyy-MM-dd  hh:mm");
        commentEntity.setCreateDate(format.format(date));
        list= commentDao.addCommentDao(commentEntity);
        return list;

    }

}
