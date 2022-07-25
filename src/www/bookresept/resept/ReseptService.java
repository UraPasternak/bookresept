package www.bookresept.resept;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ReseptService {
	
	@Autowired ReseptRepository repo;
	
	public void save(Resept resept) {
        repo.save(resept);
    }
     
    public List<Resept> listAll() {
        return (List<Resept>) repo.findAll();
    }
     
    public Resept get(Long id) {
        return repo.findById(id).get();
    }
     
    public void delete(Long id) {
        repo.deleteById(id);
    }
    
    public List<Resept> search(String keyword) {
        return repo.search(keyword);
    }

}
