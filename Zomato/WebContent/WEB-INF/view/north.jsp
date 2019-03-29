<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.header {
	font-style: oblique;
	margin-bottom: 20px;
	margin-top: -6px;
	padding: 2px;
	text-align: center;
	background: -webkit-linear-gradient(top, #7579ff, #b224ef);
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 357px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.column {
	float: left;
	width: 100%;
	padding: 0 5px;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	padding: 16px;
	text-align: center;
	background-color: #44444426;
	color: white;
}

.button {
	border: none;
	outline: 0;
	padding: 1px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 43%;
	font-size: 18px;
}

.cart-clear {
	clear: both;
}

.cart {
	float: left;
}
.buttonheader-style{
    float: left;
    margin-top: initial;
    border-radius: 8px;
    background: -webkit-linear-gradient(top, #FF0000, #FFA500);
        font-style: italic;
}
</style>


</head>
<body
	style="background-image: url(http://blog.hostbaby.com/wp-content/uploads/2013/07/scuffedstatic_red_1920x1234.jpg)">



	<div class="header">
	    <input type="button" class="buttonheader-style" value="Back" onclick="location.href='welcome'"/>
		<h2>People who love to eat are always the best.</h2>
	</div>

	<h2 style="color: wheat;">MENU:</h2>
	<div class="column">
		<c:forEach var="x" items="${listValues}">
			<div class="cart" style="margin-right: 78px">


				<h2 style="color:wheat">
					${x.id}.
					<c:out value="${x.name}" />
				</h2>
				<br>
				<div class="card" style="height: 255px">
					<div>
						<img src="<c:url value="/resources/images/assets/${x.image}"/>"
							style="max-width: 100%; height: 222px; width: 85%;" />


						<p style="float: left;">
							Price :
							<c:out value="${x.price}" />
						</p>
						<p style="float: right;">
							Ratings:
							<c:out value="${x.rating}" />
						</p>


					</div>
				</div>
				<form action="north1" method="get" modelAttribute="cartdata"
					name="mycart">
					<div class="button">
						<p style="font-style: oblique">

							<input type="hidden" value="${x.id}" name="dishid"> <input
								type="hidden" value="${x.name}" name="dishname"> <input
								type="hidden" value="${x.price}" name="dishprice"> <input
								type="hidden" value="${x.image}" name="dishimage"> <input
								type="submit" value="Add to Cart">
						</p>
					</div>
				</form>


			</div>
		</c:forEach>
		<div class="cart-clear"></div>
	</div>




</body>
</html>