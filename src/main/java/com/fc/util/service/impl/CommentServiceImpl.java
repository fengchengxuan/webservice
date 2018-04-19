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
}
