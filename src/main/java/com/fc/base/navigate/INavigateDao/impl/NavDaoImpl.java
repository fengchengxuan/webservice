package com.fc.base.navigate.INavigateDao.impl;

import com.fc.base.navigate.INavigateDao.INavDao;
import com.fc.base.navigate.model.Nav;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NavDaoImpl extends BaseDao<Nav> implements INavDao {

    @Override
    public List<Nav> nlist() {
        String hql = "from Nav";
        return super.findList(hql,new Object[]{});
    }

    @Override
    public Nav getnav(int seId) {
        String hql = "from Nav where seId=?";
        Object[]args ={seId};
        return super.findEntity(hql,args);
    }
}
