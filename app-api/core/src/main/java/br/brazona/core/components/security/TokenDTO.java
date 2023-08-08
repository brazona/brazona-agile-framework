package br.brazona.core.components.security;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Builder
@AllArgsConstructor
@Component
public class TokenDTO {
    private String accessToken;
}
