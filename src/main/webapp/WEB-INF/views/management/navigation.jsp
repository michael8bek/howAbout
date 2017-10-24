<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav"> <a class="navbar-brand" href="indexManage.do">HowAbout 관리</a>
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarResponsive"
		aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Dashboard"><a class="nav-link" href="indexManage.do"> <i
					class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">Dashboard</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Charts"><a class="nav-link" href="charts.do"> <i
					class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">Charts</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Tables"><a class="nav-link" href="tables.do"> <i
					class="fa fa-fw fa-table"></i> <span class="nav-link-text">Tables</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="상품리스트"><a class="nav-link" href="tables.do"> <i
					class="fa fa-fw fa-table"></i> <span class="nav-link-text">상품리스트</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="상품입력"><a class="nav-link" href="registerForm.do"> <i
					class="fa fa-fw fa-file"></i> <span class="nav-link-text">상품입력</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="회원쿠폰목록"><a class="nav-link" href="cpList.do"> <i
					class="fa fa-fw fa-file"></i> <span class="nav-link-text">회원쿠폰목록</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="쿠폰회원입력"><a class="nav-link" href="cpInsertForm.do"> <i
					class="fa fa-fw fa-file"></i> <span class="nav-link-text">쿠폰회원입력</span>
			</a></li>
			
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="쿠폰목록"><a class="nav-link" href="cpAll.do"> <i
					class="fa fa-fw fa-file"></i> <span class="nav-link-text">쿠폰목록</span>
			</a></li>
			<!-- <li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="신규쿠폰등록"><a class="nav-link" href="newCpForm.do"> <i
					class="fa fa-fw fa-file"></i> <span class="nav-link-text">신규쿠폰등록</span>
			</a></li> -->
			
			<!-- 메뉴 예제 샘플 -->
			<!-- <li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Components"><a
				class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
				href="#collapseComponents" data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-wrench"></i> <span class="nav-link-text">Components</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseComponents">
					<li><a href="navbar.do">Navbar</a></li>
					<li><a href="cards.do">Cards</a></li>
				</ul></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Example Pages"><a
				class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
				href="#collapseExamplePages" data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-file"></i> <span class="nav-link-text">Example
						Pages</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseExamplePages">
					<li><a href="loginManage.do">Login Page</a></li>
					<li><a href="register.do">Registration Page</a></li>
					<li><a href="forgot-password.do">Forgot Password Page</a></li>
					<li><a href="blank.do">Blank Page</a></li>
				</ul></li> -->
				
				<!-- Menu Levels 메뉴  -->
			<!-- <li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Menu Levels"><a
				class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
				href="#collapseMulti" data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-sitemap"></i> <span class="nav-link-text">Menu
						Levels</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseMulti">
					<li><a href="#">Second Level Item</a></li>
					<li><a href="#">Second Level Item</a></li>
					<li><a href="#">Second Level Item</a></li>
					<li><a class="nav-link-collapse collapsed"
						data-toggle="collapse" href="#collapseMulti2">Third Level</a>
						<ul class="sidenav-third-level collapse" id="collapseMulti2">
							<li><a href="#">Third Level Item</a></li>
							<li><a href="#">Third Level Item</a></li>
							<li><a href="#">Third Level Item</a></li>
						</ul></li>
				</ul></li> -->
				<!-- /. Menu Levels 메뉴  -->
				
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Link"><a class="nav-link" href="main.do"> <i
					class="fa fa-fw fa-link"></i> <span class="nav-link-text">Main화면</span>
			</a></li>
		</ul>
		<ul class="navbar-nav sidenav-toggler">
			<li class="nav-item"><a class="nav-link text-center"
				id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
			</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown"
				href="#" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fa fa-fw fa-envelope"></i> <span
					class="d-lg-none">Messages <span
						class="badge badge-pill badge-primary">12 New</span>
				</span> <span class="indicator text-primary d-none d-lg-block"> <i
						class="fa fa-fw fa-circle"></i>
				</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="messagesDropdown">
					<h6 class="dropdown-header">New Messages:</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <strong>David
							Miller</strong> <span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">Hey there! This new
							version of SB Admin is pretty awesome! These messages clip off
							when they reach the end of the box so they don't overflow over to
							the sides!</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <strong>Jane Smith</strong>
						<span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">I was wondering if you
							could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <strong>John Doe</strong> <span
						class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">I've sent the final
							files over to you for review. When you're able to sign off of
							them let me know and we can discuss distribution.</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item small" href="#">View all messages</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown"
				href="#" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fa fa-fw fa-bell"></i> <span
					class="d-lg-none">Alerts <span
						class="badge badge-pill badge-warning">6 New</span>
				</span> <span class="indicator text-warning d-none d-lg-block"> <i
						class="fa fa-fw fa-circle"></i>
				</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="alertsDropdown">
					<h6 class="dropdown-header">New Alerts:</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <span class="text-success">
							<strong> <i class="fa fa-long-arrow-up fa-fw"></i>Status
								Update
						</strong>
					</span> <span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">This is an automated
							server response message. All systems are online.</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <span class="text-danger">
							<strong> <i class="fa fa-long-arrow-down fa-fw"></i>Status
								Update
						</strong>
					</span> <span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">This is an automated
							server response message. All systems are online.</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <span class="text-success">
							<strong> <i class="fa fa-long-arrow-up fa-fw"></i>Status
								Update
						</strong>
					</span> <span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">This is an automated
							server response message. All systems are online.</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item small" href="#">View all alerts</a>
				</div></li>
			<li class="nav-item">
				<form class="form-inline my-2 my-lg-0 mr-lg-2">
					<div class="input-group">
						<input class="form-control" type="text"
							placeholder="Search for..."> <span
							class="input-group-btn">
							<button class="btn btn-primary" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
			</li>
			<li class="nav-item"><a class="nav-link" data-toggle="modal"
				data-target="#exampleModal"> <i class="fa fa-fw fa-sign-out"></i>Logout
			</a></li>
		</ul>
	</div>
	</nav>
	