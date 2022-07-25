package www.bookresept.resept;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Resept {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	private String name_resept;
	private String ingredients;
	private String cooking;
	
	public Resept() {
		
	}
	
	public Resept(String name_resept, String ingredients, String cooking) {
		
		this.name_resept = name_resept;
		this.ingredients = ingredients;
		this.cooking = cooking;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName_resept() {
		return name_resept;
	}

	public void setName_resept(String name_resept) {
		this.name_resept = name_resept;
	}

	public String getIngredients() {
		return ingredients;
	}

	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}

	public String getCooking() {
		return cooking;
	}

	public void setCooking(String cooking) {
		this.cooking = cooking;
	}
	
	@Override
	public String toString() {
		return "Resept [id=" + id + ", name_resept=" + name_resept + ", ingredients=" + ingredients + ", cooking="
				+ cooking + "]";
	}
	
}
