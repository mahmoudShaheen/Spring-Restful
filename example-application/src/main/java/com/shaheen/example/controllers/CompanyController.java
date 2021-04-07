package com.shaheen.example.controllers;

import com.shaheen.example.Repositories.CompanyRepository;
import com.shaheen.example.entities.Company;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.rest.webmvc.RepositoryRestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RepositoryRestController
@RequestMapping("/companies")
public class CompanyController extends BaseController<Company, Integer, CompanyRepository>{

    @Autowired
    public CompanyController(CompanyRepository repository) {
        super(repository);
    }
}
