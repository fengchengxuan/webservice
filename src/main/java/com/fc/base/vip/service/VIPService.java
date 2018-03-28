package com.fc.base.vip.service;

import com.fc.login.model.AnonymousEntity;
import com.fc.login.model.Log;
import com.fc.login.model.Login;
import java.util.List;

public interface VIPService {
   public List<Log> findLog();

   public List<Login> findLogin();
   public List<AnonymousEntity> findAnonymous();
   public void deleteVipUser(String userId, String loginType);
}
