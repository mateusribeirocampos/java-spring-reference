package com.iSchool.utils;

import com.iSchool.enums.ResourceType;
import jakarta.persistence.Converter;

// Classe concreta — não é mais abstrata, pode ser instanciada pelo JPA
// Estende BaseEnumConverter informando qual enum gerencia: ResourceType
@Converter(autoApply = true)
public class ResourceTypeConverter extends BaseEnumConverter<ResourceType> {


    protected ResourceTypeConverter() {
        // Chama o construtor da classe pai passando todos os valores do enum
        super(ResourceType.values());
    }
}
