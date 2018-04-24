package com.fc.base.csv.Dao.DaoImpl;

import com.fc.base.csv.Dao.customerDao;
import com.fc.base.csv.entity.complain;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDaoImpl extends BaseDao implements customerDao {
    @Override
    public List<complain> show() {
        String hql = "from  complain where 1=1";
        return super.findList(hql);
    }
}
