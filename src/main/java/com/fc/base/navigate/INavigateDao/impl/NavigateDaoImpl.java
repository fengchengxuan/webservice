package com.fc.base.navigate.INavigateDao.impl;

import com.fc.base.navigate.INavigateDao.INavigateDao;
import com.fc.base.navigate.model.Navigate;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NavigateDaoImpl extends BaseDao<Navigate> implements INavigateDao {

    @Override
    public List<Navigate> navlist() {
        String hql = "from Navigate";
        return super.findList(hql,new Object[]{});
    }

    @Override
    public void addnav(Navigate navigate) {
        super.save(navigate);
    }

    @Override
    public void deletenav(int id) {
        Navigate navigate = getnav(id);
        super.delete(navigate);
    }

    @Override
    public Navigate getnav(int id) {
        String hql = "from Navigate where id =?";
        Object [] args = {id};
        return super.findEntity(hql,args);
    }

    @Override
    public void updatenav(Navigate navigate) {
        super.update(navigate);
    }
}
