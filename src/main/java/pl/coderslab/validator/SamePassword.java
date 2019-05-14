package pl.coderslab.validator;

import pl.coderslab.user.User;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Constraint(validatedBy = SamePasswordValidator.class)
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface SamePassword {

    String message() default "{SamePassword.error.message}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
