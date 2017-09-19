<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
  <title>Welcome!</title>
</head>
<body>
  <h1>Welcome to Dog Breed Application!</h1>
  <p>
    Filter by Breed Category
    <select id = "breedTypeId">
	    <c:forEach var="breedType" items="${it.dogBreedType}">	
	        <option value = "${breedType}">${breedType}</option>
	    </c:forEach>
	</select>
	<p>
	List of All Dog Breeds
	<table>
		<c:forEach var="dogBreedObj" items="${it.dogBreedList}">
			<tr>
				<td><img src="images/${dogBreedObj.breedType}/${dogBreedObj.imageName}" title="${dogBreedObj.breedType}/${dogBreedObj.imageName}" alt="${dogBreedObj.breedType}/${dogBreedObj.imageName}" style="width:304px;height:228px;"></td>
			</tr>
			<tr>
				<td><a href='rest/favoriteCount/${dogBreedObj.imageId}/1'><img src="images/up.jpg" alt="Thumps Up" style="width:20px;height:30px;"></a>
				    <a href='rest/favoriteCount/${dogBreedObj.imageId}/-1'><img align='right' src="images/down.jpg" alt="Thumps Down" style="width:20px;height:30px;"></a>
				</td>
			</tr>
		</c:forEach>
	</table>
    
</body>
</html>