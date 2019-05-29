package pl.coderslab.form;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface FormRepository extends JpaRepository<Form, Long> {

    @Query(value = "select sum(bags_number) from form", nativeQuery = true)
    Long numberOfBags();
}
