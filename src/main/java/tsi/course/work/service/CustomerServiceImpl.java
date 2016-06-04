package tsi.course.work.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import tsi.course.work.domain.Customer;
import tsi.course.work.repository.CustomerRepository;

@Service
@Scope("prototype")
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public Iterable<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

}
