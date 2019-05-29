package pl.coderslab.form;

import org.springframework.stereotype.Service;

@Service
public class FormService {

   private FormRepository formRepository;

    public FormService(FormRepository formRepository) {
        this.formRepository = formRepository;
    }

    public void save(Form form){
        formRepository.save(form);
    }

    public Long numberOfBags(){
        return formRepository.numberOfBags();
    }

    public Long numberOfDonations(){
        return formRepository.count();
    }
}
