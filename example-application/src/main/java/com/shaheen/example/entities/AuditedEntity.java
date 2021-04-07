package com.shaheen.example.entities;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import java.util.Date;

@Data
@MappedSuperclass
public class AuditedEntity {
    @Column(name = "creation_date", insertable = false, updatable = false)
    Date creationDate;
    /*@Column(name = "modification_date", insertable = false, updatable = false)
    Date lastModifiedDate = new Date();*/
}
