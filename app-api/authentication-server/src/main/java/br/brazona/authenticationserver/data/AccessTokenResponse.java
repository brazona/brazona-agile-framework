package br.brazona.authenticationserver.data;


import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class AccessTokenResponse {

    @JsonProperty("access_token")
    private final String accessToken;
}