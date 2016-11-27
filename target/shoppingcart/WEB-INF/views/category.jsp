<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CATEGORY PAGE</title>
</head>
<body>
<div class="container">
  <h2>Add Category</h2>
  <form:form method="POST" commandName="category" action="category/add">
   <div class="form-group">
    <label for="id"> ID:</label>
    <form:input type="text" class="form-control" id="cid" placeholder="Enter category id " path="cid"/>
       </div>
    <div class="form-group">
     <label for="name">NAME:</label>
     <form:input type="text" class="form-control" id="cname" placeholder="Enter category name" path="cname"/>
    </div>   
    <div class="form-group">
      <label for="description">DESCRIPTION:</label>
      <form:input type="text" class="form-control" id="cdescription" placeholder="Enter category description" path="cdescription"/>
    </div>
   
    <button type="submit" class="btn btn-default">Add CATEGORY</button>
  </form:form>
</div>


<br>
<div class="container">
<c:if test="${!empty categoryList}">
	<table  class="table" align="center" bordercolor="#800080" BORDER=10>
			<tr bgcolor="#F0F8FF">
				<th style="color:black" width="125" bgcolor="#F0F8FF" align="center">CATEGORY ID</th>
				<th style="color:black" width="125" align="center">CATEGORY NAME</th>
				<th style="color:black" width="190" align="center">CATEGORY DESCRIPTION</th>
				<th style="color:black" width="100" align="center">EDIT</th>
				<th style="color:black" width="100" align="center">DELETE</th>
			</tr>
					<c:forEach items="${categoryList}" var="category">
				<tr bgcolor="#FFFFFF">
					<td  style="color:#000000;font-size:120%" align="center">${category.cid}</td>
					<td  style="color:#000000;font-size:120%" align="center">${category.cname}</td>
					<td style="color:#000000;font-size:120%" align="center">${category.cdescription}</td>
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='category/edit/${category.cid}' />"><button type="button" class="btn btn-warning">Edit</button></a></td>
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='category/remove/${category.cid}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
</body>
</html>