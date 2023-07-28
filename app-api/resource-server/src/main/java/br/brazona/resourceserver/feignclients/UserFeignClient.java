package br.brazona.resourceserver.feignclients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Component
@FeignClient(name = "users", path = "/users")
public interface UserFeignClient {

	@GetMapping(value = "/search")
	ResponseEntity<br.brazona.resourceserver.entities.User> findByEmail(@RequestParam String email);
}
