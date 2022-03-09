package by.overone.it.controller;

import by.overone.it.logger.LoggerUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes({"userId", "role"})
public class LogoutController {

    @GetMapping(value = "/logout")
    public View logout(Model model, HttpSession httpsession, SessionStatus status) {
        RedirectView redirectView = new RedirectView("/");
        LoggerUtil.printLogAboutLogoutUser(String.valueOf(model.getAttribute("userId")));
        redirectView.setExposeModelAttributes(false);
        status.setComplete();
        httpsession.invalidate();

        return redirectView;
    }
}