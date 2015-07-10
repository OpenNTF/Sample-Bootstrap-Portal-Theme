<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../includePortalTaglibs.jspf" %>
<portal-core:lazy-set var="selectionPath" elExpression="wp.selectionModel.selectionPath"/>
<portal-core:lazy-set var="showHiddenPages" elExpression=="wp.publicRenderParam['{http://www.ibm.com/xmlns/prod/websphere/portal/publicparams}hiddenPages']" />

<portal-logic:if deviceClass="!smartphone">
	<c:if test="${fn:length(selectionPath) > (param.startLevel+1)}">
	<div class="<c:out value='${param.rootClass}' escapeXml='true' /> wpthemeLeft">
		<c:set var="separator" value="&gt;" />
		<c:forEach var="node" items="${selectionPath}" begin="${param.startLevel}">
			<c:set var="nodeID" value="${wp.identification[node]}"/>
			<c:if test="${!node.metadata['com.ibm.portal.Hidden'] || (wp.identification[wp.selectionModel.selected] == nodeID) || showHiddenPages}">
				<c:if test="${isTrailStarted}">
					<span class="wpthemeCrumbTrailSeparator">${separator}</span>
				</c:if>
				<c:choose>
					<c:when test="${wp.identification[wp.selectionModel.selected] == nodeID}">
						<strong><span class="wpthemeSelected" lang="${node.title.xmlLocale}" dir="${node.title.direction}"><c:choose><c:when test="${node.projectID != null}">(<c:choose><c:when test="${node.metadata['com.ibm.portal.Hidden'] && showHiddenPages}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose>)</c:when><c:when test="${node.metadata['com.ibm.portal.Hidden'] && showHiddenPages}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose></span></strong>
					</c:when>
					<c:when test="${node.contentNode.contentNodeType == 'LABEL'}">
						<span lang="${node.title.xmlLocale}" dir="${node.title.direction}"><c:choose><c:when test="${node.projectID != null}">(<c:choose><c:when test="${node.metadata['com.ibm.portal.Hidden']}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose>)</c:when><c:when test="${node.metadata['com.ibm.portal.Hidden']}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose></span>
					</c:when>
					<c:otherwise>
						<a href="?uri=nm:oid:${nodeID}"><span lang="${node.title.xmlLocale}" dir="${node.title.direction}"><c:choose><c:when test="${node.projectID != null}">(<c:choose><c:when test="${node.metadata['com.ibm.portal.Hidden']}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose>)</c:when><c:when test="${node.metadata['com.ibm.portal.Hidden']}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose></span></a>
					</c:otherwise>
				</c:choose>
				<portal-core:set var="isTrailStarted" value="true" />
			</c:if>
		</c:forEach>
	</div>
	</c:if>
</portal-logic:if>