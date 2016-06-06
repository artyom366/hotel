package tsi.course.work.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import tsi.course.work.domain.Services;

@Repository
public interface ServicesRepository extends CrudRepository<Services, Long> {
}
