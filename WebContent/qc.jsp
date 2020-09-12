<%@page import="controller.QuarantineCenterServlet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.QuarantineCenter"%>
<%@page import="java.sql.Date"%>
<%@page import="controller.GlobalCovidServlet"%>
<%@page import="entity.Global"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="css/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bbootstrap 4 -->
<link rel="stylesheet"
	href="css/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="css/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="css/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="css/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="css/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="css/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet" href="css/plugins/summernote/summernote-bs4.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<link rel="stylesheet" href="css/w3.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">

	<%
		QuarantineCenterServlet qc = new QuarantineCenterServlet();
	    ArrayList<QuarantineCenter> qcs=qc.getAll();

		/* GlobalCovidServlet g=new GlobalCovidServlet();
		Global global=g.getAll();
		
		if(request.getParameter("btnsubmit")!=null){
			
			Date date=Date.valueOf(request.getParameter("date"));
			String con=request.getParameter("con");
			String rec=request.getParameter("rec");
			String death=request.getParameter("death");
			
			request.setAttribute("date", date);
			request.setAttribute("con", con);
			request.setAttribute("rec", rec);
			request.setAttribute("death", death);
		RequestDispatcher rd=request.getRequestDispatcher("Global");
		rd.forward(request, response);
		
		
		}
		
		out.print("<script>");
		out.print("alert(\"recor added\")");
		out.print("</script>"); */
	%>


	<script type="text/javascript">

var x=<%= request.getParameter("i") %>;
if(x>0){
	window.alert("Record Added Successfully");
}
else if (x==0) {
	window.alert("Failed to Add the record");
} 

var y=<%= request.getParameter("q") %>;
if(y>0){
	window.alert("Record Deleted Successfully");
}
else if (y==0) {
	window.alert("Failed to Delete the record");
} 

var z=<%= request.getParameter("p") %>;
if(z>0){
	window.alert("Record Updated Successfully");
}
else if (z==0) {
	window.alert("Failed to Upadate the record");
} 


