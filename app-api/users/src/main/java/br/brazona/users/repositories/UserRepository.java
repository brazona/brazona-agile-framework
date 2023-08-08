package br.brazona.users.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.brazona.users.models.UserModel;

public interface UserRepository extends JpaRepository<UserModel, Long> {

	UserModel findByEmail(String email);
}
