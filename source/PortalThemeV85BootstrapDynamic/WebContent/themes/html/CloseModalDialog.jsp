<%@ page session="false" buffer="none" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@ taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v8.5/resolver" prefix="portal-resolver" %> 
<html>
<head>
</head>
<body>
<script language="javascript">

	//serialize the current navigational state
	var navState=<portal-resolver:dataSource uri="state:current" escape="javascript"><portal-resolver:param name="mime-type" value="application/json"/></portal-resolver:dataSource>;

	// locate the iframe that launched the dialog and invoke the callback
	var frames=window.parent.document.getElementsByTagName("iframe"), i, frame, returnParams=navState.state.navigational.selection.parameters.param;
	for (i=frames.length-1; i >= 0; --i) {
		frame=frames[i];
		if ((frame.contentWindow.location == window.location) && frame.onCloseModalDialog) {
			frame.onCloseModalDialog(returnParams);
		}
	}
	
	// handle WCM-specific modal dialogs
	// (dialogs that were opened using the WCM dialogModal framework)
	if (window.parent.dialogModal) {
		window.parent.dialogModal.close("ok", returnParams);
	}
	
</script>
</body>
</html>