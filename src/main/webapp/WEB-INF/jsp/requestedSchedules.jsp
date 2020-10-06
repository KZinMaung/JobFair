<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<c:if test="${not empty requestedSchedules}">
			<c:forEach var="requestedSchedule" items="${requestedSchedules}">
		

 ${requestedSchedule.comName};
${requestedSchedule.sdate_time};
${requestedSchedule.location};
${requestedSchedule.event};
${requestedSchedule.status};

			<br>
			<form action="approveSchedule/${requestedSchedule.scheduleId}" method="get">
              <button class="button button4" type="submit" name="${c.scheduleId}" value="${c.scheduleId}">Approve</button>
              </form>
			</c:forEach>
     
		</c:if>
<c:if test="${empty events}">
</c:if>

</body>
</html>