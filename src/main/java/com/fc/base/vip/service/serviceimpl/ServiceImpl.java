package com.fc.base.vip.service.serviceimpl;

import com.fc.base.vip.dao.Dao;
import com.fc.base.vip.service.VIPService;
import com.fc.login.model.AnonymousEntity;
import com.fc.login.model.Log;
import com.fc.login.model.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceImpl implements VIPService {

    @Autowired
    private Dao dao;
    @Override
    public List<Log> findLog() {
        return dao.findLog();

    }
    @Override
    public List<Login> findLogin() {
        return dao.findLogin();
    }

    @Override
    public List<AnonymousEntity> findAnonymous() {
        return dao.findAnonymous();
    }

    @Override
    public void deleteVipUser(String userId, String loginType) {
        if("手机用户".equals(loginType)){
            List<Login> loginList=dao.findLogin();
            for(int i= 0;i<loginList.size();i++){
                if(loginList.get(i).getId().equals(userId)){
                    dao.deleteVip(loginList.get(i));
                }

            }
        }else if("短信用户".equals(loginType)){
            List<Log> logList=dao.findLog();
            for(int i= 0;i<logList.size();i++){
                if(logList.get(i).getId().equals(userId)){
                    dao.deleteVip(logList.get(i));
                }
            }
        }else if("匿名用户".equals(loginType)){
            List<AnonymousEntity> anonymousEntityList=dao.findAnonymous();
            for(int i= 0;i<anonymousEntityList.size();i++){
                if(anonymousEntityList.get(i).getId().equals(userId)){
                    dao.deleteVip(anonymousEntityList.get(i));
                }
            }
        }

    }
}
