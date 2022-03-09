package by.overone.it.validation;

import by.overone.it.encoder.PasswordEncoder;
import by.overone.it.entity.User;
import by.overone.it.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class Validation {
    @Autowired
    private UserService userService;

    /**
     * Проверка данных при регистрации.
     * Если List<String> приходит пустой, значит пользователя можно регестрировать.
     */
    public List<String> registrationValidation(String username, String password, String repassword) {
        List<String> messages = new ArrayList<>();
        User user = userService.findByUsername(username);

        if (user != null) {
            messages.add("This username is already exist");
        } else if (!password.equals(repassword)) {
            messages.add("Passwords have no many matches");
        }

        return messages;
    }

    /**
     * Проверка данных при авторизации.
     * Если List<String> приходит пустой, значит данные введены верно.
     */
    public List<String> loginValidation(String username, String password) {
        List<String> messages = new ArrayList<>();
        User user = userService.findByUsername(username);

        if (user == null) {
            messages.add("Incorrect username");
        } else if (!user.getRole().equals("ADMIN")) {
            if (!user.getPassword().equals(PasswordEncoder.encodePassword(password))) {
                messages.add("Incorrect password");
            }
        } else {
            if (!user.getPassword().equals(password)) {
                messages.add("Incorrect password");
            }
        }

        return messages;
    }
}