package br.brazona.authenticationserver.feign;

import br.brazona.core.components.security.RequestAccessToken;
import br.brazona.core.components.security.ResponseAccessToken;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Component
@FeignClient(name = "keycloak-server", url = "http://localhost:8484")
public interface AuthenticationFeign {
    @PostMapping(value = "/auth/realms/brazona-agile-framework/protocol/openid-connect/token")
    ResponseAccessToken accessToken(@RequestBody RequestAccessToken requestAccessToken);
}
