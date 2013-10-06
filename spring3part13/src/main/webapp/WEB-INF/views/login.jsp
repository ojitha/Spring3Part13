<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:url value="/login" var="loginUrl"/>
<form action="${loginUrl}" method="post">
	<c:if test="${param.error != null}">
		<div>
		Failed to login.
		<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
			Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
		</c:if>
		</div>
	</c:if>
	<c:if test="${param.logout != null }">
		<div>
			You have been logged out.
		</div>
	</c:if>
	<LABEL for="username">User name</LABEL>
	<INPUT type="text" id="username" name="username"/>
	<LABEL for="password"></LABEL>
	<INPUT type="password" id="password" name="password"/>
	<DIV>
		<INPUT  id="submit" name="submit" type="submit" value="Login"/>
	</DIV>
</form>