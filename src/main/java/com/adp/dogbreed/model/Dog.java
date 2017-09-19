package com.adp.dogbreed.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Size;

@Entity
@Table(name="DOG_BREED_DETAILS")
public class Dog {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
	
	@Size(min=3, max=50)
    @Column(name = "IMAGE_NAME", nullable = false)
    private String imageName;
	
	@Digits(integer=3, fraction = 0)
	@Column(name = "IMAGE_ID", nullable = false)
	private Integer imageId;
	
	@Size(min=3, max=200)
    @Column(name = "URL", nullable = false)
	private String url;
	
	@Digits(integer=5, fraction = 0)
	@Column(name = "FAVORITE_COUNT", nullable = false)
	private Integer favoriteCount;
	
	@Size(min=3, max=50)
    @Column(name = "BREED_TYPE", nullable = false)
	private String breedType;
	
	@Size(min=3, max=250)
    @Column(name = "OTHER_INFO", nullable = false)
	private String otherInfo;
	
	public Dog() {
		super();
	}

	public Dog(int id, String imageName, Integer imageId, String url, Integer favoriteCount, String breedType,
			String otherInfo) {
		super();
		this.id = id;
		this.imageName = imageName;
		this.imageId = imageId;
		this.url = url;
		this.favoriteCount = favoriteCount;
		this.breedType = breedType;
		this.otherInfo = otherInfo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public Integer getImageId() {
		return imageId;
	}

	public void setImageId(Integer imageId) {
		this.imageId = imageId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getFavoriteCount() {
		return favoriteCount;
	}

	public void setFavoriteCount(Integer favoriteCount) {
		this.favoriteCount = favoriteCount;
	}

	public String getBreedType() {
		return breedType;
	}

	public void setBreedType(String breedType) {
		this.breedType = breedType;
	}

	public String getOtherInfo() {
		return otherInfo;
	}

	public void setOtherInfo(String otherInfo) {
		this.otherInfo = otherInfo;
	}

	@Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + id;
        result = prime * result + ((imageId == null) ? 0 : imageId.hashCode());
        return result;
    }
 
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof Dog))
            return false;
        Dog other = (Dog) obj;
        if (id != other.id)
            return false;
        if (imageId == null) {
            if (other.imageId != null)
                return false;
        } else if (!imageId.equals(other.imageId))
            return false;
        return true;
    }
    
	@Override
	public String toString() {
		return "Dog [id=" + id + ", imageName=" + imageName + ", imageId=" + imageId + ", url=" + url
				+ ", favoriteCount=" + favoriteCount + ", breedType=" + breedType + ", otherInfo=" + otherInfo + "]";
	}
	
}
