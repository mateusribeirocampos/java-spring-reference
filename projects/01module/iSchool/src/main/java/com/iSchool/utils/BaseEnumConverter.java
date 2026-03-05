package com.iSchool.utils;

import com.iSchool.enums.CodeEnum;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

// Classe abstrata e genérica: T deve ser um enum que implementa CodeEnum
// Abstrata pois não faz sentido instanciá-la diretamente — cada enum terá sua
// subclasse
@Converter
public abstract class BaseEnumConverter<T extends Enum<T> & CodeEnum>
        implements AttributeConverter<T, Integer> {

    // Guarda todos os valores possíveis do enum (ex: ResourceType.values())
    // Recebido pelo construtor pois não é possível chamar T.values() em contexto genérico
    private final T[] values;

    // Cada subclasse passa os valores do seu enum específico
    // Ex: super(ResourceType.values())
    protected BaseEnumConverter(T[] values) {
        this.values = values;
    }

    // JPA chama este metodo ao salvar no banco
    // Pega o código inteiro do enum para gravar na coluna
    @Override
    public Integer convertToDatabaseColumn(T value) {
        return value.getCode();
    }

    // JPA chama este metodo ao ler do banco
    // Percorre os valores do enum procurando aquele cujo código bate com o do banco
    @Override
    public T convertToEntityAttribute(Integer dbData) {
        for (T value : this.values) {
            System.out.println("Atributo: " + value);
            System.out.println("Código do atributo: " + value.getCode());
            if (value.getCode() == dbData) {
                return value;
            }
        }
        // Nenhum valor encontrado — código inválido no banco
        throw new IllegalArgumentException("Code invalid: " + dbData);
    }
}