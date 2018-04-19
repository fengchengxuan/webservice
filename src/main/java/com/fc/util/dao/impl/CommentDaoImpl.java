package com.fc.util.dao.impl;

import com.fc.util.BaseDao;
import com.fc.util.dao.CommentDao;
import com.fc.util.entity.FcComment;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CommentDaoImpl extends BaseDao implements CommentDao {
    @Override
    public List<FcComment> findComment(String type,String commontType) {
        StringBuffer hql=new StringBuffer("from FcComment where 1 = 1");
        List<String> list=new ArrayList<>();
        if(type !=null && !"".equals(type)){
            hql.append("and commentClass = ?");
            list.add(type);
        }
        if(commontType !=null && !"".equals(commontType)){
            hql.append("and commontType = ?");
            list.add(commontType);
        }
       return super.findList(hql.toString(),list);

    }

    @Override
    public void saveProComment(FcComment fcComment) {

        super.save(fcComment);
    }

    @Override
    public List<FcComment> findComment(String id) {
        StringBuffer hql=new StringBuffer("from FcComment where 1 = 1");
        List<String> list=new ArrayList<>();
        if(id !=null && !"".equals(id)){
            hql.append("and id = ?");
            list.add(id);
        }
        return super.findList(hql.toString(),list);
    }

    @Override
    public void deleteComment(FcComment fcComment) {
        super.delete(fcComment);
    }

    @Override
    public void updateComment(FcComment fcComment) {
        super.update(fcComment);
    }
}
