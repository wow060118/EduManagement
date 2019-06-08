package com.yfr.enmus;

public enum StatusEnums {
    NONE(-1, "none"),NO(0, "无人申请"),APPLY(1,"已申请"),POST(2, "已提交"),OK(3,"交接完成");
    private Integer code;
    private String desc;

    private StatusEnums(Integer code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public Integer getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }

    public static StatusEnums fromName(String name) {
        for (StatusEnums e : StatusEnums.values()) {
            if (e.name().equals(name)) {
                return e;
            }
        }
        return StatusEnums.NONE;
    }

    public static StatusEnums fromCode(Integer code) {
        for (StatusEnums e : StatusEnums.values()) {
            if (e.getCode().equals(code)) {
                return e;
            }
        }
        return StatusEnums.NONE;
    }

    public static StatusEnums fromDesc(String desc) {
        for (StatusEnums e : StatusEnums.values()) {
            if (e.getDesc().equals(desc)) {
                return e;
            }
        }
        return StatusEnums.NONE;
    }
}
