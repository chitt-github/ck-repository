package com.adp.dogbreed.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.adp.dogbreed.model.Dog;
import com.adp.dogbreed.service.DogService;

//@RestController
@Controller
@RequestMapping("/")
@ComponentScan("com.adp.dogbreed") 
public class DogBreedController {
	
    @Autowired
    DogService service;
     
    @Autowired
    MessageSource messageSource;
 
    @RequestMapping(value = { "/", "/getAllDogs" }, method = RequestMethod.GET)
    public String getAllDogs(ModelMap model) {
 
        List<Dog> dogBreedList = service.findAllDogs();
        model.addAttribute("dogBreedType",getBreedTypeList(dogBreedList));
        model.addAttribute("dogBreedList", dogBreedList);
        return "dogsList";
    }
    
    @RequestMapping(value = {"/getDogsByBreedType" }, method = RequestMethod.GET)
    public String getDogsByBreedType(@RequestParam String breedType, ModelMap model ) {
        List<Dog> dogBreedList = service.findDogsByBreedType(breedType);
        model.addAttribute("dogBreedType",getBreedTypeList(service.findAllDogs()));
        model.addAttribute("dogBreedList", dogBreedList);
        return "dogsList";
    }
    
    @RequestMapping(value = { "/getDogDetails/{dogId}" }, method = RequestMethod.GET)
    public String getDogDetails(@PathVariable Integer dogId, ModelMap model) {
        Dog dog = service.findByDogId(dogId);
        model.addAttribute("dog", dog);
        return "dogDetails";
    }
    
    @RequestMapping(value = { "/voteForFavorite/{dogId}/{count}" }, method = RequestMethod.POST)
    public String voteForFavorite(BindingResult result,
            ModelMap model, @PathVariable Integer dogId,@PathVariable Integer count) {
 
        if (result.hasErrors()) {
            return "dogsList";
        }
 
       /* if(!service.isDogImageIdUnique(dog.getId(), dogId)){
            FieldError ssnError =new FieldError("dog","id",messageSource.getMessage("non.unique.id", new String[]{dog.getId()}, Locale.getDefault()));
            result.addError(ssnError);
            return "registration";
        }*/
 
        service.voteForFavoriteDog(dogId, count);
 
        model.addAttribute("success", "Dog " + dogId  + " updated successfully");
        return "success";
    }
    
    List<Object> getBreedTypeList(List<Dog> dogBreedList){
    	List<String> dogBreedTypeList = new ArrayList<String>();
        for(Dog dog : dogBreedList){
        	dogBreedTypeList.add(dog.getBreedType());
        }
        List<Object> distinctdogBreedType = dogBreedTypeList.stream().distinct().collect(Collectors.toList());
        
        return distinctdogBreedType;
    }

}

