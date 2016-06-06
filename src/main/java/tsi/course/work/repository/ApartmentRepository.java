package tsi.course.work.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import tsi.course.work.domain.Apartment;

@Repository
public interface ApartmentRepository extends CrudRepository<Apartment, Long> {
}
