<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome to Dog Breed Application!dd</title>
</head>
<body>
  <h2>Welcome to Dog Breed Application!dd</h2>
  <p>
    Filter by Breed Category
    <select id = "breedTypeId">
	    <c:forEach var="breedType" items="${dogBreedType}">	
	        <option value = "${breedType}">${breedType}</option>
	    </c:forEach>
	</select>
	<p>
	List of All Dog Breeds
	<div>
	<c:forEach var="dogBreedObj" items="${dogBreedList}">
			<img src="images/${dogBreedObj.breedType}/${dogBreedObj.imageName}" title="${dogBreedObj.breedType}/${dogBreedObj.imageName}" alt="${dogBreedObj.breedType}/${dogBreedObj.imageName}" style="width:304px;height:228px;">
			<br/><a href='rest/favoriteCount/${dogBreedObj.imageId}/1'><img src="images/up.jpg" alt="Thumps Up" style="width:20px;height:30px;"></a>
			<a href='rest/favoriteCount/${dogBreedObj.imageId}/-1'><img align='right' src="images/down.jpg" alt="Thumps Down" style="width:20px;height:30px;"></a>
	</c:forEach>
			
	</div>
	
	<%-- <table border='1'>
		<tr>
			
		<c:forEach var="dogBreedObj" items="${dogBreedList} ">
			<td>
				<table>
					<tr >
						<td><img src="images/${dogBreedObj.breedType}/${dogBreedObj.imageName}" title="${dogBreedObj.breedType}/${dogBreedObj.imageName}" alt="${dogBreedObj.breedType}/${dogBreedObj.imageName}" style="width:304px;height:228px;"></td>
					</tr>
					<tr>
						<td><a href='rest/favoriteCount/${dogBreedObj.imageId}/1'><img src="images/up.jpg" alt="Thumps Up" style="width:20px;height:30px;"></a>
						    <a href='rest/favoriteCount/${dogBreedObj.imageId}/-1'><img align='right' src="images/down.jpg" alt="Thumps Down" style="width:20px;height:30px;"></a>
						</td>
					</tr>
				</table>
			</td>
		</c:forEach>
		
		</tr>
	</table> --%>
	
    
</body>
</html>