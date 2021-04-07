# Spring Restful API Example

Example of how to create Spring Restful service using built-in support

## Further Reading
* https://docs.spring.io/spring-data/rest/docs/3.0.2.RELEASE/reference/html/#customizing-sdr.custom-jackson-deserialization
* https://spring.io/projects/spring-hateoas
* https://docs.spring.io/spring-data/rest/docs/current/reference/html/#reference
* https://docs.spring.io/spring-data/rest/docs/current/reference/html/#projections-excerpts.excerpting-commonly-accessed-data
* https://docs.spring.io/spring-data/rest/docs/current/reference/html/#projections-excerpts


## Endpoints

### Profile (Documentation):
* http://localhost:8080/profile
* http://localhost:8080/profile/companies
* http://localhost:8080/profile/departments

### Almost all Restful functions are available feel free to test it
### Controllers
* localhost:8080/companies
* localhost:8080/departments

### For filtering
* localhost:8080/{Controller}/filter?{Attribute}={Value}
* EX: localhost:8080/companies?department.name=department&address=123


### Hints:
* http://localhost:8080/companies/{ID}
* http://localhost:8080/companies/{ID}/department

### Projection (Expand entity):
* http://localhost:8080/companies/filter?department.name=alien&projection=CompanyDepartmentsProjection
