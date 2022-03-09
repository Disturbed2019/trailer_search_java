package by.overone.it.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@NoArgsConstructor
@Getter
@Table(name = "t_film")
public class Film {

    @Id
    @GeneratedValue(generator = "uuid-generator")
    @GenericGenerator(name = "uuid-generator", strategy = "uuid")
    @Column(name = "id")
    private String id;

    @Setter
    @Column(name = "category")
    private String category;

    @Setter
    @Column(name = "title")
    private String title;

    @Setter
    @Column(name = "year")
    private String year;

    @Setter
    @Column(name = "bg_img")
    private String bgImg;

    @Setter
    @Column(name = "description")
    private String description;

    @Setter
    @Column(name = "preview_img")
    private String previewImg;

    @Setter
    @Column(name = "trailer_link")
    private String trailerLink;

    @Setter
    @Column(name = "rating")
    private String rating;
}
