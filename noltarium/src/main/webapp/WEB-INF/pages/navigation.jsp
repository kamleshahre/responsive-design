<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<div id="navigation">
	<ul>
		<li><a href="<c:url value="/welcome"/>">Wilkommen</a></li>
		<li><a href="<c:url value="/impressum"/>">Impressum</a></li>
	</ul>
	<sec:authorize access="isAuthenticated()">
		<ul>
			<li><a href="<c:url value="/intern/create"/>">Interner Link1 </a></li>
			<li><a href="<c:url value="/intern/table"/>">Tabellen Beispiel </a></li>
			<li><a href="<c:url value="/logout" />"> Logout</a></li>
		</ul>
	</sec:authorize>
</div>