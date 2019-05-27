package pl.coderslab.validator;

import pl.coderslab.user.User;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class SamePasswordValidator implements ConstraintValidator<SamePassword, User> {

    @Override
    public void initialize(SamePassword constraintAnnotation) {

    }

    @Override
    public boolean isValid(User user, ConstraintValidatorContext context) {
        if (!user.getPassword().equals(user.getPasswordCompare())) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(context.getDefaultConstraintMessageTemplate())
                    .addPropertyNode("passwordCompare").addConstraintViolation();
            return false;
        } else return true;
    }
}
