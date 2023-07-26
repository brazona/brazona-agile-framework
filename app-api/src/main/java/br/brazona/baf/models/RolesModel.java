package br.brazona.baf.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
@Getter
@Setter
@Entity(name = "roles")
@Table(name = "roles")
@SequenceGenerator(name = "seq_roles", sequenceName = "sequence_roles")
public class RolesModel extends AbstractBaseEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_roles")
    private long id;
    @Column(unique = true)
    private String name;


}
