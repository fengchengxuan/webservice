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
    @OneToOne
    @Cascade(value = {CascadeType.SAVE_UPDATE})
    @JoinColumn(name = "fcuser_id")
    private FcUser fcuserId;
    @Column(name = "old_question")
    private String oldQusertion;
    @Column(name = "old_answer")
    private String oldAnswer;
    @Column(name = "new_question")
    private String newQuestion;
    @Column(name = "new_answer")
    private String newAnswer;
    @Column(name = "new_confirm_answer")
    private String newConfirmAnswer;

    public FcUser getFcuserId() {
        return fcuserId;
    }

    public void setFcuserId(FcUser fcuserId) {
        this.fcuserId = fcuserId;
    }

    public String getOldQusertion() {
        return oldQusertion;
    }

    public void setOldQusertion(String oldQusertion) {
        this.oldQusertion = oldQusertion;
    }

    public String getOldAnswer() {
        return oldAnswer;
    }

    public void setOldAnswer(String oldAnswer) {
        this.oldAnswer = oldAnswer;
    }

    public String getNewQuestion() {
        return newQuestion;
    }

    public void setNewQuestion(String newQuestion) {
        this.newQuestion = newQuestion;
    }

    public String getNewAnswer() {
        return newAnswer;
    }

    public void setNewAnswer(String newAnswer) {
        this.newAnswer = newAnswer;
    }

    public String getNewConfirmAnswer() {
        return newConfirmAnswer;
    }

    public void setNewConfirmAnswer(String newConfirmAnswer) {
        this.newConfirmAnswer = newConfirmAnswer;
    }
}
