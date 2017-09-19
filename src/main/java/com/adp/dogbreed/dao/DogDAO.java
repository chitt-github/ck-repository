package com.adp.dogbreed.dao;

import java.util.List;

import com.adp.dogbreed.model.Dog;

public interface DogDAO {

//	findAllDogs - List all of the available dog pictures grouped by breed
//	findDogsByBreedType - List all of the available dog pictures of a particular breed
//	voteForFavoriteDog - Vote up and down a dog picture
//	getDogDetails- The details associated with a dog picture
	
	List<Dog> findAllDogs();
	
	List<Dog> findDogsByBreedType(String breedType);
	
	void voteForFavoriteDog(int dogId, int count);
	
	Dog findByDogId(int id);
	
	public void saveDog(Dog dog);
}

