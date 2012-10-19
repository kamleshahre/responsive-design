<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<h1>LOGIN</h1>

<form:form method="post" commandName="user" action="login.do">


	<fieldset>
		<form:errors element="div" path="loginName"  />
		<form:label path="loginName" element="div">First Name</form:label>
		<form:input path="loginName" element="div" />
	</fieldset>
	<fieldset>
		<form:errors element="div" path="password" />
		<form:label path="password" element="div">Password</form:label>
		<form:input path="password" element="div" />
	</fieldset>
	<input type="submit" value="Add Contact" />

</form:form>