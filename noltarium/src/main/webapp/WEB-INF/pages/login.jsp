<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> --%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> --%>

<h1>LOGIN</h1>

<form:form method="post" commandName="user" action="login.do">


	<fieldset>
		<form:label path="loginName">First Name</form:label>
		<form:input path="loginName" />
	</fieldset>
	<fieldset>
		<form:label path="password">Password</form:label>
		<form:input path="password" />
	</fieldset>
	<input type="submit" value="Add Contact" />

</form:form>