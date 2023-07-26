package br.brazona.baf.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.stereotype.Component;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import java.io.Serializable;
import java.time.LocalDateTime;

@MappedSuperclass
@AllArgsConstructor
@Getter
@Setter
@Component
public abstract class AbstractBaseEntity implements Serializable {

    @Column(updatable = false, name = "CREATED")
    @CreationTimestamp
    private LocalDateTime createdAt;
    @Column(name = "UPDATED")
    @UpdateTimestamp
    private LocalDateTime updatedAt;
    @Column(columnDefinition = "boolean default true")
    private Boolean active;

    protected AbstractBaseEntity() {
        this.createdAt = LocalDateTime.now();
        this.updatedAt = LocalDateTime.now();
        this.active = true;
    }
}
