package pl.coderslab.user;

import java.util.List;

public interface UserService {
    User findByEmail(String email);
    void saveUser(User user);
    List<User> findAllUsers();
    void deleteUser(Long id);
}
