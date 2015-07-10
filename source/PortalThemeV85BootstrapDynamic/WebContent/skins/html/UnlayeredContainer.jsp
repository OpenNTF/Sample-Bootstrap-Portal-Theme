<%@ page session="false" buffer="none" %>
<%-- Licensed Materials - Property of IBM, 5724-E76, (C) Copyright IBM Corp. 2001, 2004, 2006 - All Rights reserved.--%>
<%--

	NOTE: By default, automatic reloading of theme and skin JSP files is turned off.
          To see the changes you make to this file without stopping and restarting
          the server, follow the instructions for enabling automatic JSP reloading
          in the InfoCenter.
          
          Do not enable automatic JSP reloading in a production environment
          because performance will decrease.
          
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./includePortalTaglibs.jspf" %>

<c:set var="layoutNodeId" value="${wp.identification[requestScope['currentLayoutNode']]}"/>

<table class="layoutColumn ibmDndColumn component-container ${not empty layoutNodeId ? 'id-' : ''}${layoutNodeId}${not empty layoutNodeId ? ' layoutNode' : ''}" cellpadding="0" cellspacing="0" role="presentation">
	<portal-skin:layoutNodeLoop var="currentLayoutNode">
	<tr>
		<td style="width:100%;" valign="top">
			<portal-skin:layoutNodeRender/>
		</td>
	</tr>
	</portal-skin:layoutNodeLoop> 
</table>
