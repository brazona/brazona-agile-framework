package br.brazona.baf.dtos;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

@Component
@Getter
@Setter
public class RolesDTO {
    private long id;
    private String name;
}
