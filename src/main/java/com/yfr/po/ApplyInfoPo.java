package com.yfr.po;

import java.io.Serializable;

public class ApplyInfoPo  implements Serializable {
    private int id;
    private String uid;
    private String pid;
    private int protype;
    private String cuid;
    private String title;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public int getProtype() {
        return protype;
    }

    public void setProtype(int protype) {
        this.protype = protype;
    }

    public String getCuid() {
        return cuid;
    }

    public void setCuid(String cuid) {
        this.cuid = cuid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
