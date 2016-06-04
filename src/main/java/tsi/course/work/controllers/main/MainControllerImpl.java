package tsi.course.work.controllers.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.security.Principal;

import static tsi.course.work.contrants.controller.ControllerUrlPath.OVERVIEW;
import static tsi.course.work.contrants.controller.ControllerUrlPath.ROOT;
import static tsi.course.work.contrants.controller.SessionParameter.USER_NAME;

@Controller
public class MainControllerImpl implements MainController {

    @Override
    @RequestMapping(value = ROOT)
    public String overview(final Model model,
                           final Principal principal,
                           final HttpServletRequest request,
                           final HttpServletResponse response) {

        final HttpSession session = request.getSession();
        session.setAttribute(USER_NAME, principal.getName());

        return OVERVIEW;
    }
}
