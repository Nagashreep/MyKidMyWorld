<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<c:forEach items="${criteriaMap}" var="criteriaMap">
	<br/><b><c:out value="${criteriaMap.key}"></c:out></b> <br/> <br/>
	<div style="width: 100%;">
		<c:forEach items="${criteriaMap.value}" var="criteria">
				<span class="filterText"><c:out value="${criteria.criteriaText}"></c:out></span>
				<span class="filterCheckbox"><input type="checkbox" id="${criteria.criteriaId}" /> </span><br/>
		</c:forEach>
	</div>
</c:forEach>
