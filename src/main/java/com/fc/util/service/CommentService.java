package com.fc.util.service;

import com.fc.util.entity.FcComment;
import org.springframework.stereotype.Service;

@Service
public interface CommentService {
    void saveProComent(FcComment fcComment);
}
