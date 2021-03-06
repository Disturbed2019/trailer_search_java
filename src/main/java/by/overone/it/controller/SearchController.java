package by.overone.it.controller;

import by.overone.it.entity.Film;
import by.overone.it.service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class SearchController {

    @Autowired
    private FilmService filmService;

    @GetMapping("/search_movie")
    public String searchMovie(@RequestParam("name") String name, Model model) {
        List<Film> filmList = filmService.getSearchByName(name);
        model.addAttribute("filmList", filmList);
        return "movies";
    }
}
