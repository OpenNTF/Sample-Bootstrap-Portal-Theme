<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../includePortalTaglibs.jspf" %>

<portal-core:lazy-set var="selectionPath" elExpression="wp.selectionModel.selectionPath"/>
<portal-core:lazy-set var="themeConfig" elExpression="wp.themeConfig"/>
<portal-core:lazy-set var="showHiddenPages" elExpression=="wp.publicRenderParam['{http://www.ibm.com/xmlns/prod/websphere/portal/publicparams}hiddenPages']" />

<c:set var="startLevel" value="${param.startLevel}" />
<c:set var="selectedNodeID" value="${wp.identification[wp.selectionModel.selected]}" />
<c:set var="selectionPathLength" value="${fn:length(selectionPath)}" />
<portal-logic:if deviceClass="smartphone/tablet">
	<c:set var="isMobile" value="true"/>
</portal-logic:if>

<c:choose>
<c:when test="${empty param.levelsDisplayed}">
	<c:set var="endLevel" value="${startLevel}" />
</c:when>
<c:otherwise>
	<c:set var="endLevel" value="${param.startLevel + (param.levelsDisplayed-1)}"/>
</c:otherwise>
</c:choose>

<c:if test="${(selectionPathLength > startLevel+1) && !(empty param.levelsDisplayed)}">
	<c:set var="startLevel" value="${selectionPathLength - param.levelsDisplayed}"/>	
	<c:set var="endLevel" value="${selectionPathLength}"/> 
</c:if>

<c:forEach var="node" items="${selectionPath}" varStatus="status" begin="${startLevel}" end="${endLevel}" step="1">
	<c:set var="level" value="${startLevel + (status.count-1)}"/> 
	<c:set var="childrenAvailable" value="false"/> 
	<c:if test="${(selectionPathLength > level) && wp.navigationModel.hasChildren[selectionPath[level]]}">
		<c:forEach var="node" items="${wp.navigationModel.children[selectionPath[level]]}" varStatus="childrenStatus">
		
        <c:set var="isHiddenPage" value="${node.metadata['com.ibm.portal.Hidden'] || (isMobile && node.metadata['com.ibm.portal.mobile.Hidden'])}" />
        <c:if test="${!isHiddenPage || showHiddenPages}">
			<c:set var="nodeID" value="${wp.identification[node]}"/>
			<c:if test="${childrenAvailable == false}">
			<div class="wpthemeNavContainer${status.count}">
				<nav class="<c:out value='${param.rootClass}' escapeXml='true' />" aria-label="<c:out value='${param.rootLabel}' escapeXml='true' />">
					<ul class="wpthemeNavList">
			</c:if>
						<li class="wpthemeNavListItem wpthemeLeft<c:if test="${wp.selectionModel[node] != null}"> wpthemeSelected</c:if>">
							<a href="?uri=nm:oid:${nodeID}" class="wpthemeLeft<c:if test="${childrenStatus.count == 1}"> wpthemeFirst</c:if>"><span lang="${node.title.xmlLocale}" dir="${node.title.direction}"><c:choose><c:when test="${node.projectID != null}">(<c:choose><c:when test="${isHiddenPage}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose>)</c:when><c:when test="${isHiddenPage}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose><c:if test="${selectedNodeID == nodeID}"><span class="wpthemeAccess"> <portal-fmt:text key="currently_selected" bundle="nls.commonTheme"/></span></c:if></span></a>
							<portal-dynamicui:closePage node="${node}"><a class="wpthemeClose wpthemeLeft" href="<%closePageURL.write(out);%>"><img alt="" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="/><span class="wpthemeAltText"><portal-fmt:text key="theme.close" bundle="nls.commonUI"/></span></a></portal-dynamicui:closePage>
						</li>
			<c:set var="childrenAvailable" value="true"/> 
		</c:if>
		</c:forEach>
		<c:if test="${childrenAvailable != false}">
					</ul>
				</nav>
				<div class="wpthemeClear"></div>
			</div>
		</c:if>
	</c:if>
</c:forEach>
