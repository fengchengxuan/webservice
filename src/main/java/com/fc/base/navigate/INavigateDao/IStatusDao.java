package com.fc.base.navigate.INavigateDao;

import com.fc.base.navigate.model.Status;

import java.util.List;

public interface IStatusDao {

    List<Status> slist();
    Status getstatus(int stId);
}
