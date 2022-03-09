package by.overone.it.service;

import by.overone.it.entity.Film;
import by.overone.it.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FilmService {

    @Autowired
    FilmRepository filmRepository;

    private void saveFilm(Film film) {
        filmRepository.save(film);
    }

    public void saveFilm(
            String category,
            String title,
            String year,
            String bgImgPath,
            String description,
            String previewImgPath,
            String trailerLink,
            String rating
    ) {
        Film film = new Film();
        film.setCategory(category);
        film.setTitle(title);
        film.setYear(year);
        film.setBgImg(bgImgPath);
        film.setDescription(description);
        film.setPreviewImg(previewImgPath);
        film.setTrailerLink(trailerLink);
        film.setRating(rating);
        saveFilm(film);
    }

    public Film getFilmById(String id) {
        return filmRepository.getFilmById(id);
    }

    public List<Film> getFilmList() {
        return filmRepository.findAll();
    }

    public Film findFirst(String category) {
        return filmRepository.findFirstByCategory(category);
    }

    public void deleteFilm(Film film) {
        filmRepository.delete(film);
    }

    public void updateCategoryFilm(String id, String category) {
        filmRepository.updateCategory(id, category);
    }

    public void updateTitleFilm(String id, String title) {
        filmRepository.updateTitle(id, title);
    }

    public void updateYearFilm(String id, String year) {
        filmRepository.updateYear(id, year);
    }

    public void updateBgImgFilm(String id, String bgImg) {
        filmRepository.updateBgImg(id, bgImg);
    }

    public void updateDescriptionFilm(String id, String description) {
        filmRepository.updateDescription(id, description);
    }

    public void updatePreviewImgFilm(String id, String previewImg) {
        filmRepository.updatePreviewImg(id, previewImg);
    }

    public void updateTrailerLinkFilm(String id, String trailerLink) {
        filmRepository.updateTrailerLink(id, trailerLink);
    }

    public void updateRatingFilm(String id, String rating) {
        filmRepository.updateRating(id, rating);
    }

    public List<Film> getRomanceFilms() {
        return filmRepository.getRomanceFilms();
    }

    public List<Film> getHistoricalFilms() {
        return filmRepository.getHistoricalFilms();
    }

    public List<Film> getDramaFilms() {
        return filmRepository.getDramaFilms();
    }

    public List<Film> getSciFiFilms() {
        return filmRepository.getSciFiFilms();
    }

    public List<Film> getActionFilms() {
        return filmRepository.getActionFilms();
    }

    public List<Film> getComedyFilms() {
        return filmRepository.getComedyFilms();
    }

    public List<Film> getHorrorsFilms() {
        return filmRepository.getHorrorFilms();
    }

    public void deleteById(String id){
        filmRepository.deleteById(id);
    }

    public List<Film> getSearchByName(String title) {
        return filmRepository.getSearchByTitle(title);
    }
}
