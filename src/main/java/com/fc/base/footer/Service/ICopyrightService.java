package com.fc.base.footer.Service;

import com.fc.base.footer.model.Copyright;

public interface ICopyrightService {

    boolean saveCopyright(String webname,String icp,String copyrighted,String master,String userName);
    boolean updateCopyright( Copyright copyright,String webname,String icp,String copyrighted,String master);
    Copyright findcr(String userName);
}
