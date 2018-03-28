package com.fc.base.navigate.INavigateDao;

import com.fc.base.navigate.model.Nav;

import java.util.List;

public interface INavDao {

        List<Nav>nlist();
        Nav getnav(int seId);
}
