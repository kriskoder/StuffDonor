package pl.coderslab.user;

public interface UserService {

    User findByEmail(String email);

    void saveUser(User user);
}
