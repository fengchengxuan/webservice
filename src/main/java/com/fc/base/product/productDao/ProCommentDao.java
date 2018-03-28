package com.fc.base.product.productDao;

import com.fc.base.product.entity.ProCommentEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/10/18.
 */
public interface ProCommentDao {
    public List<String> addCommentDao(ProCommentEntity entity);//保存
    public List<ProCommentEntity> sreachCommentDao(String userName, String content, String proTitle); //查内容
}
