package com.fc.base.navigate.INavigateService;

import com.fc.base.navigate.model.Nav;

import java.util.List;

public interface INavService {

    List<Nav> nlist();
    Nav getnav(int id);
}
