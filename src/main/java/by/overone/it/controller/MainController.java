package by.overone.it.controller;

import by.overone.it.entity.Film;
import by.overone.it.service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@SessionAttributes({"userId", "role"})
public class MainController {

    @Autowired
    private FilmService filmService;

    @GetMapping("/")
    public String home(Model model) {
        List<Film> horrorsList = filmService.getHorrorsFilms();
        List<Film> dramaList = filmService.getDramaFilms();
        List<Film> historicalList = filmService.getHistoricalFilms();
        List<Film> actionList = filmService.getActionFilms();
        List<Film> sciFiList = filmService.getSciFiFilms();
        List<Film> romanceList = filmService.getRomanceFilms();
        List<Film> comedyList = filmService.getComedyFilms();
        model.addAttribute("horror", horrorsList);
        model.addAttribute("drama", dramaList);
        model.addAttribute("historical", historicalList);
        model.addAttribute("action", actionList);
        model.addAttribute("sciFi", sciFiList);
        model.addAttribute("romance", romanceList);
        model.addAttribute("comedy", comedyList);
        return "index";
    }
}
