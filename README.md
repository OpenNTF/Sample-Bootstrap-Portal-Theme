# Bootstrap meets Portal #

### Abstract ###
Do you want to use a 3rd party responsive framework like Twitter Boostrap with WebSphere Portal? Then this tutorial is for you!
We will walk you through the step on how to integrate Twitter Bootstrap with WebSphere Portal and provide the different artefacts that are required.

**Notes**

1. The code artefacts are provided as sample files and should not be used unchanged in a production environment.

2. The tutorial assumes that you have a basic knowledge of WebSphere Portal themes and the module concept.

3. The tutorial will explain all the required steps to modify your existing theme but we also provide you with [a PAA file in chapter 4](#4-deployment-of-the-static-and-dynamic-resources) that will get you started within minutes.

### The process ###
The initially setup requires a couple of steps but once you have everything together you are good to go within minutes for future projects.

1. Add the Boostrap resources to your Portal Theme
2. Modify the navigation.jsp to match the Bootstrap markup
3. Clean up the index_*.html files and link the navigation file
4. Deploy the dynamic and static files.
5. Get started with your customizations!


### (1) Adding the Bootstrap resources to your Portal Theme ###
In this sample we will create only one module to contain all of the resources. In a more sophisticated version you may want to split up the bootstrap resources into multiple modules to have more control over the size of the CSS and JS files that are being downloaded.

The following definition will create a module called **bootstrap**

```json
    {
        "modules": [
            {
                "id":"bootstrap",
                "contributions": [
                    {
                        "type":"config",
                        "sub-contributions": [
                            {
                                "type":"js",
                                "uris": [
                                    {
                                        "value":"/bootstrap-3.2.0-dist/js/jquery.1.11.1.min.js"
                                    }
                                ]
                            },
                            {
                                "type":"js",
                                "uris": [
                                    {
                                        "value":"/bootstrap-3.2.0-dist/js/bootstrap.min.js"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "type":"head",
                        "sub-contributions": [
                            {
                                "type":"css",
                                "uris": [
                                    {
                                        "value":"/bootstrap-3.2.0-dist/css/bootstrap.min.css"
                                    }
                                ]
                            }
                        ]
                    }
                ],
                "titles": [
                    {
                        "value":"Boostrap Module",
                        "lang":"en"
                    }
                ]
            }
        ]
    }
```


### (2) Implementing the Bootstrap navigation with WebSphere Portal ###
The only real change you need to apply to the Portal theme when working with Bootstrap is related to the navigation. The following markup creates a the first level navigation markup:

```html
    <ul class="nav navbar-nav">
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
    </ul>
```

The nip here is the reference to
```jsp
    <jsp:include page="navigationBootstrapSubMenu.jsp" />
```
which will render the subnavigation

```jsp
    <c:set var="selectedNodeID" value="${wp.identification[wp.selectionModel.selected]}" />

    <c:forEach var="node" items="${wp.navigationModel.children[parentNode]}">
        <c:if test="${!node.metadata['com.ibm.portal.Hidden']}">
            <c:set var="nodeID" value="${wp.identification[node]}"/>
            <li>
                <a class="<c:if test="${selectedNodeID == nodeID}">active</c:if>" href="?uri=nm:oid:${nodeID}"><c:out value="${node.title}"/></a>
            </li>
        </c:if>
    </c:forEach>
```

These two files have to be part of the dynamic resources.

### (3) Creating a simple and clean index_*.html file ###
The following index_*.html contains the minimum markup that is required to load a Portal page with portlets.

```html
    <!DOCTYPE html>
    <html lang="en" >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1">
        <link rel="dynamic-content" href="co:head">
        <link rel="dynamic-content" href="res:/PortalThemeV85BootstrapDynamic/themes/html/dynamicSpots/head.jsp">
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="locale_en">

        <a rel="dynamic-content" href="res:/PortalThemeV85BootstrapDynamic/themes/html/dynamicSpots/adminBar.jsp"></a>

        <a rel="dynamic-content" href="res:/PortalThemeV85BootstrapDynamic/themes/html/dynamicSpots/navigationBootstrap.jsp?startLevel=1">


        <div class="container">
            <div class="wpthemeMainContent">
                <a rel="dynamic-content" href="state.portlet:portlet?include=windowState&include=portletMode&mime-type=text/html"></a>
                <div id="layoutContainers" class="wpthemeLayoutContainers wpthemeLayoutContainersHidden" >
                    <a rel="dynamic-content" href="lm:template"></a>
                </div>
            </div>
        </div>

        <div id="wpthemeComplementaryContent">
            <a rel="dynamic-content" href="co:config"></a>
        </div>

    </body>
    </html>
```
The dynamic content spot links to the Bootstrap navigation JSP that we created earlier. With these three steps you have a basic Bootstrap theme up and running.

### (4) Deployment of the static and dynamic resources ###
The dynamic resources need to be deployed to the Application Server. This should be a one time deployment and hopefully no further changes to any of the JSP files are required.

All the remaining work will be done with the static resources that are stored in WebDAV.

When working with the static files we recommend using the [IBM Digital Experience File Sync](https://github.com/digexp/dxsync) where you can change the files on your harddisk and they will be uploaded automatically.


The following PAA file will install the EAR file PortalThemeV85Bootstrap.ear on the server and also deploy a new theme called "bootstrap.theme" to the server. Follow these steps to install the theme:

1. Install the PAA with: ./ConfigEngine.sh install-paa -DPAALocation=binary/BoostrapTheme.paa -DWasPassword=password -DPortalAdminPwd=password
2. Deploy the PAA with: ./ConfigEngine.sh deploy-paa -DappName=BootstrapTheme -DWasPassword=password -DPortalAdminPwd=password
3. Go to the following page to see the new theme in action. http://yourPortalServer:port/wps/portal?uri=nm:oid:com.ibm.bootstrap.theme.testpage
4. The page should render okay and look [like the following screen](BasicBootstrapThemeAfterInitialInstallation.png).

### (5) Get started with your customizations!  ####
Now that we have the basic framework in place its time to get started and add some real Bootstrap markup. We will use the example "[Justified nav](http://getbootstrap.com/examples/justified-nav/#)" for this tutorial.

To apply the "Justified nav" styles we first need to download the CSS and JS resources. Since this is not a very sophisticated page there is only [one CSS](http://getbootstrap.com/examples/justified-nav/justified-nav.css) required. After downloading it we need to add it to a custom module. Making things easy we will leverage the "simple module" feature. In your static theme files create a subfolder

  modules/custom_module/head

Copy the CSS file in that folder. Now after reloading the page you can see that the justified-nav.css is being loaded. (We previously already added the "custom module" for you to the profile_deferred_bootstrap.json profile.)

Now add
```html
  <div class="container">
```
just below the body tag and close it just before the body tag again.

As the second HTML artefact select in e.g. Firebug the div with the class "masthead" containing the following markup

```html
    <div class="masthead">
      <h3 class="text-muted">Project name</h3>
      <nav>
        <ul class="nav nav-justified">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#">Projects</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">Downloads</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </nav>
    </div>
```

Copy this to your theme_en.html file and replace the "li" elements with the dynamic content spot:

  <a rel="dynamic-content" href="res:/PortalThemeV85BootstrapDynamic/themes/html/dynamicSpots/navigationBootstrap.jsp?startLevel=1">

This should result in the following markup:

```html
  <!DOCTYPE html>
  <html lang="en">
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1">
  	<link rel="dynamic-content" href="co:head">
  	<link rel="dynamic-content" href="res:/PortalThemeV85BootstrapDynamic/themes/html/dynamicSpots/head.jsp">
      <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
  </head>
  <body class="locale_en">

  	<a rel="dynamic-content" href="res:/PortalThemeV85BootstrapDynamic/themes/html/dynamicSpots/adminBar.jsp"></a>

  	<div class="container">
  		<div class="masthead">
          <h3 class="text-muted">Project name</h3>
          <nav>
            <ul class="nav nav-justified">
  						<a rel="dynamic-content" href="res:/PortalThemeV85BootstrapDynamic/themes/html/dynamicSpots/navigationBootstrap.jsp?startLevel=1">
            </ul>
          </nav>
        </div>


  	<div class="container">
  		<div class="wpthemeMainContent">
  	        <a rel="dynamic-content" href="state.portlet:portlet?include=windowState&include=portletMode&mime-type=text/html"></a>
  	        <div id="layoutContainers" class="wpthemeLayoutContainers wpthemeLayoutContainersHidden" >
  	            <a rel="dynamic-content" href="lm:template"></a>
  	        </div>
  	    </div>
  	</div>

  	<div id="wpthemeComplementaryContent">
  		<a rel="dynamic-content" href="co:config"></a>
  	</div>
  </div>

  </body>
  </html>
```

Next we need to create a layout to let Portal now what the page structure is like. If you look at the Bootstrap page it has the following structure:

```html
  <div class="jumbotron">...</div>
  <div class="row">
    <div class="col-lg-4">...</div>
    <div class="col-lg-4">...</div>
    <div class="col-lg-4">...</div>
    ...
  </div>
```

To create the layout follow the steps below:
- Create a folder /layout-templates/Boostrap-justified-nav
- Create a file within that folder called layout.html
- Past the markup from above into that file.
- Add the WebSphere Portal specific classes to the file so that Portal recognizes it as a layout.

This should get you the following result:

```html
  <div class="component-container  wpthemeCol  ibmDndColumn" name="ibmMainContainer"></div>
  <div class="row">
  	<div class="col-lg-4 component-container  wpthemeCol  ibmDndColumn" name="leftContainer"></div>
  	<div class="col-lg-4 component-container  wpthemeCol  ibmDndColumn" name="centerContainer"></div>
  	<div class="col-lg-4 component-container  wpthemeCol  ibmDndColumn" name="rightContainer"></div>
  </div>
```
  Now we need to register the new layout with Portal. To do that add the following json entry
    ,{'label':'Boostrap-justified-nav','url':ibmCfg.themeConfig.themeWebDAVBaseURI+'layout-templates/Boostrap-justified-nav/','id':'Boostrap-justified-nav','thumbnail':ibmCfg.themeConfig.themeRootURI+'/layout-templates/Boostrap-justified-nav/icon.png','help':''}

  to the end of the

    system/layouts.json

  file. You also want to create the icon.png or copy one of the existing ones.

  Now go to your Portal page and select the new layout. Next search for the "Script Portlet" and place four instances in the suitable containers. Edit the first Script Portlet and paste the following markup:

```html
      <div class="jumbotron">
        <h1>Marketing stuff!</h1>
        <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet.</p>
        <p><a role="button" href="#" class="btn btn-lg btn-success">Get started today</a></p>
      </div>
```

  After saving it should display exactly in the way it did on the Boostrap sample page. Next proceed the same way with the other three portlets. For the first one the markup would be the following:

```html
    <h2>Safari bug warning!</h2>
    <p class="text-danger">As of v8.0, Safari exhibits a bug in which resizing your browser horizontally causes rendering errors in the justified nav that are cleared upon refreshing.</p>
    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
    <p>
```

Continue with copying the markup of the second and the third column and now you should have a complete Portal page that features the Bootstrap elements.

### (6) Summary ###
In this tutorial we showed how seamlessly Portal and Boostrap work together. With this quickstart you can leverage "any" Bootstrap component and use it within WebSphere Portal.


## OPENNTF ##

This project is an OpenNTF project, and is available under the Apache Licence V2.0. All other aspects of the project, including contributions, defect reports, discussions, feature requests and reviews are subject to the OpenNTF Terms of Use - available at [http://openntf.org/Internal/home.nsf/dx/Terms_of_Use](http://openntf.org/Internal/home.nsf/dx/Terms_of_Use).
