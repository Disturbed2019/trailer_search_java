package by.overone.it.controller;

import by.overone.it.JSON.JsonParser;
import by.overone.it.SAVER.PathSave;
import by.overone.it.entity.Film;
import by.overone.it.entity.User;
import by.overone.it.service.FilmService;
import by.overone.it.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
@SessionAttributes({"userId", "role"})
public class AdminController {

    @Autowired
    private JsonParser jsonParser;

    @Autowired
    private UserService userService;
    @Autowired
    private FilmService filmService;

    @GetMapping("/admin")
    public String showAdminPage() {
        return "admin";
    }

    @GetMapping("/admin/users")
    public String showUsersPageForAdmin(Model model) {
        List<User> userList = userService.getAllUsers();
        model.addAttribute("user", userList);
        return "admin_users";
    }

    @GetMapping("/admin/films")
    public String showFilmsForAdmin(Model model) {
        List<Film> filmList = filmService.getFilmList();
        model.addAttribute("film", filmList);
        return "admin_films";
    }

    //Добавление фильма
    @GetMapping("/admin/add_film")
    public String addFilm(Model model) {
        model.addAttribute("film", new Film());
        return "admin_add_film";
    }

    @PostMapping("/admin/add_film")
    public String saveFilm(@RequestParam("preview") MultipartFile preview, @RequestParam("bg_img") MultipartFile bg,
                           @RequestParam("category") String category, @RequestParam("title") String title,
                           @RequestParam("year") String year, @RequestParam("description") String description,
                           @RequestParam("trailerLink") String trailerLink, @RequestParam("rating") String rating,
                           @ModelAttribute(name = "film") Film film) {
        String pathForPosters = "./images/posters/" + preview.getOriginalFilename();
        String pathForBackground = "./images/backgrounds/" + bg.getOriginalFilename();
        PathSave.getPath(preview, bg);
        jsonParser.addFilmInJson(category, title, year, pathForBackground, description, pathForPosters, trailerLink, rating);
        filmService.saveFilm(category, title, year, pathForPosters,
                description, pathForBackground, trailerLink, rating);
        return "admin";
    }

    @GetMapping("/admin/films/{id}")
    public String deleteFilm(@PathVariable("id") String id) {
        filmService.deleteById(id);
        return "redirect:/admin/films";
    }

//    Изменение фильма
    @GetMapping("/admin/edit-film/")
    public String editFilm(Model model){
        model.addAttribute("editFilm", new Film());
        return "admin_edit_film";
    }

}
