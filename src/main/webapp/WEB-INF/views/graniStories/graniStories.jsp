<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<div class="graniStory-body">	
	<c:forEach items="${stories}" var="story">
		<div class="story">
			<b><a href="${flowExecutionUrl}&_eventId=readStories&id=${story.id}"><c:out value="${story.title}"></c:out></a></b> 
			<p><c:out value="${story.text}"></c:out></p>
		</div>
	</c:forEach>
</div>