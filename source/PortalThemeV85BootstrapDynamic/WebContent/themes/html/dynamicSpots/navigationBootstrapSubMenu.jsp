<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../includePortalTaglibs.jspf" %>

<c:set var="selectedNodeID" value="${wp.identification[wp.selectionModel.selected]}" />

<c:forEach var="node" items="${wp.navigationModel.children[parentNode]}">
	<c:if test="${!node.metadata['com.ibm.portal.Hidden']}">	
		<c:set var="nodeID" value="${wp.identification[node]}"/>
		<li>				 	
		 	<a class="<c:if test="${selectedNodeID == nodeID}">active</c:if>" href="?uri=nm:oid:${nodeID}"><c:out value="${node.title}"/></a>
		</li>
	</c:if>
</c:forEach>
