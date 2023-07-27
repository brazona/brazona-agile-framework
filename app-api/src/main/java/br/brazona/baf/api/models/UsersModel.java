package br.brazona.baf.api.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;
@Getter
@Setter
@Entity
@Table(name = "users")
@SequenceGenerator(name = "seq_users", sequenceName = "sequence_users")
public class UsersModel extends AbstractBaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_users")
    private long id;
    private String login;
    private String password;
    @Column(columnDefinition = "boolean default true")
    private Boolean isAccountNonExpired;
    @Column(columnDefinition = "boolean default true")
    private Boolean isCredentialsNonExpired;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "tb_user_role",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private List<RolesModel> roles;
}
