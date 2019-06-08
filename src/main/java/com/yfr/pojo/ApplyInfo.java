package com.yfr.pojo;

import java.io.Serializable;

public class ApplyInfo implements Serializable {
    private int id;
    private int uid;
    private int pid;
    private int protype;
    private int cuid;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getProtype() {
        return protype;
    }

    public void setProtype(int protype) {
        this.protype = protype;
    }

    public int getCuid() {
        return cuid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public void setCuid(int cuid) {
        this.cuid = cuid;
    }
}
