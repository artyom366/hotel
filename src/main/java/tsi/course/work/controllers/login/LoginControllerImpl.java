package tsi.course.work.controllers.login;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Locale;

@Controller
public class LoginControllerImpl implements LoginController {


    @RequestMapping(value = "/login")
    public String login(Locale locale, Model model, RedirectAttributes redirectAttributes) {
        return "login";
    }

}
