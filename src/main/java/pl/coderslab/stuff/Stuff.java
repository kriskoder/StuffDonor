package pl.coderslab.stuff;

import lombok.*;
import pl.coderslab.form.Form;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="stuff")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class Stuff {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
}
