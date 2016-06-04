package tsi.course.work.controllers.customer;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CustomerController {


    String customers(HttpServletRequest request,
                     HttpServletResponse response,
                     Model model);

    String addCustomer(HttpServletRequest request,
                       HttpServletResponse response,
                       Model model);
}
