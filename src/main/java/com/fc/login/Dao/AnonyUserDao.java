package com.fc.login.Dao;

import com.fc.login.model.AnonymousEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/10/31.
 */
public interface AnonyUserDao {
    public void saveAnonyUser(String phoneNumber, String password);
    List<AnonymousEntity> getAnonymousUser(String id, String anonymousUser, String password);
}
