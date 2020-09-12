<%@page import="entity.Hospital"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.ThisReference"%>
<%@page import="java.sql.Date"%>
<%@page import="controller.GlobalCovidServlet"%>
<%@page import="controller.HospitalServlet"%>
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

<script>document.getElementById("hid").readonly="true"; </script>

</head>
<body class="hold-transition sidebar-mini layout-fixed">

	<%
		HospitalServlet hospitalServlet = new HospitalServlet();
		ArrayList<Hospital> hospitals = hospitalServlet.getAll();

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
							<h1 class="m-0 text-dark">HOSPITAL MANAGEMENT</h1>
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





			<div class="container-fluid" style="height: 30px">
				<h1 id="demo"></h1>
			</div>


			<div class="container-fluid">
				<center>
					<div class="form-group">
						<input list="hos" id="selHos" name="browser"
							placeholder="Search Hospital" style="width: 50%"
							onchange="myFunction()">
						<datalist id="hos" onchange="myFunction()">

							<%
								for (Hospital h : hospitals) {
							%>
							<%
								String hnm = h.getName();
									System.out.println("sid" + hnm);
							%>
							<option><%=hnm%></option>
							<%
								}
							%>

						</datalist>
					</div>
				</center>

				<div class="card">
					<div class="card-header w3-blue">HOSPITAL FORM</div>
					<div class="card-body">
						<form action="hospital" method="post">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">ID</label> <input type="text"
										class="form-control" id="hid" name="hid" placeholder="ID"
										readonly="readonly">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Hospital Name</label> <input
										type="text" class="form-control" id="hnm" name="hnm"
										placeholder="Hospital Name">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<label for="inputAddress">City</label> <input type="text"
										class="form-control" id="city" name="city" placeholder="City">
								</div>
								<div class="form-group col-md-4">
									<label for="inputState">District</label> <select id="dis"
										name="dis" class="form-control">
										<option id="disop"></option>
										<option>Gampaha</option>
										<option>Colombo</option>
									</select>
								</div>
								<div class="form-group col-md-4">
									<label for="inputAddress">Capacity</label> <input type="text"
										class="form-control" id="capa" name="capa"
										placeholder="Capacity">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputCity">Director</label> <input type="text"
										class="form-control" id="dir" name="dir">
								</div>
								<div class="form-group col-md-6">
									<label for="inputCity">Director Contact Number</label> <input
										type="text" class="form-control" id="dircon" name="dircon">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputCity">Hospital Contact Number-1</label> <input
										type="text" class="form-control" id="hcon1" name="hcon1">
								</div>
								<div class="form-group col-md-6">
									<label for="inputCity">Hospital Contact Number-2</label> <input
										type="text" class="form-control" id="hcon2" name="hcon2">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputCity">Hospital Fax Number</label> <input
										type="text" class="form-control" id="fax" name="fax">
								</div>
								<div class="form-group col-md-6">
									<label for="inputCity">Hospital Email</label> <input
										type="email" class="form-control" id="emai" name="emai">
								</div>
							</div>



							<center>
								<button type="submit" class="btn btn-primary w3-red"
									id="btnSave" name="btnSave">SAVE</button>
								<button type="submit" class="btn btn-primary w3-red" id="btnDel"
									name="btnDel" draggable="true" disabled="disabled">DELETE</button>
								<button type="button" class="btn btn-primary w3-red"
									onclick="addNew()">ADD NEW+</button>
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


		<script>
			function myFunction() {
				document.getElementById("btnDel").disabled=false;
				document.getElementById("btnSave").innerHTML="UPDATE";
				
				var x = document.getElementById("selHos").value;
				// document.getElementById("demo").innerHTML = "You selected: "+ x; 
				// document.getElementById("hnm").value = "You selected: "+ x; 
				 
				 <%for (Hospital h : hospitals) {%>
				 
					<%String hnm = h.getName();
				System.out.println("cxcx" + hnm);%>
					var hosnm="<%=hnm%>" ;
					//window.alert(hosnm);
					var i=hosnm.indexOf(x);
					
					if(i==0){
						document.getElementById("hid").value = "<%=h.getId()%>" ; 
						document.getElementById("hnm").value = "<%=h.getName()%>" ; 
						document.getElementById("city").value = "<%=h.getCity()%>" ; 
						document.getElementById("disop").innerHTML = "<%=h.getDistrict()%>" ; 
						<%-- document.getElementById("dis").value = "<%= h.getDistrict() %>" ;  --%>
						document.getElementById("fax").value = "<%=h.getFax()%>" ; 
						
						document.getElementById("capa").value = "<%=h.getCapacity()%>" ; 
						document.getElementById("dir").value = "<%=h.getDirector().getName()%>" ; 
						document.getElementById("dircon").value = "<%=h.getDirector().getContact()%>" ; 
						document.getElementById("hcon1").value = "<%=h.getCotact1()%>" ; 
						document.getElementById("hcon2").value = "<%=h.getContact2()%>" ; 
						document.getElementById("fax").value = "<%=h.getFax()%>" ;
						document.getElementById("emai").value = "<%=h.getEmail()%>" ; 
					}
					
				<%}%>
				
			}
			
			function addNew(){
				
				document.getElementById("btnDel").disabled=true;
				document.getElementById("btnSave").innerHTML="SAVE";
				document.getElementById("selHos").value = "" ;
				
				document.getElementById("hid").value = "" ; 
				document.getElementById("hnm").value = "" ; 
				document.getElementById("city").value = "" ; 
				document.getElementById("disop").innerHTML = "" ; 
				<%-- document.getElementById("dis").value = "<%= h.getDistrict() %>" ;  --%>
				document.getElementById("fax").value = "" ; 
				
				document.getElementById("capa").value = "" ; 
				document.getElementById("dir").value = "" ; 
				document.getElementById("dircon").value = "" ; 
				document.getElementById("hcon1").value = "" ; 
				document.getElementById("hcon2").value = "" ; 
				document.getElementById("fax").value = "" ;
				document.getElementById("emai").value = "" ; 
				
				var i="<%=hospitals.size()%>" ; 
				var j=++i;
				//window.alert(i);
				var newId;
				if(j<10){
					newId="H00"+j;
					document.getElementById("hid").value=newId;
				}
				else if (j<100 && j>10) {
					newId="H0"+j;
					document.getElementById("hid").value=newId;
				}
				else {
					newId="H"+j;
					document.getElementById("hid").value=newId;
				}
			}
			
			
		</script>
</body>
</html>
