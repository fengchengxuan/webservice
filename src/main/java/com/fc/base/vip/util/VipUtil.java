package com.fc.base.vip.util;

import com.fc.login.model.AnonymousEntity;
import com.fc.login.model.Log;
import com.fc.login.model.Login;

import java.util.ArrayList;
import java.util.List;

public class VipUtil {
    private int totalNum;

    private int currentPage=20;

    private List<Log> log;

    private List<Login> login;

    private List<AnonymousEntity> anonymousEntities;

    private List<VipEntity>  list;

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }

    public List<Log> getLog() {
        return log;
    }

    public void setLog(List<Log> log) {
        totalNum=log.size()/currentPage;
        if(log.size()%20!=0){
            totalNum++;
        }
        this.log = log;
    }

    public List<Login> getLogin(){
        return login;
    }

    public void setLogin(List<Login> login) {
        totalNum=login.size()/currentPage;
        if(login.size()%20!=0){
            totalNum++;
        }
        this.login = login;
    }

    public void totalList(List<Login> login, List<Log> log, List<AnonymousEntity> anonymousEntities){
        List<VipEntity> list=new ArrayList<VipEntity>();
        if(login!=null && login.size()>0){
            for(int i=0;i<login.size();i++){
                VipEntity entity= new VipEntity();
                entity.setUserId(login.get(i).getId());
                entity.setUserType("手机用户");
                if(login.get(0).getVipname()!=null )
                entity.setLoginName(login.get(i).getCode());
                if(login.get(0).getAddress()!=null )
                entity.setHome(login.get(i).getAddress());
                if(login.get(0).getRegistertime()!=null )
                entity.setRegistered(login.get(i).getRegistertime());
                if(login.get(0).getDimension()!=null )
                entity.setDimension(login.get(i).getDimension());
                if(login.get(0).getLoginState()!=null )
                entity.setState(login.get(i).getLoginState());
                list.add(entity);
            }
        }if(log!=null && log.size()>0){
            for(int i=0;i<log.size();i++){
                VipEntity entity= new VipEntity();
                entity.setUserId(log.get(i).getId());
                entity.setUserType("邮箱用户");
                if(log.get(0).getVipname()!=null )
                entity.setLoginName(log.get(i).getVipname());
                if(log.get(0).getAddress()!=null )
                entity.setHome(log.get(i).getAddress());
                if(log.get(0).getRegistertime()!=null )
                entity.setRegistered(log.get(i).getRegistertime());
                if(log.get(0).getDimension()!=null )
                entity.setDimension(log.get(i).getDimension());
                if(log.get(0).getLogState()!=null ||"".equals(log.get(0).getLogState()))
                entity.setState(log.get(i).getLogState());
                list.add(entity);
            }
        }if(anonymousEntities!=null && anonymousEntities.size()>0){
          ;  for(int i=0;i<anonymousEntities.size();i++){
                VipEntity entity= new VipEntity();
                entity.setUserId(anonymousEntities.get(i).getId());
                entity.setUserType("匿名用户");
                entity.setLoginName(anonymousEntities.get(i).getVipname());
                entity.setHome(anonymousEntities.get(i).getAddress());
                entity.setRegistered(anonymousEntities.get(i).getRegistered());
                entity.setDimension(anonymousEntities.get(i).getDimension());
                entity.setState(anonymousEntities.get(i).getState());
                list.add(entity);
            }
        }
        totalNum=list.size()/currentPage;
        if(list.size()%currentPage!=0){
            totalNum++;
        }
        this.list = list;


    }


    public List<AnonymousEntity> getAnonymousEntities() {
        return anonymousEntities;
    }

    public void setAnonymousEntities(List<AnonymousEntity> anonymousEntities) {
        totalNum=anonymousEntities.size()/currentPage;
        if(anonymousEntities.size()%20!=0){
            totalNum++;
        }
        this.anonymousEntities = anonymousEntities;
    }

    public List<VipEntity> getList() {

        return list;
    }

    public void setList(List<VipEntity> list) {
        totalNum=list.size()/currentPage;
        if(list.size()%20!=0){
            totalNum++;
        }
        this.list = list;
    }
}
