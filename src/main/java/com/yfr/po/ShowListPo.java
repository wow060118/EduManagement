package com.yfr.po;

public class ShowListPo {
    private String title;
    private String teamName;
    private String companyName;
    private String completion;
    private String createTime;
    private int ucid;
    private int uid;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public int getUcid() {
        return ucid;
    }

    public void setUcid(int ucid) {
        this.ucid = ucid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompletion() {
        return completion;
    }

    public void setCompletion(String completion) {
        this.completion = completion;
    }
}
