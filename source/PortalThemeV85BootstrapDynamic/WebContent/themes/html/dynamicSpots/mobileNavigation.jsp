<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v8.5/portal-fmt" prefix="portal-fmt" %>
<%@ taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v8.5/portal-navigation" prefix="portal-navigation" %>
<%@ taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v8.5/resolver" prefix="r" %>
<%@ taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v8.5/portal-core" prefix="portal-core" %>
<%@ taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v8.5/portal-logic" prefix="portal-logic" %>
<portal-core:lazy-set var="themeConfig" elExpression="wp.themeConfig"/>
<portal-core:lazy-set var="showHiddenPages" elExpression=="wp.publicRenderParam['{http://www.ibm.com/xmlns/prod/websphere/portal/publicparams}hiddenPages']" />

<%-- Set for tablet devices --%>
<portal-logic:if deviceClass="tablet">
	<c:set var="isTablet" value="true"/>
</portal-logic:if>
<%-- The CSS class on the navigation root --%>
<c:set var="rootClass" value="${param.rootClass}" />
<c:if test="${empty rootClass}">
	<c:set var="rootClass" value="wpthemeMobileNav" />
</c:if>
<%-- The level from which to start displaying the navigation tree --%>
<c:set var="startLevel" value="${param.startLevel}" />
<c:if test="${empty startLevel}">
	<c:set var="startLevel" value="1" />
</c:if>
<%-- The children of parent will be output in the HTML below --%>
<c:if test="${empty parent}">
	<c:set var="parent" value="${wp.selectionModel.selectionPath[startLevel]}" />
</c:if>
<%-- The navigation level for which children are currently being output, default is startLevel --%>
<c:if test="${!empty nextLevel}">
	<c:set var="curLevel" value="${nextLevel}" />
</c:if>
<c:if test="${empty curLevel}">
	<c:set var="curLevel" value="${startLevel}" />
</c:if>
<%-- The number of levels of navigation that will be output --%>
<c:set var="levelsDisplayed" value="${param.levelsDisplayed}" />
<c:if test="${empty levelsDisplayed}">
	<c:set var="levelsDisplayed" value="10" />
</c:if>
<%-- True if the first item in the navigation list should be a search bar --%>
<c:set var="hasSearch" value="${param.hasSearch}" />
<c:if test="${empty hasSearch}">
	<c:set var="hasSearch" value="true" />
</c:if>
<%-- The OID of the currently selected node --%>
<c:set var="selectedNodeID" value="${wp.identification[wp.selectionModel.selected]}" />
<%-- True if the current parent node has children --%>
<c:set var="hasChildren" value="false"/> 

<c:set var="cancelEvent" value="if (!event) {if (window.event) event = window.event;} if (event) {if (event.preventDefault) event.preventDefault(); if (event.stopPropagation) event.stopPropagation(); if (event.cancel != null) event.cancel = true; if (event.cancelBubble != null) event.cancelBubble = true;}"/>

<c:if test="${startLevel == curLevel}">
	<%-- Output the containing div on the first recursive pass --%>
	<a role="button" class="wpthemeNavToggleBtn" aria-label="<portal-fmt:text key="theme.display.nav" bundle="nls.commonUI"/>" title="<portal-fmt:text key="theme.display.nav" bundle="nls.commonUI"/>" href="javascript:;" onclick="wptheme.toggleMobileNav('wpthemeNavRoot','wpthemeNavCollapsed','<portal-fmt:text key="theme.display.nav" bundle="nls.commonUI"/>','<portal-fmt:text key="theme.hide.nav" bundle="nls.commonUI"/>','wpthemeNavRoot',<portal-logic:if deviceClass="tablet">true</portal-logic:if><portal-logic:if deviceClass="!tablet">false</portal-logic:if>,0); <c:out value="${cancelEvent}"/>" id="wpthemeNavRootLink">
		<img alt="" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="/>
		<span class="wpthemeAltText" id="wpthemeNavRootAccess"><portal-fmt:text key="theme.display.nav" bundle="nls.commonUI"/></span>
	</a>
	<div class="wpthemeMobileBorder"></div>
	<div role="navigation" aria-expanded="false" class="wpthemeNavCollapsed <c:out value='${rootClass}' escapeXml='true' /> <portal-logic:if deviceClass="tablet"> wpthemeMobileSide</portal-logic:if>" id="wpthemeNavRoot">
