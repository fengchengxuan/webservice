package com.fc.base.footer.Service.impl;

import com.fc.base.footer.Dao.ILinkDao;
import com.fc.base.footer.Service.ILinkService;
import com.fc.base.footer.model.Link;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LinkServiceImpl implements ILinkService {

    @Autowired
    ILinkDao linkDao;

    @Override
    public List<Link> showLink() {
        return linkDao.showLink();
    }
}
