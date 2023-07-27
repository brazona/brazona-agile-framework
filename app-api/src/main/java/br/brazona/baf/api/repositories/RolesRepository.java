package br.brazona.baf.api.repositories;

import br.brazona.baf.api.models.RolesModel;
import org.springframework.data.jpa.repository.JpaRepository;


public interface RolesRepository extends JpaRepository<RolesModel, Long> {
}
