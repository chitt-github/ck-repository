package com.adp.dogbreed.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.adp.dogbreed.dao.DogDAO;
import com.adp.dogbreed.model.Dog;

@Service("dogService")
@Transactional
public class DogServiceImpl implements DogService {
	
	@Autowired
    private DogDAO dao;

	@Override
	public List<Dog> findAllDogs() {
		return dao.findAllDogs();
	}
	
	@Override
	public List<Dog> findDogsByBreedType(String breedType) {
		return dao.findDogsByBreedType(breedType);
	}
	
	@Override
	public Dog findByDogId(int id) {		
		return dao.findByDogId(id);
	}

	@Override
	public void saveDog(Dog dog) {
		 dao.saveDog(dog);
	}

	@Override
	public void voteForFavoriteDog(int dogId, int count){
		Dog entity = dao.findByDogId(dogId);
        if(entity!=null){
            entity.setFavoriteCount(count);
        }
        saveDog(entity);
	}

	


/*	
	public boolean isDogIdUnique(Integer id, String id) {
        Dog dog = findDogById(id);
        return ( dog == null || ((id != null) && (dog.getId() == id)));
    }*/

}
