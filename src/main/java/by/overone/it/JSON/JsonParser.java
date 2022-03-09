package by.overone.it.JSON;

import by.overone.it.service.FilmService;
import lombok.SneakyThrows;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.nio.file.Path;
import java.nio.file.Paths;

import static org.hibernate.tool.schema.SchemaToolingLogging.LOGGER;

@Component
public class JsonParser {

    @Autowired
    private FilmService service;


    @SneakyThrows
    public void saveJsonFilmsIntoDatabase() {
        String path = "src/main/resources/db.json";
        BufferedReader reader = new BufferedReader(new FileReader(path));
        JSONParser parser = new JSONParser();
        JSONObject object = (JSONObject) parser.parse(reader);
        JSONArray array = (JSONArray) object.get("films");

        if (service.findFirst("horror") == null) {
            for (Object o : array) {
                object = (JSONObject) o;
                service.saveFilm(
                        String.valueOf(object.get("category")),
                        String.valueOf(object.get("title")),
                        String.valueOf(object.get("year")),
                        String.valueOf(object.get("bg_img")),
                        String.valueOf(object.get("description")),
                        String.valueOf(object.get("preview_img")),
                        String.valueOf(object.get("trailer_link")),
                        String.valueOf(object.get("rating"))
                );
            }
        }
        reader.close();
        LOGGER.info("Inserting completed");
    }

    @SneakyThrows
    public void addFilmInJson(
            String category,
            String title,
            String year,
            String bgImg,
            String description,
            String previewImg,
            String trailerLink,
            String rating
    ) {
        Path path = Paths.get("src", "main", "resources", "db.json");
        BufferedReader reader = new BufferedReader(new FileReader(String.valueOf(path)));
        JSONParser parser = new JSONParser();
        JSONObject sourceJsonObject = (JSONObject) parser.parse(reader);
        JSONObject newJsonObject = new JSONObject();
        JSONArray array = (JSONArray) sourceJsonObject.get("films");
        reader.close();

        newJsonObject.put("category", category);
        newJsonObject.put("title", title);
        newJsonObject.put("year", year);
        newJsonObject.put("bg_img", bgImg);
        newJsonObject.put("description", description);
        newJsonObject.put("preview_img", previewImg);
        newJsonObject.put("trailer_link", trailerLink);
        newJsonObject.put("rating", rating);
        array.add(newJsonObject);
        sourceJsonObject.put("film", array);

        BufferedWriter writer = new BufferedWriter(new FileWriter(String.valueOf(path)));
        writer.write(String.valueOf(sourceJsonObject));
        writer.flush();
        writer.close();
    }
}
