package br.brazona.users.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.brazona.users.models.User;


public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);
}
