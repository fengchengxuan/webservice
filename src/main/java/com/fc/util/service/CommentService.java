package com.fc.util.service;

import com.fc.util.entity.FcComment;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CommentService {
    void saveProComent(FcComment fcComment);
    List<FcComment> findComment(String type,String commontType);
   FcComment findComment(String id);
   void deleteComment(FcComment fcComment);
   void updateComment(FcComment fcComment);

}
