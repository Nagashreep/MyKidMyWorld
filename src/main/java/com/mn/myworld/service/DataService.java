package com.mn.myworld.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.webflow.execution.RequestContext;
import org.springframework.webflow.execution.RequestContextHolder;

import com.mn.myworld.DataRetrievalDao;
import com.mn.myworld.model.Criteria;
import com.mn.myworld.model.Story;

@Service
public class DataService {
	
	@Inject
	private DataRetrievalDao dataRetrievalDao;
	
	public List<Story> fetchData(int storyType){
		List<Story> stories = null;
		try{
			switch (storyType) {
			case 1:
				System.out.println("case 1");
				stories = dataRetrievalDao.fetchGraniStories();
				break;
			case 2:
				stories = dataRetrievalDao.fetchMyStories();
				break;
			default:
				break;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println("Stories returned from service: "+stories);
		return stories;
	}
	
	public Map<String,List<Criteria>> fetchCriterias(){
		Map<String,List<Criteria>> criteriaMap  = null;
		try{
			criteriaMap = dataRetrievalDao.fetchCriterias();
		}catch(Exception e){
			e.printStackTrace();
		}
		return criteriaMap;
	}

	public Story readStories(){
		Story selectedStory = null;
//		System.out.println("Val 1: "+flowRequestContext.getRequestParameters().get("id"));
		RequestContext requestContext = RequestContextHolder.getRequestContext();
		List<Story> stories = (List<Story>) requestContext.getFlowScope().get("stories");
		
		System.out.println("Val 2: "+requestContext.getRequestParameters().get("id"));
		
		System.out.println("Val 3: "+requestContext.getRequestScope().get("id"));
		
		String selectedId = (String) requestContext.getRequestScope().get("id");
		
		System.out.println("SelectedId: "+selectedId+" :storiesList: "+stories);
		
		
		for(Story story:stories){
			 if(story.getId().equalsIgnoreCase(selectedId)){
				 selectedStory = story;
			 }
		 }
		return selectedStory;
	}
}
