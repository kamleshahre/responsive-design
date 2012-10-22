<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
<style type="text/css">
<%@ include file="../css/style.css" %>
</style>
</head>
<body>
	<div id="navigation">
		<jsp:include page="navigation.jsp" />
	</div>
	<div id="content">

		<h1>Wilkommen : ${message}</h1>
		neuer text
		<jsp:include page="login.jsp" />
		
					<sec:authorize access="hasRole('ROLE_USER')">

This content will only be visible to users who have
the "supervisor" authority in their list of <tt>GrantedAuthority</tt>s.

</sec:authorize>
	</div>
</body>
</html>