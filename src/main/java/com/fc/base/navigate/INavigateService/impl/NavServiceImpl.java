package com.fc.base.navigate.INavigateService.impl;

import com.fc.base.navigate.INavigateDao.INavDao;
import com.fc.base.navigate.INavigateService.INavService;
import com.fc.base.navigate.model.Nav;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NavServiceImpl implements INavService{

    @Autowired
    INavDao iNavDao;

    @Override
    public List<Nav> nlist() {
        return iNavDao.nlist();
    }

    @Override
    public Nav getnav(int seId) {
        return iNavDao.getnav(seId);
    }
}
