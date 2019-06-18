package com.yfr.po;

public class UserUpdatePo {
    private String account;
    private String pwdold;
    private String pwdnew;
    private String phone;
    private String email;

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPwdold() {
        return pwdold;
    }

    public void setPwdold(String pwdold) {
        this.pwdold = pwdold;
    }

    public String getPwdnew() {
        return pwdnew;
    }

    public void setPwdnew(String pwdnew) {
        this.pwdnew = pwdnew;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
