package pl.coderslab.stuff;

import org.springframework.core.convert.converter.Converter;

public class StuffConverter implements Converter<String, Stuff> {

    private StuffService stuffService;

    public StuffConverter(StuffService stuffService) {
        this.stuffService = stuffService;
    }

    @Override
    public Stuff convert(String s) {
        if (s == null || s.isEmpty()) {
            return null;
        }
        Long id = Long.valueOf(s);
        return stuffService.getById(id);
    }
}
