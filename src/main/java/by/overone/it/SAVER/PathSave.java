package by.overone.it.SAVER;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class PathSave {

    public static String uploadDirectoryPosters = System.getProperty("user.dir") + "/src/main/webapp/images/posters";
    public static String uploadDirectoryBackground = System.getProperty("user.dir") + "/src/main/webapp/images/backgrounds";

    public static StringBuilder getPath(MultipartFile preview, MultipartFile bg){
        StringBuilder stringBuilder = new StringBuilder();
        Path nameAndPathOfPosters = Paths.get(uploadDirectoryPosters, preview.getOriginalFilename());
        Path nameAndPathOfBackground = Paths.get(uploadDirectoryBackground, bg.getOriginalFilename());
        stringBuilder.append(preview.getOriginalFilename() + " ");
        stringBuilder.append(bg.getOriginalFilename() + " ");
        try {
            Files.write(nameAndPathOfPosters, preview.getBytes());
            Files.write(nameAndPathOfBackground, bg.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return stringBuilder;
    }
}
