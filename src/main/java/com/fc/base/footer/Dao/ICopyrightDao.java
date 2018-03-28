package com.fc.base.footer.Dao;

import com.fc.base.footer.model.Copyright;

import java.util.List;

public interface ICopyrightDao {

    boolean saveCopyright(Copyright copyright);
    List<Copyright> findCopyright(String webname, String icp, String copyrighted,String master);
    boolean updateCopyright(Copyright entity);
    Copyright findcr(String userName);
}
