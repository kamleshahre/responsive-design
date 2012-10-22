<%@ include file="defaultIncludes.jsp"%>
<body>

	<div data-role="page">
		<div data-role="navbar">
			<jsp:include page="navigation.jsp" />
		</div>
		<!-- /navbar -->

		<div data-role="header">
			<h1>Willkommen</h1>
		</div>
		<div data-role="content">
			<p>willkommens seite</p>

			<sec:authorize access="isAnonymous()">
				<jsp:include page="login.jsp" />
			</sec:authorize>
		</div>

	</div>
	<!-- 	<script> -->
	<!-- 	 $(function() { // $(".fromButton").button(); // }); -->
	<!-- 	</script> -->
</body>
