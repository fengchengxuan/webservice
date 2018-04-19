package com.fc.util.dao;

import com.fc.base.user.entity.FcUser;
import com.fc.util.entity.FcComment;

import java.util.List;

public interface CommentDao {
    void saveProComment(FcComment fcComment);
    List<FcComment> findComment(String type,String commontType);
    List<FcComment> findComment(String id);
    void deleteComment(FcComment fcComment);
    void updateComment(FcComment fcComment);
}
