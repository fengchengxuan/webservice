package com.fc.util.service.impl;

import com.fc.util.dao.CommentDao;
import com.fc.util.entity.FcComment;
import com.fc.util.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    CommentDao commentDao;

    @Override
    public void saveProComent(FcComment fcComment) {
        commentDao.saveProComment(fcComment);

    }

    @Override
    public List<FcComment> findComment(String type, String commontType) {
        return commentDao.findComment(type,commontType);
    }

    @Override
    public FcComment findComment(String id) {
     List<FcComment> list=   commentDao.findComment(id);
     if(list.size()<1){
         return null;
     }else{
         return commentDao.findComment(id).get(0);
     }
    }

    @Override
    public void deleteComment(FcComment fcComment) {
        commentDao.deleteComment(fcComment);
    }

    @Override
    public void updateComment(FcComment fcComment) {
        commentDao.updateComment(fcComment);
    }
}
