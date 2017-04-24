package com.mn.myworld;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.mn.myworld.model.Criteria;
import com.mn.myworld.model.Story;

@Repository
public class DataRetrievalDao {

	public List<Story> fetchGraniStories(){
		
		List<Story> graniStories = new ArrayList<Story>();
		
		//Dummy code for testing
		graniStories = this.testStoryFetch();
		
		System.out.println("Returning list");
		
		return graniStories;
	}
	
	private List<Story> testStoryFetch(){
		System.out.println("Inside dummy fetch");
		
		List<Story> storyList = new ArrayList<Story>();
		
		Story story = new Story();
		story.setText("Once upon a time, in a field not too far from you, there was an energetic and happy hare and a sleepy tortoise."
				+ "The happy hare was called Noel and the sleepy tortoise was called Archibald. Archibald the tortoise liked to sit and munch his dinner slowly, whilst Noel the hare would gobble up his dinner and run round and round Archibald until he was dizzy."
				+ "One day, they had an argument...I am the fastest animal in the whole wide world");
		story.setTitle("The Tortoise and the Hare");
		story.setId("1");
		
		Story story1 = new Story();
		story1.setText("Once when a lion, the king of the jungle, was asleep, a little mouse began running up and down on him. This soon awakened the lion, who placed his huge paw on the mouse, and opened his big jaws to swallow him.");
		story1.setTitle("The Lion and the Mouse");
		story1.setId("2");
		
		Story story2 = new Story();
		story2.setText("Once upon a time, a man and his wife had the good fortune to have a goose which laid a golden egg every day. Lucky though they were, they soon began to think they were not getting rich fast enough.They imagined that if the bird is able to lay golden eggs, its insides must be made of gold. And they thought that if they could get all that precious metal at once, they would get mighty rich very soon. So the man and his wife decided to kill the bird.");
		story2.setTitle("The Goose with the Golden Eggs");
		story2.setId("3");
		
		storyList.add(story);
		storyList.add(story1);
		storyList.add(story2);
		
		return storyList;
	}
	
	public List<Story> fetchMyStories(){
		
		List<Story> myStories = new ArrayList<Story>();
		
		return myStories;
	}
	
	public Map<String,List<Criteria>> fetchCriterias(){
		
		//Fetch criteria list from DB
		List<Criteria> criteriaList = new ArrayList<Criteria>();
		
		//Dummy code to fetch the list
		criteriaList = this.fetchTestCriterias();
		
		Map<String,List<Criteria>> criteriaMap = new HashMap<String, List<Criteria>>();
		
		//Format the list for display
		for (Criteria criteria : criteriaList) {
			List<Criteria> criteriaTypeList;
			if(criteriaMap.containsKey(criteria.getCriteriaType())){
				criteriaTypeList = criteriaMap.get(criteria.getCriteriaType());
			}else{
				criteriaTypeList = new ArrayList<Criteria>();
			}
			criteriaTypeList.add(criteria);
			criteriaMap.put(criteria.getCriteriaType(), criteriaTypeList);
		}
		
		System.out.println("Returning criteria list");
		
		return criteriaMap;
	}
	
	private List<Criteria> fetchTestCriterias(){
		
		System.out.println("Inside dummy method");
		
		List<Criteria> criteriaList = new ArrayList<Criteria>();
		
		Criteria criteria = new Criteria();
		criteria.setCriteriaId("Eng");
		criteria.setCriteriaText("English");
		criteria.setCriteriaType("Language");
		
		Criteria criteria1 = new Criteria();
		criteria1.setCriteriaId("Kan");
		criteria1.setCriteriaText("Kannada");
		criteria1.setCriteriaType("Language");
		
		Criteria criteria2 = new Criteria();
		criteria2.setCriteriaId("Mal");
		criteria2.setCriteriaText("Malayalam");
		criteria2.setCriteriaType("Language");
		
		Criteria criteria3 = new Criteria();
		criteria3.setCriteriaId("Aud");
		criteria3.setCriteriaText("Audio");
		criteria3.setCriteriaType("Type");
		
		Criteria criteria4 = new Criteria();
		criteria4.setCriteriaId("Vid");
		criteria4.setCriteriaText("Video");
		criteria4.setCriteriaType("Type");
		
		Criteria criteria5 = new Criteria();
		criteria5.setCriteriaId("Wri");
		criteria5.setCriteriaText("Written");
		criteria5.setCriteriaType("Type");
		
		criteriaList.add(criteria5);
		criteriaList.add(criteria4);
		criteriaList.add(criteria3);
		criteriaList.add(criteria2);
		criteriaList.add(criteria1);
		criteriaList.add(criteria);
		
		return criteriaList;
		
		
	}
	
}
