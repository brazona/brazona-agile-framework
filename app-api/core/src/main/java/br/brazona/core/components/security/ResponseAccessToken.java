package br.brazona.core.components.security;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Data
@Builder
@AllArgsConstructor
@Component
public class ResponseAccessToken {
    @Autowired
    @JsonProperty("access_token")
    private String accessToken;
    @Autowired
    private Integer expiresIn;
    @Autowired
    private Integer refreshExpiresIn;
    @Autowired
    private String tokenType;
    @Autowired
    private Integer notBeforePolicy;
    @Autowired
    private String scope;
}
