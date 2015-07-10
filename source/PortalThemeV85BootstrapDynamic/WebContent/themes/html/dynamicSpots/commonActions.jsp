<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/portal-internal.tld" prefix="portal-internal" %>
<%@ include file="../includePortalTaglibs.jspf" %>
<portal-core:constants/><portal-core:defineObjects/>
<%-- Renders links for Login/Logout and Help that are shown in the banner --%>
<portal-core:lazy-set var="selectionPath" elExpression="wp.selectionModel.selectionPath"/>
<portal-core:lazy-set var="themeConfig" elExpression="wp.themeConfig"/>

<portal-logic:if deviceClass="smartphone/tablet"><div class="wpthemeMobile"></portal-logic:if>
<ul class="wpthemeCommonActions wpthemeLeft">
	<%-- Logo --%>
	<li>
		<span class="wpthemeBranding">
		    <c:set var="node" value="${selectionPath[1]}"/>
		    <c:set var="nodeID" value="${wp.identification[node]}"/>
            	    <a class="wpthemeBrandingLink" href="?uri=nm:oid:${nodeID}" alt="<portal-fmt:out>${node.title}</portal-fmt:out>">
			<img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" alt="<portal-fmt:text key="theme.ibmLogo" bundle="nls.commonUI"/>">
		    </a>
		    <span class="wpthemeAltText"><portal-fmt:text key="theme.ibmLogo" bundle="nls.commonUI"/></span>
		</span>
	</li>
