<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../includePortalTaglibs.jspf" %>

<c:set var="privileged_user" value="<%= com.ibm.portal.ac.data.RoleType.PRIVILEGED_USER %>" />
<c:set var="editor" value="<%= com.ibm.portal.ac.data.RoleType.EDITOR %>" />
<c:set var="admin" value="<%= com.ibm.portal.ac.data.RoleType.ADMIN %>" />

<c:if test="${wp.ac[wp.selectionModel.selected.contentNode].hasPermission[admin] || wp.ac[wp.selectionModel.selected].hasPermission[editor] || wp.ac[wp.selectionModel.selected].hasPermission[privileged_user]}">

	<r:dataSource uri="dyn-cs:id:85theme_toolbar" escape="none"/> 
	

</c:if>
