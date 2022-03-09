package by.overone.it.controller;

import by.overone.it.entity.Film;
import by.overone.it.service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@SessionAttributes({"userId", "role"})
public class MovieController {

    @Autowired
    private FilmService filmService;

    @GetMapping("/movies")
    public String showMoviePage(Model model) {
        List<Film> filmList = filmService.getFilmList();
        model.addAttribute("filmList", filmList);
        return "movies";
    }

    @GetMapping("/movie-page-{id}")
    public String showMoviePage(@PathVariable("id") String filmId, Model model) {
        Film film = filmService.getFilmById(filmId);
        model.addAttribute("film", film);
        return "movie-page";
    }

    @GetMapping("/romance")
    public String showRomancePage(Model model) {
        List<Film> romanceList = filmService.getRomanceFilms();
        model.addAttribute("filmList", romanceList);
        return "movies";
    }

    @GetMapping("/drama")
    public String showDramaPage(Model model) {
        List<Film> dramaList = filmService.getDramaFilms();
        model.addAttribute("filmList", dramaList);
        return "movies";
    }

    @GetMapping("/action")
    public String showActionPage(Model model) {
        List<Film> actionList = filmService.getActionFilms();
        model.addAttribute("filmList", actionList);
        return "movies";
    }

    @GetMapping("/sci-fi")
    public String showSciFiPage(Model model) {
        List<Film> sciFiList = filmService.getSciFiFilms();
        model.addAttribute("filmList", sciFiList);
        return "movies";
    }

    @GetMapping("/horror")
    public String showHorrorsPage(Model model) {
        List<Film> horrorList = filmService.getHorrorsFilms();
        model.addAttribute("filmList", horrorList);
        return "movies";
    }

    @GetMapping("/comedy")
    public String showComedyPage(Model model) {
        List<Film> comedyList = filmService.getComedyFilms();
        model.addAttribute("filmList", comedyList);
        return "movies";
    }

    @GetMapping("/historical")
    public String showHistoricalPage(Model model) {
        List<Film> historicalList = filmService.getHistoricalFilms();
        model.addAttribute("filmList", historicalList);
        return "movies";
    }
}
