package com.fc.base.special.entity;

import javax.persistence.*;

/**
 * Created by lenovo on 2017/11/20.
 */
@Entity
@Table(name="special_eval") //专题评价表
public class SpecialEvalEntity {
     @Id
     @GeneratedValue(strategy = GenerationType.IDENTITY)
     private int id;
    @Column(name = "Evaluate_Structure")//页面结构
    private int pageStructure;
    @Column(name = "Evaluate_Aesthetics")//页面美观
    private int pageAesthetics;
    @Column(name = "Evaluate_Appaction")//网站程序
    private int pageAppaction;
    @Column(name = "Evaluate_Operate")//运营
    private int operate;
    @Column(name = "Evaluate_marketing")//营销
    private int marketing;
    @Column(name = "Evaluate_Copy")//文案
    private int pageCopy;
    @Column(name = "Evaluate_Data")//数据
    private int data;
    @Column(name = "Evaluate_Population")//总体
    private int population;
    @Column(name = "Evaluate_WorkReport")//工作报告
    private int workReport;
    @Version
    @Column(name="version")
    private int version;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPageStructure() {
        return pageStructure;
    }

    public void setPageStructure(int pageStructure) {
        this.pageStructure = pageStructure;
    }

    public int getPageAesthetics() {
        return pageAesthetics;
    }

    public void setPageAesthetics(int pageAesthetics) {
        this.pageAesthetics = pageAesthetics;
    }

    public int getPageAppaction() {
        return pageAppaction;
    }

    public void setPageAppaction(int pageAppaction) {
        this.pageAppaction = pageAppaction;
    }

    public int getOperate() {
        return operate;
    }

    public void setOperate(int operate) {
        this.operate = operate;
    }

    public int getMarketing() {
        return marketing;
    }

    public void setMarketing(int marketing) {
        this.marketing = marketing;
    }

    public int getPageCopy() {
        return pageCopy;
    }

    public void setPageCopy(int pageCopy) {
        this.pageCopy = pageCopy;
    }

    public int getData() {
        return data;
    }

    public void setData(int data) {
        this.data = data;
    }

    public int getPopulation() {
        return population;
    }

    public void setPopulation(int population) {
        this.population = population;
    }

    public int getWorkReport() {
        return workReport;
    }

    public void setWorkReport(int workReport) {
        this.workReport = workReport;
    }
}
