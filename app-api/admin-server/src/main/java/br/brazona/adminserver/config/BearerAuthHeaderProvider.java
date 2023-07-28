package br.brazona.authorizationserver.adm.config;

import de.codecentric.boot.admin.server.domain.entities.Instance;
import de.codecentric.boot.admin.server.web.client.HttpHeadersProvider;
import org.springframework.http.HttpHeaders;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;

public class BearerAuthHeaderProvider implements HttpHeadersProvider {

    private final OAuth2RestTemplate template;

    public BearerAuthHeaderProvider(OAuth2RestTemplate template) {
        this.template = template;
    }

    public HttpHeaders getHeaders(Instance ignored) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", template.getAccessToken().getTokenType() + " " + template.getAccessToken().getValue());
        return headers;
    }
}
