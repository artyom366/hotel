package tsi.course.work.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import tsi.course.work.domain.Services;
import tsi.course.work.repository.ServicesRepository;

@Service
@Scope("prototype")
public class ServicesServiceImpl implements ServicesService {

    @Autowired
    private ServicesRepository servicesRepository;

    @Override
    public Iterable<Services> getAllServices() {
        return servicesRepository.findAll();
    }
}
