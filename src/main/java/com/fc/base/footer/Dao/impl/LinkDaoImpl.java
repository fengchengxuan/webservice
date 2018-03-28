package com.fc.base.footer.Dao.impl;

import com.fc.base.footer.Dao.ILinkDao;
import com.fc.base.footer.model.Link;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LinkDaoImpl extends BaseDao<Link> implements ILinkDao {

    @Override
    public List<Link> showLink() {
        String hql = "from Link";
        return super.findList(hql,new Object[]{});
    }
}
