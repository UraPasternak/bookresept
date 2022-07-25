package www.bookresept.resept;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface ReseptRepository extends CrudRepository<Resept, Long>{
	
	@Query(value = "SELECT c FROM Resept c WHERE c.name_resept LIKE '%' || :keyword || '%'"
            + " OR c.ingredients LIKE '%' || :keyword || '%'"
            + " OR c.cooking LIKE '%' || :keyword || '%'")
    public List<Resept> search(@Param("keyword") String keyword);

}
