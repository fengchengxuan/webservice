package com.fc.base.vip.dao;

import com.fc.login.model.AnonymousEntity;
import com.fc.login.model.Log;
import com.fc.login.model.Login;

import java.util.List;

public interface Dao {
    public List<Log> findLog();

    public List<Login> findLogin();
    public List<AnonymousEntity> findAnonymous();
    public void deleteVip(Log log);
    public void deleteVip(Login login);
    public void deleteVip(AnonymousEntity entity);
}
