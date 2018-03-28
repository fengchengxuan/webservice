package com.fc.base.footer.Service.impl;

import com.fc.base.footer.Dao.ICopyrightDao;
import com.fc.base.footer.Service.ICopyrightService;
import com.fc.base.footer.model.Copyright;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CopyrightServiceimpl implements ICopyrightService {

    @Autowired
    ICopyrightDao iCopyrightDao;

    @Override
    public boolean saveCopyright(String webname,String icp,String copyrighted,String master,String userName) {
        Copyright copyright = new Copyright();
        copyright.setWebname(webname);
        copyright.setIcp(icp);
        copyright.setCopyrighted(copyrighted);
        copyright.setMaster(master);
        copyright.setUserName(userName);
        boolean flag = iCopyrightDao.saveCopyright(copyright);
        return flag;
    }

    @Override
    public boolean updateCopyright( Copyright copyright,String webname,String icp,String copyrighted,String master) {
        copyright.setWebname(webname);
        copyright.setIcp(icp);
        copyright.setCopyrighted(copyrighted);
        copyright.setMaster(master);
        boolean web = iCopyrightDao.updateCopyright(copyright);
        return web;
    }

    @Override
    public Copyright findcr(String userName) {
        return iCopyrightDao.findcr(userName);
    }
}
