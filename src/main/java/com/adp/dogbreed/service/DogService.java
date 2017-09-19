package com.adp.dogbreed.service;

import java.util.List;

import com.adp.dogbreed.model.Dog;

public interface DogService {
	
	List<Dog> findAllDogs();
	
	List<Dog> findDogsByBreedType(String breedType);
	
	void voteForFavoriteDog(int dogId, int count);
	
	Dog findByDogId(int id);
	
	public void saveDog(Dog dog);
}

