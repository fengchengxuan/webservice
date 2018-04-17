package com.fc.util.entity;

import com.fc.base.user.entity.Base;
import com.fc.base.user.entity.FcUser;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "safe_question")
public class SafeQusetion extends Base {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 36)
    private String  id;
    @Column(name = "fcuser_id")
    private String fcuserId;  //用户id
    @Column(name = "question_id")
    private String question;//问题
    @Column(name = "answer")
    private String answer;//答案
    @Column(name = "confirm_answer")
    private String ConfirmAnswer;//确认答案

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFcuserId() {
        return fcuserId;
    }

    public void setFcuserId(String fcuserId) {
        this.fcuserId = fcuserId;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getConfirmAnswer() {
        return ConfirmAnswer;
    }

    public void setConfirmAnswer(String confirmAnswer) {
        ConfirmAnswer = confirmAnswer;
    }
}
