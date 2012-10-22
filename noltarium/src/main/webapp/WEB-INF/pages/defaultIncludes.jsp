<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/defaultStyle.css"/>" />

<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/jquery.dataTables.css"/>" /> --%>


<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->


<!-- mobile table view -->
<!-- TODO: Austauschen durch css  -->
<!-- <script src="https://raw.github.com/frequent/tableview/master/tableview.filter.js"  type="text/javascript"></script> -->
<!-- <script src="https://raw.github.com/frequent/tableview/master/tableview.js"  type="text/javascript"></script> -->
<!-- <link rel="stylesheet" href="https://raw.github.com/frequent/tableview/master/jquery.mobile.tableview.css"  /> -->

<!-- Jquery Mobile -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" /> -->
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<!-- <script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script> -->


<!--  JQuery Allgemein -->
<!-- <script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js" type="text/javascript"></script> -->
<!-- <script src="http://code.jquery.com/jquery-1.8.2.min.js"  type="text/javascript"></script> -->
<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" /> -->
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/desktopStyle.css"/>" /> --%>

<%-- <script src="<c:url value="/resources/js/jquery.dataTables.js"/>" type="text/javascript"> --%>

<script type="text/javascript">
	
	
	var isMobile = {
		Android : function() {
			return navigator.userAgent.match(/Android/i);
		},
		BlackBerry : function() {
			return navigator.userAgent.match(/BlackBerry/i);
		},
		iOS : function() {
			return navigator.userAgent.match(/iPhone|iPad|iPod/i);
		},
		Opera : function() {
			return navigator.userAgent.match(/Opera Mini/i);
		},
		Windows : function() {
			return navigator.userAgent.match(/IEMobile/i);
		},
		any : function() {
			return (isMobile.Android() || isMobile.BlackBerry()
					|| isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
		}
	};
	

	
	$(document).ready(function() {
		if( isMobile.any() ) {
			loadjscssfile("http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js", "js") //dynamically load and add this .js file
			loadjscssfile("http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css", "css") ////dynamically load and add this .css file
		}else{
			loadjscssfile("http://code.jquery.com/ui/1.9.0/jquery-ui.js", "js") //dynamically load and add this .js file
			loadjscssfile("http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css", "css") ////dynamically load and add this .css file
			loadjscssfile('<c:url value="/resources/css/desktopStyle.css"/>', "css") ////dynamically load and add this .css file
		}
	});
	
	function loadjscssfile(filename, filetype){
		 if (filetype=="js"){ //if filename is a external JavaScript file
		  var fileref=document.createElement('script')
		  fileref.setAttribute("type","text/javascript")
		  fileref.setAttribute("src", filename)
		 }
		 else if (filetype=="css"){ //if filename is an external CSS file
		  var fileref=document.createElement("link")
		  fileref.setAttribute("rel", "stylesheet")
		  fileref.setAttribute("type", "text/css")
		  fileref.setAttribute("href", filename)
		 }
		 if (typeof fileref!="undefined")
		  document.getElementsByTagName("head")[0].appendChild(fileref)
		}

		
</script>

</head>