package en.just.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import en.just.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

    User findFirstById(long id);
    
	User findFirstByEmail(String email);
	
	@Query("SELECT u FROM User u WHERE u.userName LIKE %?1%")
	List <User> findByUserName(String userName);
	
}
