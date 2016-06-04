package tsi.course.work.controllers.main;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;

public interface MainController {

    String overview(Model model,
                    Principal principal,
                    HttpServletRequest request,
                    HttpServletResponse response);
}
