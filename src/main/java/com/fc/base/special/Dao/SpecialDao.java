package com.fc.base.special.Dao;

import com.fc.base.special.entity.SpecialEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/11/17.
 */
public interface SpecialDao {
    public String addSprcial(SpecialEntity entity);
    public List<SpecialEntity> sreachSpecialDao(String specialName, String adminType, String state, String speType);
    public List<SpecialEntity> vagueSearchDao(String key, String title);
    public String update(SpecialEntity entity);
    public void deleteSpecial(SpecialEntity entity);
    public List<SpecialEntity> findEntity(String specialName);
}
