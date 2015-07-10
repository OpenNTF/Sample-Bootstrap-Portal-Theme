<%@ page session="false" buffer="none" %>
<%-- Licensed Materials - Property of IBM, 5724-E76, (C) Copyright IBM Corp. 2001, 2012 - All Rights reserved. --%>

<%--
     NOTE: This file is a fallback minimal skin to recover from a severe portal error.
     It renders the minimum required to navigate to administration and try to fix the problem. 
     This skin does not include all skin functionality and should not be used as the basis 
     for a production skin. Production skins should contain all their files inside their 
     own directory. 
--%>
<%@ include file="./includePortalTaglibs.jspf" %>

<div style="overflow:auto;clear:both;border:1px solid grey;margin:5px;padding:5px;">
	<h2>
		<portal-skin:portletTitle>
			<span style="color:red;"><portal-fmt:problem bundle="nls.problem"/></span>
		</portal-skin:portletTitle>
	</h2>
	<div>
		<portal-skin:portletRender>
			<span style="color:red;"><portal-fmt:problem bundle="nls.problem"/></span>
		</portal-skin:portletRender>
	</div>
</div>