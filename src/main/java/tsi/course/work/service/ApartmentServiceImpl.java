package tsi.course.work.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import tsi.course.work.domain.Apartment;
import tsi.course.work.repository.ApartmentRepository;

@Service
@Scope("prototype")
public class ApartmentServiceImpl implements ApartmentService {

    @Autowired
    private ApartmentRepository apartmentRepository;

    @Override
    public Iterable<Apartment> getAllApartments() {
        return apartmentRepository.findAll();
    }

}
