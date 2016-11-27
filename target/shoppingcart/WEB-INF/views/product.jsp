<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT PAGE</title>
</head>
<body>
<div class="container">
  <h2>Add Product</h2>
  <form:form method="POST" commandName="product" action="product/add">
  <div class="form-group">
    <label for="id"> ID:</label>
    <form:input type="text" class="form-control" id="pid" placeholder="Enter product id" path="pid"/>
       </div>
       
    <div class="form-group">
     <label for="name">NAME:</label>
     <form:input type="text" class="form-control" id="pname" placeholder="Enter product name" path="pname"/>
    </div>  
     
      <div class="form-group">
     <label for="price">PRICE:</label>
     <form:input type="text" class="form-control" id="pprice" placeholder="Enter product price" path="pprice"/>
    </div>  
     
    <div class="form-group">
      <label for="description">DESCRIPTION:</label>
      <form:input type="text" class="form-control" id="pdescription" placeholder="Enter product description" path="pdescription"/>
    </div>
   
    <button type="submit" class="btn btn-default">Add PRODUCT</button>
  </form:form>
</div>

<br>
<div class="container">
<c:if test="${!empty productList}">
	<table  class="table" align="center" bordercolor="#800080" BORDER=10>
			<tr bgcolor="#F0F8FF">
				<th style="color:black" width="125" bgcolor="#F0F8FF" align="center">PRODUCT ID</th>
				<th style="color:black" width="125" align="center">PRODUCT NAME</th>
				<th style="color:black" width="125" align="center">PRODUCT PRICE</th>
				<th style="color:black" width="190" align="center">PRODUCT DESCRIPTION</th>
				<th style="color:black" width="100" align="center">EDIT</th>
				<th style="color:black" width="100" align="center">DELETE</th>
			</tr>
					<c:forEach items="${productList}" var="product">
				<tr bgcolor="#FFFFFF">
					<td  style="color:#000000;font-size:120%" align="center">${product.pid}</td>
					<td  style="color:#000000;font-size:120%" align="center">${product.pname}</td>
					<td  style="color:#000000;font-size:120%" align="center">${product.pprice}</td>
					<td style="color:#000000;font-size:120%" align="center">${product.pdescription}</td>
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/edit/${product.pid}' />"><button type="button" class="btn btn-warning">Edit</button></a></td>
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/remove/${product.pid}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>

</body>
</html>