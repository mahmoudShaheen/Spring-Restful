package com.shaheen.example.controllers;

import com.shaheen.example.contracts.models.IMustHaveId;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.webmvc.PersistentEntityResourceAssembler;
import org.springframework.data.rest.webmvc.RepositoryRestController;
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.io.Serializable;


@RepositoryRestController
@RequiredArgsConstructor
public abstract class BaseController
        <Entity extends IMustHaveId<ID>,
        ID extends Serializable,
        Repository extends JpaRepository<Entity, ID>>
{

  protected final Repository repository;

  @GetMapping("/filter")
  public ResponseEntity<?> filter(
      Entity model,
      Pageable page,
      PagedResourcesAssembler assembler,
      PersistentEntityResourceAssembler entityAssembler
  ){

    ExampleMatcher matcher = ExampleMatcher.matching()
        .withIgnoreCase()
        .withStringMatcher(ExampleMatcher.StringMatcher.CONTAINING);

    Example example = Example.of(model, matcher);

    Page<?> result = this.repository.findAll(example, page);

    return ResponseEntity.ok(assembler.toResource(result, entityAssembler));
  }

}
