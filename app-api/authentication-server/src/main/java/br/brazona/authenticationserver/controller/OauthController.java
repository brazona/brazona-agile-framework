package br.brazona.authenticationserver.controller;

import br.brazona.authenticationserver.data.AccessTokenRequest;
import br.brazona.authenticationserver.data.AccessTokenResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/oauth")
public class OauthController {

    @PostMapping(value = "/token")
    public ResponseEntity<AccessTokenResponse> accessToken(@RequestBody AccessTokenRequest accessTokenRequest){

        return null;
    }

}
