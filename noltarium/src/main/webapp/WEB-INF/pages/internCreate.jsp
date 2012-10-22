<%@ include file="defaultIncludes.jsp"%>

<body>

	<div data-role="page">
		<div data-role="navbar">
			<jsp:include page="navigation.jsp" />
		</div>
		<!-- /navbar -->

		<div data-role="header">
			<h1>Create User</h1>
		</div>
		<div data-role="content"  >
			<form:form commandName="exampleObject" action="create/sendForm" method="POST">
				<fieldset>
					<form:errors path="firstname" />
					<form:label path="firstname">Vorname</form:label>
					<form:input path="firstname" />
				</fieldset>
				<fieldset>
					<form:errors path="lastname" />
					<form:label path="lastname">Nachname</form:label>
					<form:input path="lastname" />
				</fieldset>
				<fieldset>
					<form:errors path="comment" />
					<form:label path="comment">Kommentar</form:label>
					<form:input path="comment" />
				</fieldset>
				<input class="fromButton" name="submit" type="submit" value="submit" />
				<input class="fromButton" name="reset" type="reset" value="reset" />
			</form:form>
		</div>
	</div>
</body>
</html>