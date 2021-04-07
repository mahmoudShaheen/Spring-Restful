package com.shaheen.example.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.shaheen.example.contracts.models.IMustHaveId;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;

@Entity
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@Table(name = "company")
public class Company extends AuditedEntity implements IMustHaveId<Integer> {

  @Id
  @JsonProperty
  @Column(name = "id")
  Integer ID;

  @Column(name = "name")
  String name;
  @Column(name = "address")
  String address;

  @Column(name = "department_id")
  @JsonIgnore
  Integer departmentId;

  @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  @JoinColumn(name = "department_id", referencedColumnName = "id", insertable = false, updatable = false)
  Department department;

}
