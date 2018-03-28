package com.fc.base.special.service;

import com.fc.base.special.entity.SpecialEntity;
import com.fc.base.special.uitl.SpecialUitl;

import java.util.List;

/**
 * Created by lenovo on 2017/11/17.
 */

public interface SpecialService {
    public String addSprcial(String adminName, String specialName, String specialTitle, String specialKey,
                             String description, String specialLink, String structure, String state, String adminType,
                             String userName, String makingDate, String deliveryDate, String demoAddress, String pageStructure,
                             String pageAesthetics, String appaction, String operate, String marketing, String copy,
                             String data, String population, String workReport, String speType);

    public SpecialUitl allSpecial(String adminType, String state, String speType);
    public SpecialUitl  vagueSearchService(String key, String title);
    public String update(String adminName, String specialName, String specialTitle, String specialKey,
                         String description, String specialLink, String structure, String state, String adminType,
                         String userName, String makingDate, String deliveryDate, String demoAddress, String pageStructure,
                         String pageAesthetics, String appaction, String operate, String marketing, String copy,
                         String data, String population, String workReport, String speType);
    public boolean deleteSpecial(String specialName);
    public List<SpecialEntity> findEntity(String specialName);
}
