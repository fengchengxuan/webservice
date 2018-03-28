package com.fc.base.footer.Dao.impl;

import com.fc.base.footer.Dao.ICopyrightDao;
import com.fc.base.footer.model.Copyright;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CopyDaoimpl extends BaseDao<Copyright> implements ICopyrightDao{

    @Override
    public boolean saveCopyright(Copyright copyright) {
        if(copyright!=null){
            super.save(copyright);
            return true;
        }
        return false;
    }

    @Override
    public List<Copyright> findCopyright(String webname, String icp, String copyrighted,String master) {
        List<String> list=new ArrayList<>();
        StringBuffer hql=new StringBuffer("from Copyright where  1=1");
        if(webname!=null &&webname.length()>0){
            hql.append(" and webname = ?");
            list.add(webname);
        }
        if( icp!=null && icp.length()>0){
            hql.append(" and  icp = ?");
            list.add(icp);
        }
        if(copyrighted!=null &&copyrighted.length()>0){
            hql.append(" and copyrighted = ?");
            list.add(copyrighted);
        }
        if(master!=null &&master.length()>0){
            hql.append(" and master = ?");
            list.add(master);
        }
        return super.findList(hql.toString(),list);
    }

    @Override
    public boolean updateCopyright(Copyright entity) {
        if(entity!=null){
            super.update(entity);
            return true;
        }
        return false;
    }

    @Override
    public Copyright findcr(String userName) {
        String hql = "from Copyright where userName = ?";
        Object [] args = {userName};
        return super.findEntity(hql,args);
    }
}
