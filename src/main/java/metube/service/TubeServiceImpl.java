package metube.service;

import metube.domain.entities.Tube;
import metube.domain.models.service.TubeServiceModel;
import metube.repository.TubeRepository;
import metube.util.ModelMapper;
import metube.util.ValidatorImpl;

import javax.inject.Inject;
import java.util.List;
import java.util.stream.Collectors;

public class TubeServiceImpl implements TubeService {

    private final TubeRepository tubeRepository;
    private final ModelMapper modelMapper;
    private final ValidatorImpl validator;

    @Inject
    public TubeServiceImpl(TubeRepository tubeRepository, ModelMapper modelMapper, ValidatorImpl validator) {
        this.tubeRepository = tubeRepository;
        this.modelMapper = modelMapper;
        this.validator = validator;
    }


    @Override
    public void saveTube(TubeServiceModel tubeServiceModel) {
        if(!this.validator.isValid(tubeServiceModel)){
            throw new IllegalArgumentException();
        }
             this.tubeRepository.save(this.modelMapper.map(tubeServiceModel, Tube.class));
    }

    @Override
    public List<TubeServiceModel> getAll() {
        List<TubeServiceModel> tubes = this.tubeRepository.findAll()
                .stream()
                .map(t -> this.modelMapper.map(t, TubeServiceModel.class))
                .collect(Collectors.toList());

        return tubes;
    }

    @Override
    public TubeServiceModel findByName(String name) {
      Tube tube = this.tubeRepository.findByName(name).orElse(null);

      return this.modelMapper.map(tube,TubeServiceModel.class);
    }
}