</c:if>

<c:set var="parentNodeID" value="${wp.identification[parent]}"/>
<%-- Loop through all the child nodes of parent --%>
<c:forEach var="node" items="${wp.navigationModel.children[parent]}">
	<c:set var="nodeID" value="${wp.identification[node]}"/>

	<%-- Only output markup if the current child node is not hidden --%>
	<c:if test="${!(node.metadata['com.ibm.portal.Hidden'] || node.metadata['com.ibm.portal.mobile.Hidden']) || showHiddenPages}">
	
	<%-- Start a new UL if this is the beginning of the child nodes --%>
	<c:if test="${hasChildren == false}">
		<c:if test="${startLevel != curLevel}">
		<div<portal-logic:if deviceClass="tablet"> class="wpthemeNavCollapsed <c:out value='${rootClass}' escapeXml='true' /> wpthemeMobileSide"</portal-logic:if> id="${parentNodeID}_navigationSubnav">
		</c:if>
		<ul aria-label="${parent.title}" class="wpthemeExpandNav" <c:if test="${startLevel == curLevel}">role="tree"</c:if><c:if test="${startLevel != curLevel}">role="group"</c:if>>
		
		<c:if test="${isTablet && startLevel != curLevel}">
			<%-- output a close link at the top of each navigation level for tablets --%>
			<li class="wpthemeNavListItem wpthemeNavClose">
				<a role="button" aria-label="<portal-fmt:text key="theme.close" bundle="nls.commonUI"/>" title="<portal-fmt:text key="theme.close" bundle="nls.commonUI"/>" href="javascript:;" onclick="wptheme.toggleMobileNav('${parentNodeID}_navigation','wpthemeNavCollapsed','<portal-fmt:text key="theme.expand" bundle="nls.commonUI"/>','<portal-fmt:text key="theme.collapse" bundle="nls.commonUI"/>','wpthemeNavRoot',<portal-logic:if deviceClass="tablet">true</portal-logic:if><portal-logic:if deviceClass="!tablet">false</portal-logic:if>,<c:out value="${(curLevel - startLevel) + 1}"/>); <c:out value="${cancelEvent}"/>">
					&nbsp;<img alt="" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="/>
					<span class="wpthemeAltText" id="${nodeID}_navigationAccess"><portal-fmt:text key="theme.close" bundle="nls.commonUI"/></span>
				</a>
			</li>
		</c:if>
		
		<portal-navigation:urlGeneration allowRelativeURL="true" contentNode="ibm.portal.Search Center" layoutNode="ibm.portal.Search Center Portlet Window" portletParameterType="action">
		<portal-navigation:urlParam name="javax.portlet.action" value="newQuery" type="action"/>
		<c:if test="${hasSearch && startLevel == curLevel}">
			<%-- output a search bar as the top entry in the navigation --%>
			<li class="wpthemeNavListItem wpthemeNavSearch">
				<r:dataSource uri="dyn-cs:id:wp_search_mobile_dynspot" escape="none"/>
			</li>
		</c:if>
		</portal-navigation:urlGeneration>
	</c:if>
	<c:set var="hasChildren" value="true"/> 
	
	<%-- Output a link to nodeID --%>
		<c:set var="isCollapsed" value="${wp.selectionModel[node] == null || selectedNodeID == nodeID || isTablet}" />
		<%-- check to ensure that, if the node has children, there is at least one that is not hidden --%>
		<c:set var="hasVisibleChildren" value="false"/>
		<c:forEach var="child" items="${wp.navigationModel.children[node]}">
			<c:if test="${!(child.metadata['com.ibm.portal.Hidden'] || child.metadata['com.ibm.portal.mobile.Hidden']) || showHiddenPages}">
				<c:set var="hasVisibleChildren" value="true"/>
			</c:if>
		</c:forEach>
			<li role="treeitem" class="wpthemeNavListItem<c:if test="${selectedNodeID == nodeID}"> wpthemeSelected</c:if><c:if test="${wp.selectionModel[node] != null && isTablet}"> wpthemeAncestor</c:if><c:if test="${isCollapsed}"> wpthemeNavCollapsed</c:if><c:if test="${hasVisibleChildren && startLevel + levelsDisplayed - 1 > curLevel}"> wpthemeHasChildren</c:if>" <c:if test="${!isCollapsed}">aria-expanded="true"</c:if><c:if test="${isCollapsed}">aria-expanded="false"</c:if> id="${nodeID}_navigation">
				<a href="?uri=nm:oid:${nodeID}">
					<span id="${nodeID}_navigationLinkText" lang="${node.title.xmlLocale}" dir="${node.title.direction}"><c:choose><c:when test="${node.metadata['com.ibm.portal.Hidden']}">[<c:out value="${node.title}"/>]</c:when><c:otherwise><c:out value="${node.title}"/></c:otherwise></c:choose><c:if test="${selectedNodeID == nodeID}"><span class="wpthemeAccess"><portal-fmt:text key="currently_selected" bundle="nls8.Theme"/></span></c:if></span>
				</a>
				
	<%-- Handle the case where the current child node has its own children --%>
	<c:if test="${hasVisibleChildren}">
		<%-- Recursively render the grandchilden if levelsDisplayed has not yet been reached --%>
		<c:if test="${startLevel + levelsDisplayed - 1 > curLevel}">
				<c:set var="btnValue"><portal-fmt:text key="theme.collapse" bundle="nls.commonUI"/></c:set>
				<c:if test="${isCollapsed}"><c:set var="btnValue"><portal-fmt:text key="theme.expand" bundle="nls.commonUI"/></c:set></c:if>
				<a role="button" class="wpthemeExpandBtn" aria-label="${btnValue}" title="${btnValue}" href="javascript:;" onclick="wptheme.toggleMobileNav('${nodeID}_navigation','wpthemeNavCollapsed','<portal-fmt:text key="theme.expand" bundle="nls.commonUI"/>','<portal-fmt:text key="theme.collapse" bundle="nls.commonUI"/>','wpthemeNavRoot',<portal-logic:if deviceClass="tablet">true</portal-logic:if><portal-logic:if deviceClass="!tablet">false</portal-logic:if>,<c:out value="${(curLevel - startLevel) + 1}"/>); <c:out value="${cancelEvent}"/>" id="${nodeID}_navigationLink">
					&nbsp;<img alt="" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="/>
					<span class="wpthemeAltText" id="${nodeID}_navigationAccess">${btnValue}</span>
				</a>
				<%-- Add an onload function that will expand the navigation to the currently selected level --%>
				<c:if test="${!(wp.selectionModel[node] == null || selectedNodeID == nodeID) && isTablet}">
					<script type="text/javascript">
					i$.addOnLoad(function () {wptheme.mobileNavSideLastExpanded.push("<c:out value="${nodeID}"/>_navigationLink");});
					</script>
				</c:if>
				<c:set var="parent" value="${node}" scope="request"/>
				<c:set var="nextLevel" value="${curLevel+1}" scope="request"/>
				<jsp:include page="mobileNavigation.jsp"/>
		</c:if>
	</c:if>
				<div class="wpthemeClear"></div>
			</li>
	</c:if>
</c:forEach>

<c:if test="${hasChildren != false}">
	</ul>
	<c:if test="${startLevel != curLevel}">
	</div>
	</c:if>
</c:if>

<c:if test="${startLevel == curLevel}">
	<%-- Hide the navigation if it is empty --%>
	<c:if test="${hasChildren == false}">
		<script type="text/javascript">
			wptheme.hideMobileNav();
		</script>
	</c:if>
	<%-- close wpthemeNavRoot --%>
	</div>
</c:if>