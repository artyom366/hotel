package tsi.course.work.service;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import tsi.course.work.contrants.data.Gender;
import tsi.course.work.domain.Apartment;
import tsi.course.work.domain.Customer;
import tsi.course.work.domain.to.CustomerTO;
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

    public Customer registrationFormCustomerBinding(final CustomerTO customerTO) {

        Customer customer = new Customer();
        DateTime checkIn = new DateTime(customerTO.getCheckIn());
        DateTime checkOut = new DateTime(customerTO.getCheckOut());
        Gender gender = Gender.valueOf(customerTO.getGender());
        DateTime birthDate = new DateTime(customerTO.getBirthDate());

        customer.setCheckIn(checkIn.toDate());
        customer.setCheckOut(checkOut.toDate());
        customer.setName(customerTO.getName());
        customer.setSurname(customerTO.getSurname());
        customer.setMiddleName(customerTO.getMiddleName());
        customer.setGender(gender);
        customer.setBirthDate(birthDate.toDate());
        customer.setAccompanied(customerTO.getAccompanied());
        customer.setIdentificationNumber(customerTO.getIdentificationNumber());
        customer.setEmail(customerTO.getEmail());
        customer.setPhone(customerTO.getPhone());

        return customer;
    }

}
