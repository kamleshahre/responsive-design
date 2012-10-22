<%@ include file="defaultIncludes.jsp" %>
<body>
	<div id="navigation">
		<jsp:include page="navigation.jsp" />
	</div>
	<div id="content">

		<h1>Wilkommen : ${message}</h1>
		neuer text
		<sec:authorize access="isAnonymous()">
		<jsp:include page="login.jsp" />
		</sec:authorize>
					<sec:authorize access="hasRole('ROLE_USER')">

This content will only be visible to users who have
the "supervisor" authority in their list of <tt>GrantedAuthority</tt>s.

</sec:authorize>
	</div>
</body>
