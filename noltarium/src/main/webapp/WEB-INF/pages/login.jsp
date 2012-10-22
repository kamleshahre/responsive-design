<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>LOGIN</h1>

sd

	<c:if test="${not empty error}">
		<div class="errorblock">
			Your login attempt was not successful, try again.<br /> Caused :
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>
 
<form name='f' action="<c:url value='j_spring_security_check' />"
	method='POST'>

	<table>
		<tr>
			<td>User:</td>
			<td><input type='text' name='j_username' value='admin'></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type='password' name='j_password' value="admin" /></td>
		</tr>
		<tr>
			<td colspan='2'><input name="submit" type="submit"
				value="submit" /></td>
		</tr>
		<tr>
			<td colspan='2'><input name="reset" type="reset" /></td>
		</tr>
	</table>

</form>