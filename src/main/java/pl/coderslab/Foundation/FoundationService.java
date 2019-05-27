package pl.coderslab.Foundation;

import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FoundationService {

   private final FoundationRepository foundationRepository;

    FoundationService(FoundationRepository foundationRepository) {
        this.foundationRepository = foundationRepository;
    }

    public List<Foundation> findAllFoundations() {
        return foundationRepository.findAll();
    }
}
