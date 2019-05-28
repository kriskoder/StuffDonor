package pl.coderslab.stuff;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StuffService {

    StuffRepository stuffRepository;

    StuffService(StuffRepository stuffRepository) {
        this.stuffRepository = stuffRepository;
    }

    public List<Stuff> getAllStuffTypes() {
        return stuffRepository.findAll();
    }
}
