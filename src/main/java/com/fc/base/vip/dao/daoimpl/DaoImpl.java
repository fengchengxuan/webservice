package com.fc.base.vip.dao.daoimpl;

import com.fc.base.vip.dao.Dao;
import com.fc.login.model.AnonymousEntity;
import com.fc.login.model.Log;
import com.fc.login.model.Login;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DaoImpl extends BaseDao implements Dao {
    @Override
    public List<Log> findLog() {
        return super.findList("from Log where 1 = 1");
    }

    @Override
    public List<Login> findLogin() {
        return super.findList("from Login where 1 = 1");
    }

    @Override
    public List<AnonymousEntity> findAnonymous() {
            return super.findList("from AnonymousEntity where 1 = 1");
    }

    @Override
    public void deleteVip(Log log) {
        super.delete(log);
    }

    @Override
    public void deleteVip(Login login) {
        super.delete(login);
    }

    @Override
    public void deleteVip(AnonymousEntity entity) {
        super.delete(entity);
    }
}
