package com.shaheen.example.entities.projection;

import com.shaheen.example.entities.Company;
import com.shaheen.example.entities.Department;
import org.springframework.data.rest.core.config.Projection;

import java.util.Date;

@Projection(name = "CompanyDepartmentsProjection", types = { Company.class })
public interface CompanyDepartmentsProjection {
    Integer getID();
    String getName();
    String getAddress();
    Date getCreationDate();
    Department getDepartment();
}
