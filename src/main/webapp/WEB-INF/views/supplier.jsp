<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2>Add Supplier</h2>
  <form:form method="POST" commandName="supplier" action="supplier/add">
  
   <div class="form-group">
    <label for="id"> ID:</label>
    <form:input type="text" class="form-control" id="sid" placeholder="Enter supplier id" path="sid"/>
       </div>
       
    <div class="form-group">
     <label for="name">NAME:</label>
     <form:input type="text" class="form-control" id="sname" placeholder="Enter supplier name" path="sname"/>
    </div> 
      
    <div class="form-group">
      <label for="phonenumber">PHONE-NUMBER:</label>
      <form:input type="text" class="form-control" id="sphonenumber" placeholder="Enter supplier phonenumber" path="sphonenumber"/>
    </div>
   
   <div class="form-group">
      <label for="address">ADDRESS:</label>
      <form:input type="text" class="form-control" id="saddress" placeholder="Enter supplier address" path="saddress"/>
    </div>
   
    <button type="submit" class="btn btn-default">Add SUPPLIER</button>
  </form:form>
</div>

<br>
<div class="container">
<c:if test="${!empty supplierList}">
	<table  class="table" align="center" bordercolor="#800080" BORDER=10>
			<tr bgcolor="#F0F8FF">
				<th style="color:black" width="125" bgcolor="#F0F8FF" align="center">SUPPLIER ID</th>
				<th style="color:black" width="125" align="center">SUPPLIER NAME</th>
				<th style="color:black" width="190" align="center">SUPPLIER PHONENUMBER</th>
				<th style="color:black" width="190" align="center">SUPPLIER ADDRESS</th>
				<th style="color:black" width="100" align="center">EDIT</th>
				<th style="color:black" width="100" align="center">DELETE</th>
			</tr>
					<c:forEach items="${supplierList}" var="supplier">
				<tr bgcolor="#FFFFFF">
					<td  style="color:#000000;font-size:120%" align="center">${supplier.sid}</td>
					<td  style="color:#000000;font-size:120%" align="center">${supplier.sname}</td>
					<td style="color:#000000;font-size:120%" align="center">${supplier.sphonenumber}</td>
					<td style="color:#000000;font-size:120%" align="center">${supplier.saddress}</td>
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='supplier/edit/${supplier.sid}' />"><button type="button" class="btn btn-warning">Edit</button></a></td>
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='supplier/remove/${supplier.sid}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
</body>
</html>