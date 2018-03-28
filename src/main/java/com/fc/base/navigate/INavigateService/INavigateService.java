package com.fc.base.navigate.INavigateService;

import com.fc.base.navigate.model.Navigate;

import java.util.List;

public interface INavigateService {

    List<Navigate> navlist();//查询方法
    void addnav(Navigate navigate);//添加方法
    void deletenav(int id);//删除方法
    Navigate getnav(int id);
    void updatenav(Navigate navigate);//修改方法
}
