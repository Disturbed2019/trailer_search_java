package by.overone.it.controller;

import by.overone.it.logger.LoggerUtil;
import by.overone.it.service.UserService;
import by.overone.it.validation.Validation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class RegistrationController {

    @Autowired
    private Validation validation;

    @Autowired
    private UserService userService;

    @GetMapping("/registration")
    public String registration(Model model) {
        return "registration";
    }

    @PostMapping("/check-registration")
    public String addUser(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            @RequestParam("repassword") String repassword,
            Model model
    ) {

        List<String> errorMessages = validation.registrationValidation(username, password, repassword);

        if (errorMessages.isEmpty()) {
            userService.saveUser(username, password);
        } else {
            model.addAttribute("exception", errorMessages.get(0));
            return "redirect:/registration";
        }
        LoggerUtil.printLogAboutRegistrationUser(username);
        return "redirect:/";
    }
}
