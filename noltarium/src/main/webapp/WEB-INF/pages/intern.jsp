<%@ include file="defaultIncludes.jsp"%>
<body>

	<div data-role="page">
		<div data-role="navbar">
			<jsp:include page="navigation.jsp" />
		</div>
		<!-- /navbar -->

		<div data-role="header">
			<h1>Interne Seite</h1>
		</div>
		<div data-role="content">
			<sec:authorize access="hasRole('ROLE_USER')">

This content will only be visible to users who have
the "supervisor" authority in their list of <tt>GrantedAuthority</tt>s.

</sec:authorize>
		</div>
	</div>
</body>
</html>