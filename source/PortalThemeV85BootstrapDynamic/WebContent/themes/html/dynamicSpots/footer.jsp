<%@ page session="false" buffer="none" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../includePortalTaglibs.jspf" %>
<portal-core:constants/><portal-core:defineObjects/>

<div class="wpthemeFooterCol wpthemeLeft">
	<h3><portal-fmt:text escapeXml="true" key="help.title" bundle="nls.commonUI"/></h3>
	<ul>
		<li><a href="http://www.ibm.com/websphere/portal/library" target="_blank"><portal-fmt:text escapeXml="true" key="help.documentation" bundle="nls.commonUI"/></a></li>
		<li><a href="http://www.lotus.com/ldd/portalwiki.nsf/" target="_blank"><portal-fmt:text escapeXml="true" key="help.wiki" bundle="nls.commonUI"/></a></li>
		<li><a href="http://www.lotus.com/ldd/portalwiki.nsf/xpViewCategories.xsp?lookupName=Video%20Gallery" target="_blank"><portal-fmt:text escapeXml="true" key="help.media" bundle="nls.commonUI"/></a></li>
		<li><a href="http://www.ibm.com/websphere/developer/zones/portal/" target="_blank"><portal-fmt:text escapeXml="true" key="help.zone" bundle="nls.commonUI"/></a></li>
	</ul>
</div>
<div class="wpthemeFooterCol wpthemeLeft">
	<h3><portal-fmt:text escapeXml="true" key="support.title" bundle="nls.commonUI"/></h3>
	<ul>
		<li><a href="http://www.ibm.com/software/genservers/portal/support/" target="_blank"><portal-fmt:text escapeXml="true" key="support.page" bundle="nls.commonUI"/></a></li>
		<li><a href="http://www-01.ibm.com/support/docview.wss?rs=1070&amp;uid=swg27007791" target="_blank"><portal-fmt:text escapeXml="true" key="support.hardware.software" bundle="nls.commonUI"/></a></li>
		<li><a href="http://www14.software.ibm.com/webapp/set2/sas/f/handbook/home.html" target="_blank"><portal-fmt:text escapeXml="true" key="support.guide" bundle="nls.commonUI"/></a></li>
	</ul>
</div>
<portal-logic:if loggedIn="yes">
<div class="wpthemeFooterCol wpthemeLeft">
	<h3><portal-fmt:text escapeXml="true" key="search.explore.title" bundle="nls.commonUI"/></h3>
	<ul>
        <li><a href="?uri=nm:oid:ibm.portal.Search%2520Center"><portal-fmt:text escapeXml="true" key="search.center.page" bundle="nls.commonUI"/></a></li>
        <li><a href="?uri=nm:oid:ibm.portal.Tag%2520Center"><portal-fmt:text escapeXml="true" key="tagging.rating.page" bundle="nls.commonUI"/></a></li>
	</ul>
</div>
</portal-logic:if>
<portal-logic:if deviceClass="smartphone">
	<script>window.scrollTo(0, 47);</script>
</portal-logic:if>