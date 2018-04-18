package com.fc.util.dao.impl;

import com.fc.util.BaseDao;
import com.fc.util.dao.CommentDao;
import com.fc.util.entity.FcComment;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDaoImpl extends BaseDao implements CommentDao {
    @Override
    public void saveProComment(FcComment fcComment) {

        super.save(fcComment);
    }
}
