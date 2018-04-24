package com.fc.base.csv.Dao;

import com.fc.base.csv.entity.complain;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface customerDao {
    List<complain> show();
}
