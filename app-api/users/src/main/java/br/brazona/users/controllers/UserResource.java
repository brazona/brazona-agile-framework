package br.brazona.users.controllers;

import br.brazona.core.exceptions.types.PermissionDeniedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.brazona.users.models.UserModel;
import br.brazona.users.repositories.UserRepository;


@RestController
@RequestMapping(value = "/users")
public class UserResource {

	@Autowired
	private UserRepository repository;

	@GetMapping(value = "/{id}")
	public ResponseEntity<UserModel> findId(@PathVariable Long id) {

		if (repository.findById(id).isPresent()){
			UserModel obj = repository.findById(id).get();
			return ResponseEntity.ok(obj);
		}
		throw new PermissionDeniedException("Email not found");

	}
	@GetMapping(value = "/search")
	public ResponseEntity<UserModel> findByEmail(@RequestParam String email) {

		UserModel obj = repository.findByEmail(email);
		return ResponseEntity.ok(obj);
	}

}