</ul>
<ul class="wpthemeCommonActions wpthemeRight">
	<portal-logic:if loggedIn="yes">
	<%-- Username is used as a link to 'Edit My Profile' --%>
	<portal-logic:if deviceClass="!smartphone">
	<li class="wpthemeFirst" id="wpthemeUserName">	
	<portal-internal:adminlinkinfo name="SELFCARE">
	<portal-navigation:urlGeneration contentNode="<%=wpsContentNode%>" layoutNode="<%= wpsCompositionNode %>" portletWindowState="Normal" themeTemplate="" portletParameterType="render">
	<portal-navigation:urlParam type="render" name="ao" value="thm"/>
	<portal-navigation:urlParam type="render" name="OCN" value="<%= wpsNavigationNodeID %>" />
		<a href="<%wpsURL.write(escapeXmlWriter);%>"><c:out value="${wp.user[themeConfig['user.displaynameattribute']]}" /></a>
    </portal-navigation:urlGeneration>
    </portal-internal:adminlinkinfo>
	</li>
	</portal-logic:if>
	<portal-logic:if deviceClass="!(smartphone/tablet)">
	<li id="wpthemeActionsMenu">
	<%--
	This creates the Actions context menu for page actions.  We use the
	&#36; HTML entity to encode the $ character so that it won't be interpreted
	as a JSP expression here and will show up as literals.
	--%>
	<c:if test="${!wpthemeWAI}" >
      <span tabindex="0" aria-labelledby="wpContextMenu" role="button" aria-haspopup="true" class="wpthemeActionsMenu wpthemeMenuAnchor wpthemeMenuFocus wpthemeActionDisabled"
          onclick="if (typeof wptheme != 'undefined') wptheme.contextMenu.init({ 'node': this, menuId: 'pageAction', jsonQuery: {'navID':ibmCfg.portalConfig.currentPageOID}, params: {'alignment':'right'}});"
          onmousemove="if (typeof i$ != 'undefined' &amp;&amp; typeof wptheme != 'undefined') { i$.removeClass(this,'wpthemeActionDisabled'); this.onmousemove = null; }"
          onkeydown="if (typeof i$ != 'undefined' &amp;&amp; typeof wptheme != 'undefined') {if (event.keyCode ==13 || event.keyCode ==32 || event.keyCode==38 || event.keyCode ==40) {wptheme.contextMenu.init(this, 'pageAction', {'navID':ibmCfg.portalConfig.currentPageOID}); return false;}}">
          <span class="wpthemeUnderlineText" id="wpContextMenu"><portal-fmt:text key='theme_actions' bundle='nls.commonTheme'/></span>
      </span>
	</c:if>
	</li>
	</portal-logic:if>
	<%-- Logout Link --%>
	<li id="wpthemeLogout">
		<a id="logoutlink" href="<portal-navigation:url command='LogoutUser' keepNavigationalState='false'/>"><portal-fmt:text key="link.logout" bundle="nls.engine"/></a>
	</li>
	</portal-logic:if>
	<portal-logic:if loggedIn="no">
	<%-- Sign up Link --%>
	<portal-logic:if deviceClass="!smartphone">
	<li class="wpthemeFirst" id="wpthemeSignUp">
		<portal-internal:adminlinkinfo name="SELFCARE">
		<portal-navigation:urlGeneration allowRelativeURL="true" contentNode="<%=wpsContentNode%>" layoutNode='<%= wpsCompositionNode %>' portletWindowState="Normal" themeTemplate="">
		<portal-navigation:urlParam type="render" name="ao" value="thm"/>
		<portal-navigation:urlParam type="render" name="OCN" value="<%= wpsNavigationNodeID %>" />
			<a href='<% wpsURL.write(escapeXmlWriter); %>'><portal-fmt:text key="link.enrollment" bundle="nls.engine"/></a>
		</portal-navigation:urlGeneration>
		</portal-internal:adminlinkinfo>
	</li>
	</portal-logic:if>
	<%-- Login Link --%>
	<c:set var="endPreviewOperation" value="${wp.operation['ibm.portal.operations.endPreviewMode']}"></c:set>
	<c:if test="${!endPreviewOperation.isActive}">
	<li class="wpthemeLast" id="wpthemeLogin">
		<portal-navigation:urlGeneration allowRelativeURL="true" keepNavigationalState="true" contentNode="wps.content.root" home="protected" >
			<a href='<% wpsURL.write(escapeXmlWriter); %>' ><portal-fmt:text key="link.login" bundle="nls.engine"/></a>
		</portal-navigation:urlGeneration>
	</li>
	</c:if>
	</portal-logic:if>
	<%--  Top Nav Toggle --%>
	<portal-logic:if deviceClass="tablet">
	<li id="wpthemeTopNavToggle">
	<a role="button" class="wpthemeTopNavToggleBtn" aria-label="<portal-fmt:text key="theme.display.top.nav" bundle="nls.commonUI"/>" title="<portal-fmt:text key="theme.display.top.nav" bundle="nls.commonUI"/>" href="javascript:;" onclick="wptheme.toggleMobileTopNav('<portal-fmt:text key="theme.display.top.nav" bundle="nls.commonUI"/>','<portal-fmt:text key="theme.hide.top.nav" bundle="nls.commonUI"/>');" id="wpthemeTopNavToggleBtn">
	&nbsp;<img alt="" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==">
	<span class="wpthemeAltText" id="wpthemeTopNavToggleBtnAccess"><portal-fmt:text key="theme.display.top.nav" bundle="nls.commonUI"/></span>
	</a>
	</li>
	</portal-logic:if>
	<%-- Help icon - only displayed for all authenticated users --%>
	<portal-logic:if loggedIn="yes">
	<portal-logic:if deviceClass="!(smartphone/tablet)">
	<li id="wpthemeHelp">
		<a id="wpthemeHelpAnchor" class="wpthemeHelp" href="<r:url uri='helpAdvisor:com.ibm.wp.admin.help.welcome'/>" onclick="return !window.open(this.href,'wpthemeHelp','width=800,height=600');" aria-label="<portal-fmt:text key="help.title" bundle="nls.commonUI"/>" aria-haspopup="true" role="button">
			<img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" alt="">
            <span class="wpthemeAltText"><portal-fmt:text key="help.title" bundle="nls.commonUI"/></span>
		</a>
	</li>
	</portal-logic:if>
	</portal-logic:if>
</ul>
<portal-logic:if deviceClass="smartphone/tablet"></div></portal-logic:if>
