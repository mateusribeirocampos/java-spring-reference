package com.iSchool.utils;

import com.iSchool.enums.DeliverStatus;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class DeliverStatusConverter extends BaseEnumConverter<DeliverStatus> {

    protected DeliverStatusConverter() {
        super(DeliverStatus.values());
    }
}
