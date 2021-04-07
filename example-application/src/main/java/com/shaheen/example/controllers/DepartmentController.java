package com.shaheen.example.controllers;

import com.shaheen.example.Repositories.DepartmentRepository;
import com.shaheen.example.entities.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.rest.webmvc.RepositoryRestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RepositoryRestController
@RequestMapping("/departments")
public class DepartmentController extends BaseController<Department, Integer, DepartmentRepository>{

    @Autowired
    public DepartmentController(DepartmentRepository repository) {
        super(repository);
    }
}
