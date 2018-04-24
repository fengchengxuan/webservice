package com.fc.base.csv.service.customerimpl;

import com.fc.base.csv.Dao.customerDao;
import com.fc.base.csv.entity.complain;
import com.fc.base.csv.service.customerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerSveviceImpl implements customerService {
    @Autowired
    private customerDao dao;

    @Override
    public List<complain> show() {
        return dao.show();
    }
}
