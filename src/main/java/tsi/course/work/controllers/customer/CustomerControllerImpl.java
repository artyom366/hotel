package tsi.course.work.controllers.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tsi.course.work.contrants.controller.BindingModel;
import tsi.course.work.domain.Customer;
import tsi.course.work.domain.Services;
import tsi.course.work.domain.to.CustomerTO;
import tsi.course.work.service.CustomerService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Arrays;
import java.util.List;

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

    @RequestMapping(value = ADD_CUSTOMER, method = RequestMethod.POST)
    public String doCreate(@Validated @ModelAttribute(BindingModel.CUSTOMER_BINDING) final CustomerTO customerTO,
                           final BindingResult result,
                           final HttpServletRequest request,
                           final HttpServletResponse response) {

        if (result.hasErrors()) {
            return ADD_CUSTOMER;
        }



        return "";
    }



}
