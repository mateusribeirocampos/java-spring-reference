package com.iSchool.enums;

public enum DeliverStatus implements CodeEnum {

    PENDING(1),
    ACCEPTED(2),
    REJECT(3);

    private final int code;

    DeliverStatus(int code) {
        this.code = code;
    }

    public int getCode() {
        return code;
    }
}
