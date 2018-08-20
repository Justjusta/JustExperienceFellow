package en.just.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import en.just.entity.Client;

public interface ClientRepository extends JpaRepository<Client, Long> {
	
	

}
