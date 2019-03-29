<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
.header {
	font-style: oblique;
	margin-bottom: 20px;
	margin-top: -6px;
	padding: 2px;
	text-align: center;
	background: -webkit-linear-gradient(top, #7579ff, #b224ef);
}

.button-style {
	background: -webkit-linear-gradient(top, #7579ff, #b224ef);
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	border-radius: 8px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
}

.button-style:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

.buttonheader-style {
	float: left;
	margin-top: -58px;
	border-radius: 8px;
	background: -webkit-linear-gradient(top, #FF0000, #FFA500);
}
S
</style>
</head>

<body
	style="background-image: url(http://blog.hostbaby.com/wp-content/uploads/2013/07/scuffedstatic_red_1920x1234.jpg)">

	<div class="header">
		<h2>Food Cart</h2>
		<input type="button" class="buttonheader-style" value="Back"
			onclick="location.href='welcome'" />
	</div>

	<span style="color: wheat; font-size: 33px;">Your orders:</span>
	<span style="color: wheat; font-size: 31px;">${fn:length(list)}</span>


	<div class="column">
		<c:forEach var="y" items="${list}" varStatus="status">
			<div class="cart"
				style="margin-right: 78px height: 224px; width: 297px;">

				<h2 style="color: wheat">
					<c:out value="${y.dishname}" />
				</h2>
				<br>
				<h2 Style="margin-top: -23px; color: white">
					Price :
					<div class="Total${status.count}" style="margin-top: -33px; margin-left: 97px;">
						<c:out value="${y.dishprice}" />
						<input type="hidden" id="cost${status.count}" value="${y.dishprice}"/>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-lg-2"
								style="margin-left: 171px; margin-top: -34px;">
								<div class="input-group">

									<span class="input-group-btn">
										<button type="button" id="${status.count}"
											class="quantity-left-minus${status.count} btn btn-danger btn-number"
											data-type="minus" data-field="" onclick="decreaseCount(this)" >
											<span class="glyphicon glyphicon-minus"></span>
										</button>
									</span> 
									<input type="text" id="quantity${status.count}"
										name="quantity" class="form-control input-number" value="1"
										min="1" max="100"> <span class="input-group-btn">
										
										
										
										<button type="button" id="${status.count}"
											class="quantity-right-plus${status.count} btn btn-success btn-number"
											data-type="plus" data-field="" onclick="increaseCount(this)">
											<span class="glyphicon glyphicon-plus"></span>
										</button>
									</span>
								</div>
							</div>
						</div>
					</div>


				</h2>

				<div class="card" style="height: 223px">
					<div>
						<img
							src="<c:url value="/resources/images/assets/${y.dishimage}"/>"
							style="max-width: 100%; height: 222px; width: 100%;" />

					</div>
					<c:url var="deleteLink" value="/delete">
						<c:param name="Username" value="${y.username}" />
						<c:param name="itemId" value="${y.id}" />
					</c:url>
					<a href="${deleteLink}"
						onclick="if(!(confirm('Are you sure you want to delete the item?'))) return false"
						class="glyphicon glyphicon-trash" class="w3-xxlarge"></a>

				</div>
			</div>
		</c:forEach>
	</div>
	<c:if test="${fn:length(list) gt 0}">
		<button class="button-style" onclick="confirmAlert()"
			style="margin-top: 24px">Place order</button>
		<br>
		<span><b style="color: wheat; font-size: 34px">Amount:&nbsp</b></span>
		<span id="total-amount"
			style="margin-top: 24px; color: wheat; font-size: 34px"></span>
	</c:if>
	<script>
		$(document).ready(function() {

			var quantity = 0;
			$('.quantity-right-plus*').click(function(e) {

				e.preventDefault();
				var quantity = parseInt($('#quantity').val());

				$('#quantity').val(quantity + 1);
				
				
			});
			
			
				
			$('.quantity-left-minus').click(function(e) {

				e.preventDefault();
			
				var quantity = parseInt($('#quantity').val());

				if (quantity > 0) {
					$('#quantity').val(quantity - 1);
				}
				
			});

		});

		function increaseCount(variable) {
			
			var index = variable.id;
			console.log("Index: "+index);
			
			var count = parseInt($('#quantity' + index).val());
			$('#quantity' + index).val(count + 1);
			
			var cost=parseInt($('#cost'+index).val());
				console.log("Cost"+cost);
			
			var numberOfItems = parseInt($('#quantity' + index).val());
			console.log("Number of Items: "+numberOfItems);
			
			
			var totalPrice = cost * numberOfItems;
			
			console.log("Total Price: "+totalPrice);
			
			$('.Total'+index).text(totalPrice);
			
			
			

		}

		function decreaseCount(variable) {

			var index = variable.id;
			var count = parseInt($('#quantity' + index).val());

			$('#quantity' + index).val(count - 1);

		}

		var id = document.getElementsByClassName("Total");
		var total = 0;

		for (i = 0; i < id.length; i++) {
			total += parseInt(id[i].innerHTML);
		}

		document.getElementById("total-amount").innerHTML = total;

		function confirmAlert() {
			alert("Your order is successfully placed.");
			window.location = "deleteall";
		}
	</script>





</body>
</html>