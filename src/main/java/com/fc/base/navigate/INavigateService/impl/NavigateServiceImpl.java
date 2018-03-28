package com.fc.base.navigate.INavigateService.impl;

import com.fc.base.navigate.INavigateDao.INavigateDao;
import com.fc.base.navigate.INavigateService.INavigateService;
import com.fc.base.navigate.model.Navigate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NavigateServiceImpl implements INavigateService{

    @Autowired
    INavigateDao iNavigateDao;

    @Override
    public List<Navigate> navlist() {
        return iNavigateDao.navlist();
    }

    @Override
    public void addnav(Navigate navigate) {
        iNavigateDao.addnav(navigate);
    }

    @Override
    public void deletenav(int id) {
        iNavigateDao.deletenav(id);
    }

    @Override
    public Navigate getnav(int id) {
        return iNavigateDao.getnav(id);
    }

    @Override
    public void updatenav(Navigate navigate) {
        iNavigateDao.updatenav(navigate);
    }
}
