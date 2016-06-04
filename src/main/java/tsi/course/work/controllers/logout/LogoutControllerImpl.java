package tsi.course.work.controllers.logout;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tsi.course.work.contrants.controller.ControllerUrlPath;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LogoutControllerImpl implements LogoutController {

    @RequestMapping(value = ControllerUrlPath.LOGOUT, method = RequestMethod.GET)
    private String doLogout(HttpServletRequest request) {
        SecurityContextHolder.getContext().setAuthentication(null);
        return ControllerUrlPath.LOGIN_REDIRECT;
    }
}
