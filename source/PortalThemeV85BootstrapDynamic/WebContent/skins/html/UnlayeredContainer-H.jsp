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

<table class="layoutRow ibmDndRow component-container ${not empty layoutNodeId ? 'id-' : ''}${layoutNodeId}${not empty layoutNodeId ? ' layoutNode' : ''}" cellpadding="0" cellspacing="0" role="presentation">
	<tr>
<%
    boolean hasChildren = false;
%>
        <portal-skin:layoutNodeLoop var="currentLayoutNode">
            <%
              hasChildren = true;
              String columnWidth = (String)currentLayoutNode.getMetrics().getValue(com.ibm.portal.content.CompositionMetrics.WIDTH);
            %>

		<td valign="top" <% if (columnWidth != null){
								out.print ("width=\"");
								out.print (columnWidth);
								out.print ("\"");
							} %>>
            <portal-skin:layoutNodeRender/>
		</td>

        </portal-skin:layoutNodeLoop>
        <%                                                                                                                        
        if (!hasChildren) {%>
            <td width="100%">&nbsp;</td>
        <%}%>
	</tr>
</table>