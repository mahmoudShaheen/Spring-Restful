package com.shaheen.example.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.shaheen.example.contracts.models.IMustHaveId;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@Table(name = "department")
public class Department implements IMustHaveId<Integer> {

  @Id
  @JsonProperty
  @Column(name = "id")
  Integer ID;

  @Column(name = "name")
  String name;

}
