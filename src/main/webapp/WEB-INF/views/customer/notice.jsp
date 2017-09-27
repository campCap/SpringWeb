<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main>
	메인sdsd
	<div>
		<c:forEach var="n" items="${list}]">
			${n.title}
		</c:forEach>
	</div>
</main>