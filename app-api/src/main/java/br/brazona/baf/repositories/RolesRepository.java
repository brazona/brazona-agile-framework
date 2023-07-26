package br.brazona.baf.repositories;

import br.brazona.baf.models.RolesModel;
import org.springframework.data.jpa.repository.JpaRepository;


public interface RolesRepository extends JpaRepository<RolesModel, Long> {
}
