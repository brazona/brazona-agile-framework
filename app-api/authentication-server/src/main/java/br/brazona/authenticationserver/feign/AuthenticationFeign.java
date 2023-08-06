package br.brazona.authenticationserver.feign;

import br.brazona.authenticationserver.data.AccessTokenRequest;
import br.brazona.authenticationserver.data.AccessTokenResponse;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Component
@FeignClient(name = "keycloak-server", url = "http://localhost:8484")
public interface AuthenticationFeign {
    @PostMapping(value = "/auth/realms/brazona-agile-framework/protocol/openid-connect/token")
    AccessTokenResponse accessToken(@RequestBody AccessTokenRequest accessTokenRequest);
}
