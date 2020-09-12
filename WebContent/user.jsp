<%@page import="controller.UserServlet"%>
<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

<title>Dashboard Template for Bootstrap</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.0/examples/dashboard/">

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<script src="https://kit.fontawesome.com/2919dc28e0.js"
	crossorigin="anonymous"></script>
<!-- Custom styles for this template -->
<link href="css/dashboard.css" rel="stylesheet">
</head>

<style>
#custom-button {
	text-align: center;
}

tr:hover {
	background-color: yellow;
	cursor: pointer;
}
</style>


<%
UserServlet u=new UserServlet();
ArrayList<User> users=u.getAll();
%>

<body>
	<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
		<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Covid-19
			System</a> <input class="form-control form-control-dark w-100"
			type="text" placeholder="Search" aria-label="Search">
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap"><a class="nav-link" href="#">Log
					out</a></li>
		</ul>
	</nav>



	<div class="container-fluid">
		<div class="row">
			<nav class="col-md-2 d-none d-md-block bg-light sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link" href="dashboard.jsp">
								<span data-feather="home"></span> Home
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file"></span> Global Information
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="shopping-cart"></span> hospitals
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="users"></span> Quarantined Centers
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="#">
								<span data-feather="bar-chart-2"></span> Users<span
								class="sr-only">(current)</span>
						</a></li>
				</div>
			</nav>

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
			<div
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
				<h1 class="h2">Manage Users</h1>
				<div class="btn-toolbar mb-2 mb-md-0">
					<button type="button" id="btnAddNew" class="btn btn-success" onclick="addNew()">+ Add User</button>

				</div>
			</div>

			<div class="card">
				<div class="card-body">

					<form action="user" method="post">
						<div class="row">
							<div class="form-group col-md-4">
								<label for="">Name</label> <input type="text"
									class="form-control" id="nm" placeholder="Sula Dissanayake">
							</div>


							<div class="form-group col-md-4"">
								<label for="">Contact No</label> <input type="text"
									class="form-control" id="con" placeholder="0332227447">
							</div>

							<div class="form-group col-md-4"">
								<label for="">Email</label> <input type="text"
									class="form-control" id="emai" placeholder="sulakkanaid@gmail.com">
							</div>

						</div>

						<div class="row">
							<div class="form-group col-md-4">
								<label for="">User Name</label> <input type="text"
									class="form-control" id="unm" placeholder="Sula">
							</div>


							<div class="form-group col-md-4"">
								<label for="">password</label> <input type="password"
									class="form-control" id="pwd" placeholder="">
							</div>

							<div class="form-group col-md-4"">
								<label for="">User Role</label> <select class="form-control"
									id="role" name="role" onchange="selectRole()">
									<option id="roleop"></option>
									<option>Admin</option>
									<option>PSTF</option>
									<option>Hospital-IT</option>
									<option>Quarantined-IT</option>
								</select>
							</div>

						</div>

						<div class="row">
							<div class="form-group col-md-3"></div>


							<div class="form-group col-md-6">
								<label for=""></label> <select class="form-control" id="wplace"
									style="visibility: hidden" name="wplace" id="wplace">
									<option></option>

								</select>
							</div>

							<div class="form-group col-md-3"></div>

						</div>

						<div id="custom-button" class="form-group">
							<button type="submit" id="btnSave" class="btn btn-primary">Save</button>
							<button type="reset" id="btnClear" class="btn btn-danger">Clear</button>
						</div>
					</form>


					<div class="card" style="width: 100%;">
						<div class="card-body">

							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th scope="col">User Name</th>
										<th scope="col">Name</th>
										<th scope="col">Role</th>
										<th scope="col">Delete</th>

									</tr>
								</thead>
								<tbody>
								
								<%for (User user : users) {%>
								
								<%String uid=user.getUid(); %>
								
									<tr>
										<td><%=user.getUnm() %></td>
										<td><%=user.getName() %></td>
										<td><%=user.getRole() %></td>
										<td><a href="user?id=<%=uid%>"><i class="fas fa-trash-alt"></i></a></td>
									</tr>
									<%} %>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>





			</main>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="../../assets/js/vendor/popper.min.js"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>

	<!-- Icons -->
	<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
	<script>
		feather.replace()
	</script>

	<!-- Graphs -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<script>
		var ctx = document.getElementById("myChart");
		var myChart = new Chart(ctx, {
			type : 'line',
			data : {
				labels : [ "Sunday", "Monday", "Tuesday", "Wednesday",
						"Thursday", "Friday", "Saturday" ],
				datasets : [ {
					data : [ 15339, 21345, 18483, 24003, 23489, 24092, 12034 ],
					lineTension : 0,
					backgroundColor : 'transparent',
					borderColor : '#007bff',
					borderWidth : 4,
					pointBackgroundColor : '#007bff'
				} ]
			},
			options : {
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : false
						}
					} ]
				},
				legend : {
					display : false,
				}
			}
		});
	</script>

	<script>
		function selectRole() {

			var role = document.getElementById("role").value;
			var s1 = "Admin";
			var s2 = "Hospital-IT"
			var s3 = "Quarantined-IT";
			var s4 = "PSTF";
			if (role === s2) {
				document.getElementById("wplace").style.visibility = "visible";
			} else if (role === s3) {
				document.getElementById("wplace").style.visibility = "visible";
			} else if (role === s1) {
				document.getElementById("wplace").style.visibility = "hidden";
			} else {
				document.getElementById("wplace").style.visibility = "hidden";
			}
		}

		//........................................................................................
		var rows = document.getElementsByTagName('tr');
		//table.rows
		for (var i = 0; i < rows.length; i++) {
			(rows)[i].addEventListener("click", function() {
				var unm=this.cells[0].innerHTML;
				var nm=this.cells[1].innerHTML;
				var role=this.cells[2].innerHTML;
				
				document.getElementById("btnSave").innerHTML="UPDATE";
				
				document.getElementById("nm").value=nm;
				document.getElementById("unm").value=unm;
				document.getElementById("roleop").innerHTML=role;
				
				<%for (User user : users) {%>
				var s="<%=user.getUnm()%>";
				
				if(unm===s){
					document.getElementById("pwd").value="<%=user.getPwd()%>";
					document.getElementById("roleop").innerHTML="<%=user.getRole()%>";
					document.getElementById("emai").innerHTML="<%=user.getEmail()%>";
				}
				 
			
				
			<%}%>
				
			});
		}
		
		function addNew() {
			document.getElementById("btnSave").innerHTML="SAVE";
			
			document.getElementById("nm").value="";
			document.getElementById("unm").value="";
			document.getElementById("roleop").innerHTML="";
			document.getElementById("pwd").value="";
			document.getElementById("emai").innerHTML="";
		}
	</script>
</body>

</html>
