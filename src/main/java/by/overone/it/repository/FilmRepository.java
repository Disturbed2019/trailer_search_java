package by.overone.it.repository;

import by.overone.it.entity.Film;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public interface FilmRepository extends JpaRepository<Film, String> {

    Film findFirstByCategory(String category);

    @Query("from Film where id =:id")
    Film getFilmById(@Param("id") String id);

    @Modifying
    @Query("update Film f set f.category=:category where f.id=:id")
    List<Film> updateCategory(@Param("id") String id, @Param("category") String category);

    @Modifying
    @Query("update Film f set f.title=:title where f.id=:id")
    List<Film> updateTitle(@Param("id") String id, @Param("title") String title);

    @Modifying
    @Query("update Film f set f.year=:year where f.id=:id")
    List<Film> updateYear(@Param("id") String id, @Param("year") String year);

    @Modifying
    @Query("update Film f set f.bgImg=:bgImg where f.id=:id")
    List<Film> updateBgImg(@Param("id") String id, @Param("bgImg") String bgImg);

    @Modifying
    @Query("update Film f set f.description=:description where f.id=:id")
    List<Film> updateDescription(@Param("id") String id, @Param("description") String description);

    @Modifying
    @Query("update Film f set f.previewImg=:previewImg where f.id=:id")
    List<Film> updatePreviewImg(@Param("id") String id, @Param("previewImg") String previewImg);

    @Modifying
    @Query("update Film f set f.trailerLink=:trailerLink where f.id=:id")
    List<Film> updateTrailerLink(@Param("id") String id, @Param("trailerLink") String trailerLink);

    @Modifying
    @Query("update Film f set f.rating=:rating where f.id=:id")
    List<Film> updateRating(@Param("id") String id, @Param("rating") String rating);

    @Query("from Film where category = 'horror'")
    List<Film> getHorrorFilms();

    @Query("from Film where category = 'comedy'")
    List<Film> getComedyFilms();

    @Query("from Film where category = 'action'")
    List<Film> getActionFilms();

    @Query("from Film where category = 'sci-fi'")
    List<Film> getSciFiFilms();

    @Query("from Film where category = 'drama'")
    List<Film> getDramaFilms();

    @Query("from Film where category = 'romance'")
    List<Film> getRomanceFilms();

    @Query("from Film where category = 'historical'")
    List<Film> getHistoricalFilms();

    @Query("select f from Film f where upper(f.title) like %:title%")
    List<Film> getSearchByTitle(@Param("title") String title);
}
