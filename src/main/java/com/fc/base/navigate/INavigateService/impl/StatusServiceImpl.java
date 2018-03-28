package com.fc.base.navigate.INavigateService.impl;

import com.fc.base.navigate.INavigateDao.IStatusDao;
import com.fc.base.navigate.INavigateService.IStatusService;
import com.fc.base.navigate.model.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatusServiceImpl implements IStatusService {

    @Autowired
    IStatusDao iStatusDao;

    @Override
    public List<Status> slist() {
        return iStatusDao.slist();
    }

    @Override
    public Status getstatus(int stId) {
        return iStatusDao.getstatus(stId);
    }
}
