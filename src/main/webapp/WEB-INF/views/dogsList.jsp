<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome to Dog Breed Application!dd</title>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript">
	/* $(document).ready(function () {
	    $('#breedTypeId').on('change', function() {
	        //alert( $('option:selected', this).text() ); 
	       //alert( $(this).val() );
	    });
	}); */
	
	
	$(document).ready(function() {
	    $('#breedTypeId').on('change', function() {
	        this.form.submit();
	    });
	});
	
	function ajax_request(imgId) {
		//alert( imgId )
		//$('#upImage').html('<p><img class="loader" src="/loader.gif"></p>');
		//$('#upImage').load("voteForFavorite/"+imgId+"/1");
		var jqxhr = $.post( "voteForFavorite/"+imgId+"/1", function() {
			  alert( "success" );
			})
			  .done(function() {
			    alert( "second success" );
			  })
			  .fail(function() {
			    alert( "error" );
			  })
			  .always(function() {
			    alert( "finished" );
			  });
		}
	</script>
</head>
<body>
	<form action="getDogsByBreedType" method="Get">
  <h2>Welcome to Dog Breed Application!dd</h2>
  <p>
    Filter by Breed Category
    <select id = "breedTypeId" name="breedType">
    	<option value="#">Select Type</option>
	    <c:forEach var="breedType" items="${dogBreedType}">	
	        <option value = "${breedType}">${breedType}</option>
	    </c:forEach>
	</select>
	<p>
	List of All Dog Breeds
	<div>
	<c:forEach var="dogBreedObj" items="${dogBreedList}">
			<img src="images/${dogBreedObj.breedType}/${dogBreedObj.imageName}" title="${dogBreedObj.breedType}/${dogBreedObj.imageName}" alt="${dogBreedObj.breedType}/${dogBreedObj.imageName}" style="width:304px;height:228px;">
			<c:out value = "${dogBreedObj.favoriteCount}" />	
			<img onclick="ajax_request('${dogBreedObj.imageId}')" id="upImage" src="images/up.jpg" alt="Thumps Up" style="width:20px;height:30px;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<label id='upCount'> ${dogBreedObj.favoriteCount}</label><a href='voteForFavorite/${dogBreedObj.imageId}/-1'><img onclick="ajax_request()" src="images/down.jpg" alt="Thumps Down" style="width:20px;height:30px;"></a>
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
	</form>
    
</body>
</html>