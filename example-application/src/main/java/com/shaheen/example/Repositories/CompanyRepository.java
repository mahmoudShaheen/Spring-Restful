package com.shaheen.example.Repositories;

import com.shaheen.example.entities.Company;
import com.shaheen.example.entities.projection.CompanyProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(excerptProjection = CompanyProjection.class)
public interface CompanyRepository extends JpaRepository<Company, Integer> {
}
