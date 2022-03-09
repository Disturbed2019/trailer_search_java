package by.overone.it;

import by.overone.it.JSON.JsonParser;
import by.overone.it.SAVER.PathSave;
import by.overone.it.controller.AdminController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.io.File;

@SpringBootApplication
@ComponentScan("by.overone.it")
@EntityScan("by.overone.it.entity")
@EnableJpaRepositories("by.overone.it.repository")
public class Application extends SpringBootServletInitializer {
    public static void main(String[] args) {
        new File(PathSave.uploadDirectoryPosters).mkdir();
        new File(PathSave.uploadDirectoryBackground).mkdir();
        SpringApplication.run(Application.class);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(Application.class);
    }

    @Bean
    protected CommandLineRunner commandLineRunner(@Autowired JsonParser jsonParser) {
        return args -> {
            jsonParser.saveJsonFilmsIntoDatabase();
        };
    }
}
