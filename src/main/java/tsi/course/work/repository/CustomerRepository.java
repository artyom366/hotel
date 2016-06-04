package tsi.course.work.repository;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import tsi.course.work.domain.Customer;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Long> {
}
