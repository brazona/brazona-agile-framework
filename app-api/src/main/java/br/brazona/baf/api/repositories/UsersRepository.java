package br.brazona.baf.api.repositories;

import br.brazona.baf.api.models.UsersModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UsersRepository extends JpaRepository<UsersModel, Long > {

    @Query("SELECT u FROM UsersModel u WHERE u.login =?1")
    UsersModel findByEmail(String email);
}
