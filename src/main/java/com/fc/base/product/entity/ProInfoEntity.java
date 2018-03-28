package com.fc.base.product.entity;

public class ProInfoEntity {
    private int id;

    private String demand;//需求

    private  String service;//服务标准

    private  String servicePrice;//服务金额

   // private String hard_Configuration;//硬性配置

   // private String soft_Configuration;//软性配置

   // private String personnel;//人员配置

   // private String time_Allocation;//时间配备

   // private String user_range; //适合用户

   // private String data;//数据统计

   // private String pro_manager;//经理

   // private String technical_service;//技术服务

   // private String serviceGuarante;//服务保障

    private String preferential;//优惠

    private String timeValue;

   // private String totalNum;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDemand() {
        return demand;
    }

    public void setDemand(String demand) {
        this.demand = demand;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getServicePrice() {
        return servicePrice;
    }

    public void setServicePrice(String servicePrice) {
        this.servicePrice = servicePrice;
    }

    public String getPreferential() {
        return preferential;
    }

    public void setPreferential(String preferential) {
        this.preferential = preferential;
    }

    public String getTimeValue() {
        return timeValue;
    }

    public void setTimeValue(String timeValue) {
        this.timeValue = timeValue;
    }
}
