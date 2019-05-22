package com.yfr.enmus;

public enum ProType {

    NONE(-1, "none"),UNDERCREATE(0, "本科生团队作品"),POSTCREATE(1,"研究生团队作品"),REQUIRE(2, "需求团队需求");
    private Integer code;
    private String desc;

    private ProType(Integer code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public Integer getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }

    public static ProType fromName(String name) {
        for (ProType e : ProType.values()) {
            if (e.name().equals(name)) {
                return e;
            }
        }
        return ProType.NONE;
    }

    public static ProType fromCode(Integer code) {
        for (ProType e : ProType.values()) {
            if (e.getCode().equals(code)) {
                return e;
            }
        }
        return ProType.NONE;
    }

    public static ProType fromDesc(String desc) {
        for (ProType e : ProType.values()) {
            if (e.getDesc().equals(desc)) {
                return e;
            }
        }
        return ProType.NONE;
    }
}
