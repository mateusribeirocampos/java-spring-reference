package com.iSchool.enums;

public enum ResourceType implements CodeEnum {

    LESSON_ONLY(1),
    LESSON_TASK(2),
    FORUM(3),
    EXTERNAL_LINK(4);

    private final int code;

    private ResourceType(int code) {
        this.code = code;
    }

    public int getCode() {
        return code;
    }
}
