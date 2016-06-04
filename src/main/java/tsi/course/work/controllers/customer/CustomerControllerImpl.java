package tsi.course.work.controllers.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import tsi.course.work.domain.Customer;
import tsi.course.work.domain.to.CustomerTO;
import tsi.course.work.service.CustomerService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static tsi.course.work.contrants.controller.BindingModel.CUSTOMER_BINDING;
import static tsi.course.work.contrants.controller.ControllerUrlPath.ADD_CUSTOMER;
import static tsi.course.work.contrants.controller.ControllerUrlPath.CUSTOMER;
import static tsi.course.work.contrants.controller.DataModels.CUSTOMERS;

@Controller
public class CustomerControllerImpl implements CustomerController {

    @Autowired
    private CustomerService customerService;

    @Override
    @RequestMapping(value = CUSTOMER)
    public String customers(final HttpServletRequest request,
                            final HttpServletResponse response,
                            final Model model) {

        final Iterable<Customer> customers = customerService.getAllCustomers();
        model.addAttribute(CUSTOMERS, customers);

        return CUSTOMER;
    }

    @Override
    @RequestMapping(value = ADD_CUSTOMER)
    public String addCustomer(final HttpServletRequest request,
                              final HttpServletResponse response,
                              final Model model) {

        final CustomerTO customerTO = new CustomerTO();
        model.addAttribute(CUSTOMER_BINDING, customerTO);

        return ADD_CUSTOMER;
    }
}
