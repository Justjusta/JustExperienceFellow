package en.just.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import en.just.entity.Experience;

import java.util.List;

public interface ExperienceRepository extends JpaRepository<Experience, Long> {
   
	@Query("SELECT e FROM Experience e ORDER BY date asc")
	List<Experience> customFindByDate();

	@Query("SELECT e FROM Experience e WHERE e.user.id = ?1")
	List<Experience> findByUserId(long id);
	
	@Query("SELECT e FROM Experience e WHERE e.id = ?1")
	Experience findById(long id);
	

}
