package com.adp.dogbreed.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.adp.dogbreed.model.Dog;

@Repository("dogDao")
public class DogDAOImpl extends AbstractDAO<Integer, Dog> implements DogDAO {

	@SuppressWarnings("unchecked")
	@Override
	public List<Dog> findAllDogs() {
		Criteria criteria = createEntityCriteria();
        return (List<Dog>) criteria.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Dog> findDogsByBreedType(String breedType) {
		Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("breedType", breedType));
        return (List<Dog>) criteria.list();
	}

	@Override
	public Dog findByDogId(int id) {
		return getByKey(id);
	}

	@Override
	public void voteForFavoriteDog(int dogId, int count) {
		Query query = getSession().createSQLQuery("update Dog_detailss set favoriteCount = favoriteCount + :count where id = :dogId");
        query.setInteger("dogId", dogId);
        query.setInteger("count", count);
        query.executeUpdate();
	}
	
	@Override
	public void saveDog(Dog dog) {
		persist(dog);
	}

}
