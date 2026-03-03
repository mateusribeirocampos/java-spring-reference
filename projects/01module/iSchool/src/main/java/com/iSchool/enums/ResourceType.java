package com.iSchool.enums;

public enum ResourceType {

    LESSON_ONLY(1),
    LESSON_TASK(2),
    FORUM(3),
    EXTERNAL_LINK(4);

    private final int code;

    private ResourceType(int code) {
        this.code = code;
    }

    public int getCode() {
        System.out.println("Code from ResourceType interface");
        return code;
    }
}
