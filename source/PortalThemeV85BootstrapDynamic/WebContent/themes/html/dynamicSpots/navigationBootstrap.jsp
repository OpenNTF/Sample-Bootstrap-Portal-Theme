<%@ page session="false" buffer="none"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="../includePortalTaglibs.jspf"%>

<portal-core:lazy-set var="selectionPath"
	elExpression="wp.selectionModel.selectionPath" />
<portal-core:lazy-set var="themeConfig" elExpression="wp.themeConfig" />
<portal-core:lazy-set var="showHiddenPages" elExpression== "wp.publicRenderParam['{http://www.ibm.com/xmlns/prod/websphere/portal/publicparams}hiddenPages']" />

<c:set var="startLevel" value="${param.startLevel}" />
<c:set var="selectedNodeID" value="${wp.identification[wp.selectionModel.selected]}" />
<c:set var="selectionPathLength" value="${fn:length(selectionPath)}" />
<portal-logic:if deviceClass="smartphone/tablet">
	<c:set var="isMobile" value="true" />
</portal-logic:if>

<c:choose>
<c:when test="${empty param.levelsDisplayed}">
	<c:set var="endLevel" value="${startLevel}" />
</c:when>
<c:otherwise>
	<c:set var="endLevel" value="${param.startLevel + (param.levelsDisplayed-1)}"/>
</c:otherwise>
</c:choose>
	<c:forEach var="node" items="${selectionPath}" varStatus="status"
		begin="${startLevel}" end="${endLevel}" step="1">
		<c:set var="level" value="${startLevel + (status.count-1)}" />
		<c:set var="childrenAvailable" value="false" />
		<c:if
			test="${(selectionPathLength > level) && wp.navigationModel.hasChildren[selectionPath[level]]}">
			<c:forEach var="node"
				items="${wp.navigationModel.children[selectionPath[level]]}"
				varStatus="childrenStatus">
				<c:set var="isHiddenPage"
					value="${node.metadata['com.ibm.portal.Hidden'] || (isMobile && node.metadata['com.ibm.portal.mobile.Hidden'])}" />
				<c:if test="${!isHiddenPage || showHiddenPages}">
					<c:set var="nodeID" value="${wp.identification[node]}" />
					<li
						class="<c:if test="${selectedNodeID == nodeID}">active</c:if> <c:if test="${wp.navigationModel.hasChildren[node]}">dropdown</c:if>">
						<a
						<c:if test="${wp.navigationModel.hasChildren[node]}">data-toggle='dropdown'</c:if>
						class="<c:if test="${wp.navigationModel.hasChildren[node]}">dropdown-toggle</c:if>"
						href="?uri=nm:oid:${nodeID}">${node.title}</a> <c:if
							test="${wp.navigationModel.hasChildren[node]}">
							<c:set var="parentNode" value="${node}" scope="request" />
							<ul class="dropdown-menu">
								<jsp:include page="navigationBootstrapSubMenu.jsp" />
							</ul>
						</c:if>
					</li>
				</c:if>
			</c:forEach>
		</c:if>
	</c:forEach>
