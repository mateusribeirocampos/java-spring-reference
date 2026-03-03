package com.iSchool.utils;

import com.iSchool.enums.ResourceType;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class ResourceTypeConverter implements AttributeConverter<ResourceType, Integer> {

    @Override
    public Integer convertToDatabaseColumn(ResourceType resourceType) {
        System.out.println("ResourceType.getCode() from convertToDatabaseColumn: " + resourceType.getCode());
        return resourceType.getCode();
    }

    @Override
    public ResourceType convertToEntityAttribute(Integer dbData) {
        for (ResourceType value : ResourceType.values()) {
            System.out.println("Values from convertToEntityAttribute: " + value);
            if (value.getCode() == dbData) {
                System.out.println("value of condition: " + value);
                return value;
            }
        }
       throw new IllegalArgumentException("Code invalid: " + dbData);
    }
}
