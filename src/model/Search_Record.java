package model;

/**
 *
 * 功能描述: 搜索记录类
 *
 * @param:
 * @return:
 * @auther: Administrator
 * @date: 2018/4/28 15:35
 */

public class Search_Record {

    private int Id;             //序号
    private int orderId;        //订单号
    private String SN;          //车机号
    private Long search_time;   //查询时间
    private String record_code; //记录码（UUID+查询时间）  外键

    public int getId() {
        return Id;
    }

    public int getOrderId() {
        return orderId;
    }

    public String getSN() {
        return SN;
    }

    public Long getSearch_time() {
        return search_time;
    }

    public String getRecord_code() {
        return record_code;
    }

    public void setId(int id) {
        Id = id;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public void setSN(String SN) {
        this.SN = SN;
    }

    public void setSearch_time(Long search_time) {
        this.search_time = search_time;
    }

    public void setRecord_code(String record_code) {
        this.record_code = record_code;
    }



}
