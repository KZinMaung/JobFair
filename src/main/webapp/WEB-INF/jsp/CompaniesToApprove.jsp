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
 <div class="w3-row-padding" >
    <div class="w3-center w3-padding-64">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Total Company Members</span>
    </div>
    <p style="bgcolor:white">
    <c:if test="${not empty companiesToApprove}">
			<c:forEach var="c" items="${companiesToApprove}">
    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4">
        <img src="../${c.comPhoto}"  style="width:100%">
        <div class="w3-container">
          <h3>${c.comName}</h3>
             <p class="w3-opacity"><i class="fa fa-envelope" aria-hidden="true"></i>
             ${c.comEmail}</p>
            <p class="w3-opacity"><i class="fa fa-phone" aria-hidden="true"></i>
             ${c.comPhno}</p>
          <p class="w3-opacity"><i class="fa fa-address-card" aria-hidden="true"></i>
          ${c.comAddress}</p>
           <p class="w3-opacity"><i class="fa fa-globe" aria-hidden="true"></i>
            ${c.comWebsite}</p>
           <center>
             <form action="approveCompany/${c.comId}" method="get">
              <button class="button button4" type="submit" name="${c.comId}" value="${c.comId}">Approve</button>
              </form>
           </center>
        </div>
      </div>
    </div>
</c:forEach>

		</c:if>
    </p>
  </div>
  
       
       

    
  

</body>
</html>