package pl.coderslab.user;

import lombok.*;
import org.hibernate.validator.constraints.NotEmpty;
import pl.coderslab.validator.SamePassword;

import javax.persistence.*;

@Entity
@Table(name="user")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@SamePassword
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String email;
    @NotEmpty
    private String password;
    @Transient
    @NotEmpty
    private String passwordCompare;
}
