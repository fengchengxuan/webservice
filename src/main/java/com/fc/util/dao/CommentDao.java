package com.fc.util.dao;

import com.fc.util.entity.FcComment;

import java.util.List;

public interface CommentDao {
    void saveProComment(FcComment fcComment);
    List<FcComment> findComment(String type,String commontType);

}
