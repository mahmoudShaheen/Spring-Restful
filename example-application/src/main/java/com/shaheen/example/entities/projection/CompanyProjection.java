package com.shaheen.example.entities.projection;

import com.shaheen.example.entities.Company;
import com.shaheen.example.entities.Department;
import org.springframework.data.rest.core.config.Projection;

import java.util.Date;

@Projection(name = "CompanyProjection", types = { Company.class })
public interface CompanyProjection {
    Integer getID();
    String getName();
    String getAddress();
    Date getCreationDate();
}
