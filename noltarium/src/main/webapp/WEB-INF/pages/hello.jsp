<html>
<head>
<style type="text/css">
<%@include file="../css/style.css" %>
</style>
</head>
<body>
	<div id="navigation">
		<jsp:include page="navigation.jsp" />
	</div>
	<div id="content">

		<h1>Message : ${message}</h1>
		
		<jsp:include page="login.jsp" />
	</div>
</body>
</html>