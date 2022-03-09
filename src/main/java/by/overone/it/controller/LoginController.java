package by.overone.it.controller;

import by.overone.it.entity.User;
import by.overone.it.logger.LoggerUtil;
import by.overone.it.service.UserService;
import by.overone.it.validation.Validation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

import static org.hibernate.tool.schema.SchemaToolingLogging.LOGGER;

@Controller
@SessionAttributes({"userId", "role"})
public class LoginController {

    @Autowired
    private UserService userService;
    @Autowired
    private Validation validation;

    @GetMapping("/login")
    public String showLoginPage() {
        return "login";
    }

    @PostMapping("/check-login")
    public String checkLoginData(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            Model model
    ) {
        List<String> messages = validation.loginValidation(username, password);

        if (messages.isEmpty()) {
            User user = userService.findByUsername(username);
            model.addAttribute("userId", user.getId());
            model.addAttribute("role", user.getRole());
            LoggerUtil.printLogAboutLoginUser(user.getId(), username);
            return "redirect:/";
        } else {
            model.addAttribute("exception", messages.get(0));
            LoggerUtil.printWarnLogAboutAuthorisationError();
            return "redirect:/login";
        }
    }
}
