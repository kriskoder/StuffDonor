package pl.coderslab.foundation;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FoundationService {

    private FoundationRepository foundationRepository;

    FoundationService(FoundationRepository foundationRepository) {
        this.foundationRepository = foundationRepository;
    }

    public List<Foundation> findAllFoundations() {
        return foundationRepository.findAll();
    }

    public Foundation findById(Long id) {
        return foundationRepository.getOne(id);
    }

    public Long numberOfFoundation() {
        return foundationRepository.count();
    }

    public void saveFoundation(Foundation foundation){
        foundationRepository.save(foundation);
    }

    public void deleteById(Long id){
        foundationRepository.deleteById(id);
    }
}