</script>








	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="dashboard.jsp" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<!-- SEARCH FORM -->
			<form class="form-inline ml-3">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar" type="search"
						placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user1-128x128.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">Call me whenever you can...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user8-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">I got your message bro</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user3-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-item dropdown-header">15
							Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"> <i
						class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <img
				src="dist/img/AdminLTELogo.png" alt=""
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">COVI-19 MANAGEMENT<br>SYSTEM
			</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex"></div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item has-treeview menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Hospital <i class="right fas fa-angle-left"></i>
								</p>
						</a> <%-- <center><h3> My name is <%= request.getParameter("i") %></h3></center> --%>
						<li class="nav-item"><a href="./index3.html" class="nav-link">
								<p>
									<i class="far fa-circle nav-icon"></i>MANAGE GLOBAL<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INFORMATION
								</p>
						</a></li>

						<li class="nav-item"><a href="./index3.html" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>MANAGE HOSPITALS</p>
						</a></li>

						<li class="nav-item"><a href="./index3.html" class="nav-link">

								<p>
									<i class="far fa-circle nav-icon"></i>MANAGE QUARANTINE<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CENTERS
								</p>
						</a></li>

						<li class="nav-item"><a href="./index3.html" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>MANAGE USERS</p>
						</a></li>

					</ul>
					</li>







				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">QUARANTINED CENTER MANAGEMENT</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Dashboard v1</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->





			<div class="container-fluid" style="height: 30px"></div>


			<div class="container-fluid">
				<center>
					<div class="form-group">
						<input list="hos" id="selHos" name="browser"
							placeholder="Search Center" style="width: 50%"
							onchange="myFunction()">
						<datalist id="hos" >

							<%
								for (QuarantineCenter q : qcs) {
							%>
							<%
								String qnm = q.getName();
									System.out.println("sid" + qnm);
							%>
							<option><%=qnm%></option>
							<%
								}
							%>

						</datalist>
					</div>
				</center>


				<div class="card">
					<div class="card-header w3-blue">QUARANTINE CENTER FORM</div>
					<div class="card-body">
						<form action="qc" method="post" >
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">ID</label> <input type="text"
										class="form-control" id="qid" name="qid" placeholder="ID" disabled="disabled">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Center Name</label> <input
										type="text" class="form-control" id="qnm" name="qnm"
										placeholder="Center Name">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<label for="inputAddress">City</label> <input type="text"
										class="form-control" id="city" name="city" placeholder="City">
								</div>
								<div class="form-group col-md-4">
									<label for="inputState">District</label> <select id="dis" name="dis"
										class="form-control">
										<option></option>
										<option>Gampaha</option>
										<option>Colombo</option>
									</select>
								</div>
								<div class="form-group col-md-4">
									<label for="inputAddress">Capacity</label> <input type="text"
										class="form-control" id="capa" name="capa" placeholder="Capacity">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputCity">Head</label> <input type="text"
										class="form-control" id="head" name="head">
								</div>
								<div class="form-group col-md-6">
									<label for="inputCity">Head's Contact Number</label> <input
										type="text" class="form-control" id="hcon" name="hcon">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputCity">Center Contact Number-1</label> <input
										type="text" class="form-control" id="qcon1" name="qcon1">
								</div>
								<div class="form-group col-md-6">
									<label for="inputCity">Center Contact Number-2</label> <input
										type="text" class="form-control" id="qcon2" name="qcon2">
								</div>
							</div>

							<center>
								<button type="submit" class="btn btn-primary w3-red"
									id="btnSave" name="btnSave">SAVE</button>
								<button type="submit" class="btn btn-primary w3-red" id="btnDel"
									disabled="disabled" name="btnDel">DELETE</button>
								<button type="button" class="btn btn-primary w3-red" id="btnAdd"
									 name="btnAdd">ADD NEW+</button>
							</center>
						</form>

					</div>
				</div>

			</div>




			<!-- /.content -->
			<!-- /.row -->
			<!-- Main row -->

			<!-- /.card -->

			<!-- DIRECT CHAT -->

			<!-- /.content-wrapper -->


			<!-- Control Sidebar -->
			<aside class="control-sidebar control-sidebar-dark">
				<!-- Control sidebar content goes here -->
			</aside>
			<!-- /.control-sidebar -->
		</div>
		<!-- ./wrapper -->




		<!-- jQuery -->
		<script src="plugins/jquery/jquery.min.js"></script>

		<script type="text/javascript">
			function dateOnSelect() {

				alert("xxxxx");

			}
		</script>

		<!-- jQuery UI 1.11.4 -->
		<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<script>
			$.widget.bridge('uibutton', $.ui.button)
		</script>
		<!-- Bootstrap 4 -->
		<script src="css/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- ChartJS -->
		<script src="css/plugins/chart.js/Chart.min.js"></script>
		<!-- Sparkline -->
		<script src="css/plugins/sparklines/sparkline.js"></script>
		<!-- JQVMap -->
		<script src="css/plugins/jqvmap/jquery.vmap.min.js"></script>
		<script src="css/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
		<!-- jQuery Knob Chart -->
		<script src="css/plugins/jquery-knob/jquery.knob.min.js"></script>
		<!-- daterangepicker -->
		<script src="css/plugins/moment/moment.min.js"></script>
		<script src="css/plugins/daterangepicker/daterangepicker.js"></script>
		<!-- Tempusdominus Bootstrap 4 -->
		<script
			src="css/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
		<!-- Summernote -->
		<script src="css/plugins/summernote/summernote-bs4.min.js"></script>
		<!-- overlayScrollbars -->
		<script
			src="css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
		<!-- AdminLTE App -->
		<script src="css/dist/js/adminlte.js"></script>
		<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
		<script src="css/dist/js/pages/dashboard.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="css/dist/js/demo.js"></script>
		<script src="js/jquery.min.js"></script>

		<script>
		$("#selHos").change(function(){
				//document.getElementById("btnDel").disabled=false;
				$("#btnDel").prop("disabled",false);
				//document.getElementById("btnSave").innerHTML="UPDATE";
				$("#btnSave").text("UPDATE");
				
				/* var x = document.getElementById("selHos").value; */
				var x=$("#selHos").text();
				// document.getElementById("demo").innerHTML = "You selected: "+ x; 
				// document.getElementById("hnm").value = "You selected: "+ x; 
				 
				 <%for (QuarantineCenter q : qcs) {%>
				 
					<%String qnm = q.getName();
				System.out.println("cxcx" + qnm);%>
					var hosnm="<%=qnm%>" ;
					//window.alert(hosnm);
					var i=hosnm.indexOf(x);
					
					if(i==0){
						<%-- document.getElementById("qid").value = "<%=q.getId()%>" ;  --%>
						$("#qid").val("<%=q.getId()%>");
						<%-- document.getElementById("qnm").value = "<%=q.getName()%>" ;  --%>
						$("#qnm").val("<%=q.getName()%>");
						<%-- document.getElementById("city").value = "<%=q.getCity()%>" ;  --%>
						$("#city").val("<%=q.getCity()%>");
						document.getElementById("dis").value = "<%=q.getDistrict()%>" ; 
						$("#dis").val("<%=q.getDistrict()%>");
						<%-- document.getElementById("dis").value = "<%= h.getDistrict() %>" ;  --%>
						
						
						<%-- document.getElementById("capa").value = "<%=q.getCapacity()%>" ;  --%>
						$("#capa").val("<%=q.getCapacity()%>");
						
						
						<%-- document.getElementById("qcon1").value = "<%=q.getCotact1()%>" ;  --%>
						$("#qcon1").val("<%=q.getCotact1()%>");
						<%-- document.getElementById("hcon").value = "<%=q.gethead().getContact()%>" ;  --%>
						$("#hcon").val("<%=q.gethead().getContact()%>");
						<%-- document.getElementById("head").value = "<%=q.gethead().getName()%>" ;  --%>
						$("#head").val("<%=q.gethead().getName()%>");
						<%-- document.getElementById("qcon2").value = "<%=q.getContact2()%>" ;  --%>
						$("#qcon2").val("<%=q.getContact2()%>");
						
					}
					
				<%}%>
				
			});
			
		$("#btnAdd").click(function(){
				
				/* document.getElementById("btnDel").disabled=true; */
				$("btnDel").prop("disabled","true")
				/* document.getElementById("btnSave").innerHTML="SAVE"; */
				$("#btnSave").text("SAVE");
				/* document.getElementById("qid").value = "" ;  */
				$("#dis").val("");
				/* document.getElementById("qnm").value = "" ;  */
				$("#qnm").val("");
				/* document.getElementById("city").value = "" ;  */
				$("#city").val("");
				/* document.getElementById("dis").value = "" ;  */
				$("#dis").val("");
				<%-- document.getElementById("dis").value = "<%= h.getDistrict() %>" ;  --%>
				
				
				document.getElementById("capa").value = "" ;
				$("#capa").val("");
				
				
				document.getElementById("qcon1").value = "" ; 
				document.getElementById("hcon").value = "" ; 
				document.getElementById("head").value = "" ; 
				document.getElementById("qcon2").value = "" ; 
				
				var i="<%=qcs.size()%>" ; 
				var j=++i;
				//window.alert(i);
				var newId;
				if(j<10){
					newId="Q00"+j;
					/* document.getElementById("qid").value=newId; */
					$("#qid").val(newId);
				}
				else if (j<100 && j>10) {
					newId="Q0"+j;
					/* document.getElementById("qid").value=newId; */
					$("#qid").val(newId);
				}
				else {
					newId="Q"+j;
					/* document.getElementById("qid").value=newId; */
					$("#qid").val(newId);
				}
			});
			
			
		</script>
</body>
</html>
