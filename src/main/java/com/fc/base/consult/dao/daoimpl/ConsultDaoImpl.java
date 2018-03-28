package com.fc.base.consult.dao.daoimpl;

import com.fc.base.consult.dao.ConsultDao;
import com.fc.base.consult.entity.ConsultEntity;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class ConsultDaoImpl extends BaseDao implements ConsultDao {
    @Override
    public List<ConsultEntity> findConsultDao(String userType,String consultType,String
            consultState,String consultAdmin,String consultResult) {
        List<String> list=new ArrayList<>();
        StringBuffer hql=new StringBuffer("from ConsultEntity  where 1=1");
        if(userType!=null && userType.length()>0){
            hql.append(" and userType = ?");
            list.add(userType);
        }
        if(consultType!=null && consultType.length()>0){
            hql.append("and consultType = ?");
            list.add(consultType);
        }
        if(consultState!=null && consultState.length()>0){
            hql.append("and consultState = ?");
            list.add(consultState);
        }
        if(consultAdmin!=null && consultAdmin.length()>0){
            hql.append("and consultAdmin = ?");
            list.add(consultAdmin);
        }
        if(consultResult!=null && consultResult.length()>0){
            hql.append("and consultResult = ?");
            list.add(consultResult);
        }
        return super.findList(hql.toString(),list);
    }
}
