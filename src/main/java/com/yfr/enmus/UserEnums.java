package com.yfr.enmus;

public enum  UserEnums {
    NONE(-1, "none"),UNDERCREATE(0, "创新团队"),POSTCREATE(1,"需求团队");
    private Integer code;
    private String desc;

    private UserEnums(Integer code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public Integer getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }

    public static UserEnums fromName(String name) {
        for (UserEnums e : UserEnums.values()) {
            if (e.name().equals(name)) {
                return e;
            }
        }
        return UserEnums.NONE;
    }

    public static UserEnums fromCode(Integer code) {
        for (UserEnums e : UserEnums.values()) {
            if (e.getCode().equals(code)) {
                return e;
            }
        }
        return UserEnums.NONE;
    }

    public static UserEnums fromDesc(String desc) {
        for (UserEnums e : UserEnums.values()) {
            if (e.getDesc().equals(desc)) {
                return e;
            }
        }
        return UserEnums.NONE;
    }
}
