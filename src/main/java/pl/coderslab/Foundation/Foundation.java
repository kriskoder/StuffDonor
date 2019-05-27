package pl.coderslab.Foundation;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "foundations")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode

public class Foundation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;
}
