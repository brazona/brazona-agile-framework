package br.brazona.users.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.brazona.users.entities.User;


public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);
}
