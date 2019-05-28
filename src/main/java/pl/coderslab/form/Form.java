package pl.coderslab.form;


import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.foundation.Foundation;
import pl.coderslab.stuff.Stuff;
import pl.coderslab.user.User;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Entity
@Table(name="form")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class Form {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private User user;
    @ManyToMany
    private List<Stuff> stuffType;
    private int bagsNumber;
    @ManyToOne
    private Foundation foundation;
    private String street;
    private String city;
    private String zipCode;
    private String phone;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate pickUpDate;
    private LocalTime pickUpTime;
    private String notes;
}
