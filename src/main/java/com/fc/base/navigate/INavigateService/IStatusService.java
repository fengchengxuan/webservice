package com.fc.base.navigate.INavigateService;

import com.fc.base.navigate.model.Status;

import java.util.List;

public interface IStatusService {

    List<Status> slist();
    Status getstatus(int stId);
}
