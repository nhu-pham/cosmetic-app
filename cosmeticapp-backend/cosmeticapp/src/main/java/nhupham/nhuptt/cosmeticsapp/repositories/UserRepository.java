package nhupham.nhuptt.cosmeticsapp.repositories;
import nhupham.nhuptt.cosmeticsapp.models.User;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    boolean existsByPhoneNumber (String phoneNumber);
    Optional<User> findByPhoneNumber (String phoneNumber);
}
