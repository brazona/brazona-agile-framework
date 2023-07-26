package br.brazona.baf.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@RestController(value = "/swagger-example")
public class SwaggerExample implements ISwaggerExample {
    @Override
    public ResponseEntity<Long> getTutorialById(long id) {
        return ResponseEntity.ok(id);
    }
}
