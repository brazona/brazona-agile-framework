package br.brazona.authenticationserver.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Component
@FeignClient(name = "hr-user", path = "/users")
public interface UserFeignClient {

	@GetMapping(value = "/search")
	ResponseEntity<br.brazona.authenticationserver.data.User> findByEmail(@RequestParam String email);
}
