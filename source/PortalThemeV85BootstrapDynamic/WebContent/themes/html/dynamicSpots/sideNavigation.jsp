<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../includePortalTaglibs.jspf" %>
<portal-core:lazy-set var="themeConfig" elExpression="wp.themeConfig"/>
<portal-core:lazy-set var="currentNavNode" elExpression="wp.selectionModel.selected"/>
<portal-core:lazy-set var="showHiddenPages" elExpression=="wp.publicRenderParam['{http://www.ibm.com/xmlns/prod/websphere/portal/publicparams}hiddenPages']" />

<c:if test="${empty parentNode}">
	<c:set var="parentNode" value="${wp.selectionModel.selectionPath[param.startLevel]}" />
</c:if>

<c:set var="selectedNodeID" value="${wp.identification[currentNavNode]}" />
<c:set var="childrenAvailable" value="false"/> 

<c:forEach var="node" items="${wp.navigationModel.children[parentNode]}">
	<c:if test="${!node.metadata['com.ibm.portal.Hidden'] || showHiddenPages}">
		
		<c:if test="${childrenAvailable == false}">
			<ul class="wpthemeNavList wpthemeNavContainer">
		</c:if>
		
		<c:set var="nodeID" value="${wp.identification[node]}"/>
			
				<li class="wpthemeNavListItem">
					<span>
						<a href="?uri=nm:oid:${nodeID}" <c:if test="${selectedNodeID == nodeID}">class="wpthemeSelected"</c:if>><span lang="${node.title.xmlLocale}" dir="${node.title.direction}"><c:choose><c:when test="${node.projectID != null}">(<c:choose><c:when test="${node.metadata['com.ibm.portal.Hidden']}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose>)</c:when><c:when test="${node.metadata['com.ibm.portal.Hidden']}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose><c:if test="${selectedNodeID == nodeID}"><span class="wpthemeAccess"> <portal-fmt:text key="currently_selected" bundle="nls.commonTheme"/></span></c:if></span></a>
						<portal-dynamicui:closePage node="${node}"><a class="wpthemeClose" href="<%closePageURL.write(out);%>"><img alt="" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="/><span class="wpthemeAltText"><portal-fmt:text key="theme.close" bundle="nls.commonUI"/></span></a></portal-dynamicui:closePage>
					</span>
					<c:if test="${wp.navigationModel.hasChildren[node]}">
						<c:set var="parentNode" value="${node}" scope="request"/>
						<jsp:include page="sideNavigation.jsp"/>
					</c:if>
				</li>
			
		<c:set var="childrenAvailable" value="true"/> 
	</c:if>
</c:forEach>

<c:if test="${childrenAvailable != false}">
</ul>
</c:if>