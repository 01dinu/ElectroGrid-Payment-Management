<%@page import="com.PaymentManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/PaymentManagement.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Payment Management</h1>

				<form id="formPaymentManagement" name="formPaymentManagement" method="post" action="PaymentManagement.jsp">


					Account No: <input id="accountno" name="accountno" type="text" maxlength="4" placeholder="Enter Account No:" maxlength="4" required="required"
						class="form-control form-control-sm"> 
						
						<br>Customer Name: <input id="cusname" name="cusname" type="text" placeholder="Enter Customer Name" required="required"
						class="form-control form-control-sm"> 
						
						
						<br> Date: <input id="paydate" name="paydate" type="date" required="required"
						class="form-control form-control-sm">
						
						<br> Total Amount: <input id="totalamount" name="totalamount" type="number" min="0.00" max="any" step="0.01" placeholder="Enter Total amount:" required="required" 
						class="form-control form-control-sm"> 
						
						 
						
						
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					PaymentManagement projectObj = new PaymentManagement();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
